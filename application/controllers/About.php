<?php
class About extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Mberita');
	}
	function index()
	{
		$x['paket'] = $this->Mberita->paket_footer();
		$x['berita'] = $this->Mberita->berita_footer();
		$x['photo'] = $this->Mberita->get_photo();
		$this->load->view('front/v_tentang', $x);
	}
}
