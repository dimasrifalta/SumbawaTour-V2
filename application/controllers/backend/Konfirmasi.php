<?php

require('assets/plugins/dompdf/autoload.inc.php');

use Dompdf\Dompdf;

class Konfirmasi extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('masuk') != TRUE) {
            $url = base_url();
            redirect($url);
        };
        $this->load->model('Morders');
        $this->load->model('Mpaket');
        $this->load->library('pdf');
    }
    function index()
    {
        $x['data'] = $this->Morders->get_pembayaran();
        $x['pembatalan'] = $this->Mpaket->get_pembatalan();
        $this->load->view('backend/v_konfirmasi', $x);
    }
    function pembayaran_selesai()
    {
        $id = $this->input->post('kode');
        $idpaket = $this->input->post('idpaket');
        $chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $res = "";
        for ($i = 0; $i < 6; $i++) {
            $res .= $chars[mt_rand(0, strlen($chars) - 1)];
        }


        //set kode booking
        $this->db->query("UPDATE orders SET kode_booking='$res' WHERE id_order='$id'");
        //ambil jam sekarang tambah 3 detik
        $a3 = "SELECT DATE_ADD(CURRENT_TIMESTAMP,INTERVAL 3 SECOND) AS sekarang";
        $now = $this->db->query($a3)->row_array();
        $tanggal = $now['sekarang'];

        //create event untuk menghapus event Invoice order  
        $sql2 = " CREATE EVENT Hapus$id        
                ON SCHEDULE AT '$tanggal'
                    DO
                    BEGIN
                    DROP EVENT IF EXISTS $id;                        
                END ";

        $this->db->query($sql2);

        //kirim tiket ke email customer
        $this->_sendEmail($id);
        $this->Morders->bayar_selesai($id);
        $this->db->query("UPDATE paket SET views=views+1 WHERE idpaket='$idpaket'");



        //simpan data ketabel transaksi
        $date_created = date('Y-m-d H:i:s');
        $this->Morders->simpan_transaksi($id);
        $this->db->query("UPDATE transaksi SET kode_booking='$res' ,date_created='$date_created',transaksi.status='LUNAS' WHERE id_order='$id'");

        echo $this->session->set_flashdata('msg', 'success1');
        redirect('backend/konfirmasi');
    }
    /*kirim email*/
    private function _sendEmail($id)
    {

        //File name
        $x['data'] = $this->Mpaket->booking_email($id);
        $filename = "E-Ticket";
        $this->load->library('pdf');
        $this->load->view('nfront/email/attach', $x);
        $html = $this->output->get_output();
        $this->pdf->load_html($html);
        // $customPaper = array(0,0,570,570);
        //$this->pdf->set_paper($customPaper);
        $this->pdf->setPaper('A4', 'potrait');
        $this->pdf->render();

        $pdf = $this->pdf->output();

        file_put_contents('assets/plugins/dompdf/' . $filename . '.pdf', $pdf);

        $attach = FCPATH . 'assets/plugins/dompdf/E-Ticket.pdf';
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
        $email = $this->Mpaket->get_email($id)->row_array();
        // var_dump($email['email']);
        // die;


        $this->email->initialize($config);
        $this->email->from('bucekcoffe@gmail.com', 'Sumbawa Tour');
        $this->email->to($email['email']);
        $message = $this->load->view('nfront/email/email_invoice_booking', $x, TRUE);


        $this->email->subject('E-Tiket Paket Tour Wisata -No.Pesanan ' . $id);
        $this->email->message($message);
        $this->email->attach($attach);


        if ($this->email->send()) {
            unlink(FCPATH . 'assets/plugins/dompdf/E-Ticket.pdf');
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }

    function hapus_konfirmasi()
    {
        $kode = $this->input->post('kode');
        $this->Morders->hapus_bayar($kode);
        echo $this->session->set_flashdata('msg', 'success-hapus');
        redirect('backend/Konfirmasi');
    }

    //function set pembatalan tiket
    function set_pembatalan()
    {
        $id = $this->uri->segment(4);


        //Kirim email_invoice
        $this->_sendEmailPembatalan($id);


        //update status menjadi batal
        $this->Morders->set_pembatalan($id);
        echo $this->session->set_flashdata('msg', 'success');
        redirect('backend/Konfirmasi');
    }


    /*kirim email*/
    private function _sendEmailPembatalan($id)
    {
        $email = $this->Mpaket->get_email($id)->row_array();

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
        $x['data'] = $this->Mpaket->get_pembatalanEmail($id);





        $this->email->initialize($config);
        $this->email->from('bucekcoffe@gmail.com', 'SUmbawa Tour');
        $this->email->to($email['email']);
        $message = $this->load->view('nfront/email/email_invoice_pembatalan', $x, TRUE);


        $this->email->subject('Pengembalian Dana Dengan No.Invoice-' . $id);
        $this->email->message($message);


        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }
}
