<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Pembatalan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();

        $this->load->model('Mpaket');
        $this->load->model('Morders');
        $this->load->model('Mberita');
    }


    public function index()
    {


        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();



        $kode = $this->uri->segment(3);
        $x['brt'] = $this->Mpaket->tampil_paket();
        $id_user = $this->session->userdata('id');

        $x['id_order'] = $this->Mpaket->booking_pembatalan($id_user, $kode)->result_array();
        $x['news'] = $this->Mpaket->getpaket($kode);
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_pembatalan', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }

    public function add_pembatalan()
    {
        $this->form_validation->set_rules('nama_rekening', 'Nama Rekening', 'required');
        $this->form_validation->set_rules('no_rek', 'Nomor Rekening', 'trim|required|numeric');
        $this->form_validation->set_rules('alasan_pembatalan', 'Alasan Pembatalan', 'required');

        $id_user = $this->session->userdata('id');
        $order_id = $this->input->post('id_order', true);
        $nama_rekening = $this->input->post('nama_rekening', true);
        $no_rek = $this->input->post('no_rek', true);
        $alasan_pembatalan = $this->input->post('alasan_pembatalan', true);

        // siapkan token

        $email = $this->session->userdata('email');
        $token_pembatalan = [
            'id_order' => $order_id,
            'email' => $email,
            'date_created' => time()
        ];


        $this->db->insert('batal_token', $token_pembatalan);

        /*kirim email*/
        $this->session->set_flashdata('flash', 'Ditambahkan');
        $this->_sendEmail($order_id);
        $this->_sendEmailToAdmin($order_id);

        $this->Mpaket->simpan_pembatalan($order_id, $id_user, $no_rek, $nama_rekening, $alasan_pembatalan);

        redirect('pembatalan');
    }

    /*kirim email*/
    private function _sendEmail($order_id)
    {
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


        $this->email->initialize($config);
        $this->email->from('bucekcoffe@gmail.com', 'Sumbawa Tour');
        $this->email->to($this->session->userdata('email'));

        $data = array(
            'email' => $this->session->userdata('email'),
            'order_id' => $order_id
        );
        $x['data'] = $data;

        $message = $this->load->view('nfront/email/email_verification_cancel_tiket', $x, TRUE);


        $this->email->subject('Konfirmasi Pembatalan Tiket Anda');
        $this->email->message($message);



        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }

    /*kirim email*/
    private function _sendEmailToAdmin($kode)
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

    /*funtion verifikasi account yang telah di buat*/
    public function verify()
    {
        $email = $this->input->get('email');
        $order_id = $this->input->get('token');

        //ambil user
        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        //jika email nya ada di database
        if ($user) {
            //query ke tabel user token
            $user_token = $this->db->get_where('batal_token', ['id_order' => $order_id])->row_array();
            //token ada di database
            if ($user_token) {

                //waktu verifikasi

                $sql1 = "UPDATE orders set pembatalan='CANCEL' WHERE id_order = '$order_id' ";
                $this->db->query($sql1);

                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">' . $email . ' Pembatalan Tiket anda telah berhasil mohon tunggu 1X24 untuk dana kami kembalikan ke Rekening Anda.</div>');
                redirect('paket_tour/booking');

                //token tidak ada di database
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Konfirmasi Pembatalan Tiket!! Wrong token!</div>');
                redirect('paket_tour/booking');
            }
            //email tidak ada di database
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Konfirmasi Pembatalan Tiket!! Wrong email!</div>');
            redirect('paket_tour/booking');
        }
    }
}
