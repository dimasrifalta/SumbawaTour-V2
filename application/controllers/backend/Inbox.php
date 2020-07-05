<?php
class Inbox extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masuk') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('M_kontak');
	}

	function index()
	{
		$this->M_kontak->update_status_kontak();
		$x['data'] = $this->M_kontak->get_all_inbox();
		$this->load->view('backend/v_inbox', $x);
	}

	function hapus_inbox()
	{
		$kode = $this->input->post('kode');
		$this->M_kontak->hapus_kontak($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('backend/inbox');
	}
}
