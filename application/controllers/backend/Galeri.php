<?php
class Galeri extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('masuk') != TRUE) {
            $url = base_url();
            redirect($url);
        };
        $this->load->model('Mgaleri');
        $this->load->library('upload');
    }
    function index()
    {
        if ($this->session->userdata('akses') == '1') {
            $x['data'] = $this->Mgaleri->tampil_galeri();
            $x['alm'] = $this->Mgaleri->get_album();
            $x['paket'] = $this->Mgaleri->get_paket();

            $this->load->view('backend/v_galeri', $x);
        } else {
            echo "Halaman tidak ditemukan";
        }
    }

    function simpan_galeri()
    {
        $config['upload_path'] = './assets/gambars/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();


                $gambar = $gbr['file_name'];
                $jdl = $this->input->post('judul', true);
                $album = $this->input->post('album', true);
                $id_paket = $this->input->post('id_paket', true);


                $this->Mgaleri->SimpanGaleri($jdl, $album, $gambar, $id_paket);
                echo $this->session->set_flashdata('msg', 'success');
                redirect('backend/galeri');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('backend/galeri');
            }
        } else {
            redirect('backend/galeri');
        }
    }

    function update_galeri()
    {
        $config['upload_path'] = './assets/gambars/'; //path folder
        $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
        $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

        $this->upload->initialize($config);
        if (!empty($_FILES['filefoto']['name'])) {
            if ($this->upload->do_upload('filefoto')) {
                $gbr = $this->upload->data();


                $gambar = $gbr['file_name'];
                $kode = $this->input->post('kode', true);
                $jdl = $this->input->post('judul', true);
                $album = $this->input->post('album', true);
                $id_paket = $this->input->post('id_paket', true);


                $this->Mgaleri->update_galeri_with_img($kode, $jdl, $album, $gambar, $id_paket);
                echo $this->session->set_flashdata('msg', 'info');
                redirect('backend/galeri');
            } else {
                echo $this->session->set_flashdata('msg', 'warning');
                redirect('backend/galeri');
            }
        } else {
            $kode = $this->input->post('kode');
            $jdl = $this->input->post('judul');
            $album = $this->input->post('album');
            $id_paket = $this->input->post('id_paket', true);
            $this->Mgaleri->update_galeri($kode, $jdl, $album, $id_paket);
            echo $this->session->set_flashdata('msg', 'info');
            redirect('backend/galeri');
        }
    }

    function hapus_galeri()
    {
        if ($this->session->userdata('akses') == '1') {
            $id = $this->input->post('kode');
            $this->Mgaleri->hapus_photo($id);
            echo $this->session->set_flashdata('msg', 'success-hapus');
            redirect('backend/galeri');
        } else {
            echo "Halaman tidak ditemukan";
        }
    }
}
