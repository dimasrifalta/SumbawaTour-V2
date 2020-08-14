<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Mberita');
		$this->load->model('Mtestimoni');
		$this->load->model('Mpaket');
		$this->load->model('M_pengunjung');
		$this->load->model('M_kontak');
	}

	public function index()
	{
		$user_ip = $_SERVER['REMOTE_ADDR'];
		if ($this->agent->is_browser()) {
			$agent = $this->agent->browser();
		} elseif ($this->agent->is_robot()) {
			$agent = $this->agent->robot();
		} elseif ($this->agent->is_mobile()) {
			$agent = $this->agent->mobile();
		} else {
			$agent = 'Other';
		}
		$cek_ip = $this->M_pengunjung->cek_ip($user_ip);
		$cek = $cek_ip->num_rows();

		if ($cek > 0) {
			$x['paket'] = $this->Mberita->paket_footer();
			$x['berita'] = $this->Mberita->berita_footer();
			$x['photo'] = $this->Mberita->get_photo();
			$x['paket_populer'] = $this->Mpaket->paket_populer();

			$x['test'] = $this->Mtestimoni->get_testimoni_all();
			$x['wisata'] = $this->Mberita->get_wisata();
			$x['news'] = $this->Mberita->berita();
			$this->load->view('nfront/templates/f_header');
			$this->load->view('nfront/v_home', $x);
			$this->load->view('nfront/templates/_footer', $x);
		} else {
			$this->M_pengunjung->simpan_user_agent($user_ip, $agent);

			$x['paket'] = $this->Mberita->paket_footer();
			$x['berita'] = $this->Mberita->berita_footer();
			$x['photo'] = $this->Mberita->get_photo();
			$x['paket_populer'] = $this->Mpaket->paket_populer();
			$x['test'] = $this->Mtestimoni->get_testimoni_all();
			$x['wisata'] = $this->Mberita->get_wisata();
			$x['news'] = $this->Mberita->berita();
			$this->load->view('nfront/templates/f_header');
			$this->load->view('nfront/v_home', $x);
			$this->load->view('nfront/templates/_footer', $x);
		}
	}

	public function search_keyword()
	{
		$tgl1 = $this->input->post('cari', true);
		$jumlah = $this->input->post('jumlah', true);


		$tgl_awal = date('Y-m-d', strtotime($tgl1));

		$x['paket'] = $this->Mberita->paket_footer();
		$x['berita'] = $this->Mberita->berita_footer();
		$x['photo'] = $this->Mberita->get_photo();
		$x['results']    =   $this->Mpaket->search($tgl_awal, $jumlah);


		$this->load->view('nfront/templates/f_header');
		$this->load->view('nfront/v_pencarian', $x);
		$this->load->view('nfront/templates/_footer', $x);
	}

	public function subscribe()
	{

		$name = 'User Subscribe';
		$email = str_replace("'", "", $this->input->post('email', true));
		$is_active = 0;
		$date_created = time();

		$user = $this->db->get_where('user', ['email' => $email])->row_array();
		if (empty($user)) {

			$this->M_pengunjung->user_subscribe($name, $email, $is_active, $date_created);
			$this->session->set_flashdata('flash', '<div class="alert alert-success" role="alert"> Terimah kasih Telah Melakukan Order Silahkan cek email anda. Kami Telah mengirim jumlah yang harus anda bayar dan nomor</div>');
			redirect('welcome');
		} else {
			$this->session->set_flashdata('flash-gagal', '<div class="alert alert-success" role="alert"> Terimah kasih Telah Melakukan Order Silahkan cek email anda. Kami Telah mengirim jumlah yang harus anda bayar dan nomor</div>');
			redirect('welcome');
		}
	}
}
