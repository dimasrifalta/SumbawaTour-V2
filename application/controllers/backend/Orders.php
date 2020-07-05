<?php

require('assets/plugins/dompdf/autoload.inc.php');

use Dompdf\Dompdf;

class Orders extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('masuk') != TRUE) {
            $url = base_url();
            redirect($url);
        };
        $this->load->model('Morders');
    }
    function index()
    {
        $x['data'] = $this->Morders->get_orders();
        $x['data_transaksi'] = $this->Morders->get_transaksi();
        $this->load->view('backend/v_orders', $x);
    }
    function pembayaran_selesai()
    {
        $id = $this->uri->segment(4);
        $this->Morders->bayar_selesai($id);
        echo $this->session->set_flashdata('msg', 'success');
        redirect('backend/orders');
    }
    function edit_orders()
    {
        $kode = $this->input->post('kode');
        $dewasa = $this->input->post('dewasa');
        $anaks = $this->input->post('anaks');
        $this->Morders->edit_orders($kode, $dewasa, $anaks);
        echo $this->session->set_flashdata('msg', 'info');
        redirect('backend/orders');
    }
    function hapus_order()
    {
        $kode = $this->input->post('kode');
        $this->Morders->hapus_orders($kode);
        echo $this->session->set_flashdata('msg', 'success-hapus');
        redirect('backend/orders');
    }

    function cariorder()
    {
        $tglawal = $this->input->post('tglawal');
        $tglakhir = $this->input->post('tglakhir');
        // var_dump($tglawal);
        // die;

        $sql1 = "SELECT id_order,transaksi.tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket WHERE transaksi.status='LUNAS' AND tanggal BETWEEN '$tglawal' AND '$tglakhir' GROUP BY id_order order by tanggal desc   ";
        $data['order'] = $this->db->query($sql1);


        $data['tglawal'] = $this->input->post('tglawal');
        $data['tglakhir'] = $this->input->post('tglakhir');


        $this->load->view('backend/v_cari_orders', $data);
    }

    function printlaporan()
    {
        $tglawal = $this->input->post('tglawal');
        $tglakhir = $this->input->post('tglakhir');
        // var_dump($tglawal);
        // die;

        $sql1 = "SELECT id_order,transaksi.tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket WHERE transaksi.status='LUNAS' AND tanggal BETWEEN '$tglawal' AND '$tglakhir' GROUP BY id_order order by tanggal desc   ";
        $data['keluar'] = $this->db->query($sql1)->result_array();




        $this->load->view('backend/cetaklaporan', $data);
    }
}
