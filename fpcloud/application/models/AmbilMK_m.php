<?php
Class AmbilMK_m extends CI_Model
{
	private $table = 'ambil_matakuliah';

	function get_all_data()
	{
		$this->db->select('nrp as nrp, idjadwal as id');
		return $this->db->get($this->table)->result();
	}



	function get_data()
	{
		$this->db->select('j.idjadwal as id, mk.namamk, r.namaruang, j.hari');
		$this->db->from('jadwal j');
		$this->db->join('matakuliah mk','mk.idmk = j.idmk');
		$this->db->join('ruang r','r.idruang = j.idruang');
		return $this->db->get()->result();
	}

	function get_matakuliah_mahasiswa($nrp)
	{
		$this->db->select('j.idjadwal as id, mk.namamk, r.namaruang, j.hari');
		$this->db->from('ambil_matakuliah am');
		$this->db->where('am.nrp', $nrp);
		$this->db->join('jadwal j','j.idjadwal = am.idjadwal');
		$this->db->join('matakuliah mk','mk.idmk = j.idmk');
		$this->db->join('ruang r','r.idruang = j.idruang');

		return $this->db->get()->result();
	}

	public function insert_matakuliah($post)
	{
		return $this->db->insert($this->table, $post);
	}

}
?>
