<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Administrator extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Mlogin');
    }
    public function index()
    {
        $this->load->view('backend/v_login');
    }
    public function auth()
    {
        $username = strip_tags(str_replace("'", "", $this->input->post('username')));
        $password = strip_tags(str_replace("'", "", $this->input->post('password')));
        $u = $username;
        $p = $password;
        $cadmin = $this->Mlogin->cekadmin($u, $p);


        if ($cadmin->num_rows() > 0) {
            $this->session->set_userdata('masuk', true);
            $this->session->set_userdata('user', $u);
            $xcadmin = $cadmin->row_array();

            if ($xcadmin['level'] == '1') {
                $this->session->set_userdata('akses', '1');
            }

            $idadmin = $xcadmin['idadmin'];
            $user_nama = $xcadmin['nama'];
            $this->session->set_userdata('idadmin', $idadmin);
            $this->session->set_userdata('nama', $user_nama);
            if ($xcadmin['level'] == '2') {
                $this->session->set_userdata('akses', '2');
                $idadmin = $xcadmin['idadmin'];
                $user_nama = $xcadmin['nama'];
                $this->session->set_userdata('idadmin', $idadmin);
                $this->session->set_userdata('nama', $user_nama);
            } //Front Office
        }

        if ($this->session->userdata('masuk') == true) {
            redirect('administrator/berhasillogin');
        } else {
            redirect('administrator/gagallogin');
        }
    }
    public function berhasillogin()
    {
        redirect('backend/dashboard');
    }
    public function gagallogin()
    {
        $url = base_url('administrator');
        echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button> Username Atau Password Salah</div>');
        redirect($url);
    }
    public function logout()
    {
        $this->session->sess_destroy();
        $url = base_url('administrator');
        redirect($url);
    }
}
