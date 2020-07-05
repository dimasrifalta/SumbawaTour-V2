<?php
class Lokasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mberita');
    }
    public function index()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $this->load->library('googlemaps');
        error_reporting(0);
        $long = '37.4419';
        $lat = '-122.1419';
        $config = array();
        $config['center'] = $long . ',' . $lat;
        $config['zoom'] = 16;
        $config['map_height'] = "500px";
        $this->googlemaps->initialize($config);
        $marker = array();
        $marker['position'] = $long . ',' . $lat;
        $this->googlemaps->add_marker($marker);
        $x['map'] = $this->googlemaps->create_map();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_kontak', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }
}
