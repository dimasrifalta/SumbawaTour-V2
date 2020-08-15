<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Minquiryorder extends CI_Model
{

	var $table = 'transaksi';
	var $column_order = array('id_order', 'tanggal', 'nama', 'nama_paket', 'berangkat', 'kembali'); //set column field database for datatable orderable
	var $column_search = array('id_order', 'tanggal', 'nama', 'nama_paket', 'berangkat', 'kembali'); //set column field database for datatable searchable 
	var $order = array('id_order' => 'asc'); // default order 


	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	private function _get_datatables_query()
	{

		//add custom filter here
		if ($this->input->post('country')) {
			$this->db->where('country', $this->input->post('country'));
		}
		if ($this->input->post('nama')) {
			$this->db->like('nama', $this->input->post('nama'));
		}
		// if ($this->input->post('LastName')) {
		// 	$this->db->like('LastName', $this->input->post('LastName'));
		// }
		// if ($this->input->post('address')) {
		// 	$this->db->like('address', $this->input->post('address'));
		// }

		$this->db->from($this->table);
		// $this->db->query("SELECT date_created,id_order,tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket GROUP BY id_order ");
		$i = 0;

		foreach ($this->column_search as $item) // loop column 
		{
			if ($_POST['search']['value']) // if datatable send POST for search
			{

				if ($i === 0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if (count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	public function get_datatables()
	{
		$this->_get_datatables_query();
		if ($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->query("SELECT date_created,id_order,tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket GROUP BY id_order ");
		return $query->result();
	}

	public function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->query("SELECT date_created,id_order,tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket GROUP BY id_order ");
		return $query->num_rows();
	}

	public function count_all()
	{
		$query = $this->db->query("SELECT date_created,id_order,tanggal,nama_paket,hrg_dewasa,hrg_anak,adult,kids,SUM(adult+kids)AS jml_berangkat,(hrg_dewasa*adult) AS sub_dewasa,(hrg_anak*kids)AS sub_anak,SUM((hrg_dewasa*adult)+(hrg_anak*kids))AS total,berangkat,kembali,metode,bank,norek,atasnama,nama,IF(jenkel='L','Laki-Laki','Perempuan')AS jenkel,alamat,notelp,email,keterangan,transaksi.status FROM transaksi JOIN metode_bayar ON metode_id=id_metode JOIN paket ON paket_id_order=idpaket GROUP BY id_order ");
		return $query->num_rows();
	}

	public function get_list_countries()
	{
		$this->db->select('country');
		$this->db->from($this->table);
		$this->db->order_by('country', 'asc');
		$query = $this->db->get();
		$result = $query->result();

		$countries = array();
		foreach ($result as $row) {
			$countries[] = $row->country;
		}
		return $countries;
	}
}
