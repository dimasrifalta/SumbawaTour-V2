<?php
class Testimoni extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mberita');
        $this->load->model('Mtestimoni');
    }
    public function index()
    {
        $x['paket'] = $this->Mberita->paket_footer();
        $x['berita'] = $this->Mberita->berita_footer();
        $x['photo'] = $this->Mberita->get_photo();
        $x['testimoni_order'] = $this->Mtestimoni->tampil_test();
        $x['brt'] = $this->Mberita->tampil_berita();
        $this->load->view('nfront/templates/f_header', $x);
        $this->load->view('nfront/v_testimoni', $x);
        $this->load->view('nfront/templates/_footer', $x);
    }
    public function simpan()
    {
        $id_order = $this->input->post('id_order', true);

        $nama = $this->input->post('nama', true);
        $email = $this->session->userdata('email');
        $msg = $this->input->post('message', true);
        $id = $this->uri->segment(3);

        $this->Mtestimoni->simpan_testimoni_order($id_order, $nama, $email, $msg);
        $this->session->set_flashdata('flash', '<div class="alert alert-success" role="alert"> Terimah kasih Telah Melakukan Testimoni!!</div>');

        redirect('paket_tour/Detail_booking/' . $id_order);
    }
}
