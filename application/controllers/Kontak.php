<?php
class Kontak extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Morders');
        $this->load->library('upload');
        $this->load->model('Mberita');
        $this->load->model('M_kontak');
    }

    public function index()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $x['bnk'] = $this->Morders->get_bank();
        // $this->load->library('googlemaps');
        // error_reporting(0);
        // $long = '37.4419';
        // $lat = '-122.1419';
        // $config = array();
        // $config['center'] = $long . ',' . $lat;
        // $config['zoom'] = 16;
        // $config['map_height'] = "500px";
        // $this->googlemaps->initialize($config);
        // $marker = array();
        // $marker['position'] = $long . ',' . $lat;
        // $this->googlemaps->add_marker($marker);
        // $x['map'] = $this->googlemaps->create_map();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_kontak', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }

    public function kirim_pesan()
    {
        $nama = str_replace("'", "", $this->input->post('xnama', true));
        $email = str_replace("'", "", $this->input->post('xemail', true));
        $kontak = str_replace("'", "", $this->input->post('xkontak', true));
        $pesan = str_replace("'", "", $this->input->post('xpesan', true));
        $this->M_kontak->kirim_pesan($nama, $email, $kontak, $pesan);
        echo $this->session->set_flashdata('msg', '<div><p><strong> NB: </strong> Terima Kasih Telah Menghubungi Kami.</p></div>');
        redirect('kontak');
    }


    public function faq()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $x['bnk'] = $this->Morders->get_bank();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_faq', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }

    public function carapesan()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $x['bnk'] = $this->Morders->get_bank();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_cara_pesan', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }
}
