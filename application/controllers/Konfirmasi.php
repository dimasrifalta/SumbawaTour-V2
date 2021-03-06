<?php
class Konfirmasi extends CI_Controller
{
    public function __construct()
    {

        parent::__construct();
        is_logged_in();
        $this->load->model('Morders');
        $this->load->library('upload');
        $this->load->model('Mberita');
        $this->load->model('Mpaket');
    }
    public function index()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $x['bnk'] = $this->Morders->get_bank();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_konfirmasi', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }

    public function upload_bukti()
    {
        $kode = $this->input->post('invoice');
        $data = $this->Morders->cek_invoice($kode);
        $q = $data->num_rows();

        if ($q > 0) {
            //waktu konfirmasi pembayaran
            $e = $data->row_array();
            if (time() - $e['expired_date'] < (60 * 60 * 24)) {
                $nmfile = "file_" . time(); //nama file saya beri nama langsung dan diikuti fungsi time
                $config['upload_path'] = './assets/bukti_transfer/'; //path folder
                $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
                $config['max_size'] = '15048';

                $config['max_width'] = '9588';
                $config['max_height'] = '7000';
                $config['file_name'] = $nmfile;

                $this->upload->initialize($config);
                if ($_FILES['filefoto']['name']) {
                    if ($this->upload->do_upload('filefoto')) {
                        $gbr = $this->upload->data();
                        $gambar = $gbr['file_name'];
                        $noinvoice = strip_tags(str_replace("'", "", $this->input->post('invoice')));
                        $id_user = strip_tags(str_replace("'", "", $this->input->post('id_user')));
                        $nama = strip_tags(str_replace("'", "", $this->input->post('nama')));
                        $bank = $this->input->post('bank');
                        $tgl2 = $this->input->post('tgl_bayar');
                        $tgl_bayar = date('Y-m-d', strtotime($tgl2));
                        $jumlah = strip_tags(str_replace("'", "", $this->input->post('jumlah')));

                        if ($gambar == true) {
                            $this->Morders->simpan_bukti($noinvoice, $id_user, $nama, $bank, $tgl_bayar, $jumlah, $gambar);
                            //kirim email ke admin untuk ditidaklanjuti 
                            $this->_sendEmail($kode);
                        } else {
                            redirect('konfirmasi');
                        }
                        $this->session->set_flashdata('flash', 'Ditambahkan');

                        redirect('konfirmasi');
                    }
                }
            } else {
                $this->db->set('status_expired', 'Y');
                $this->db->where('id_order', $kode);
                $this->db->update('orders');
                $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">No Invoice Kadaluarsa, harap melakukan order kembali!</div>');
                redirect('konfirmasi');
            }
        } else {
            echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert">No Invoice Tidak Valid!</div>');
            redirect('konfirmasi');
        }
    }


    /*kirim email*/
    private function _sendEmail($kode)
    {
        $user1 = $this->Morders->send_email()->result_array();
        $user = array_map(function ($current) {
            return $current['username'];
        }, $user1);

        // var_dump($user);
        // die;

        $config = [
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_user' => 'bucekcoffe@gmail.com',
            'smtp_pass' => 'Liger1998',
            'smtp_port' =>  465,
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'newline'   => "\r\n"
        ];
        $x['data'] = $this->Mpaket->booking_email($kode);

        $this->email->initialize($config);
        $this->email->from('bucekcoffe@gmail.com', 'Sumbawa Tour');
        $this->email->to($user);
        $message = $this->load->view('nfront/email/admin_email_confirmation', $x, TRUE);


        $this->email->subject('Proses Konfirmasi Pemesanan Tiket');
        $this->email->message($message);


        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }
}
