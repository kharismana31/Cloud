<?php
Class LihatPeserta_m extends CI_Model
{
	private $table = 'ambil_matakuliah';


	function get_data()
	{
		$this->db->select('j.idjadwal as id, mk.namamk, r.namaruang, j.hari');
		$this->db->from('jadwal j');
		$this->db->join('matakuliah mk','mk.idmk = j.idmk');
		$this->db->join('ruang r','r.idruang = j.idruang');
		return $this->db->get()->result();
	}
//SELECT am.nrp FROM ambil_matakuliah am WHERE( am.idjadwal in (SELECT j.idjadwal FROM jadwal j WHERE (j.idmk = 1)))
	function get_data_peserta($matkul)
	{
		if ($matkul == '') {
			$matkul=0;
		}
		$this->db->select('am.nrp, m.namamhs as nama');
		$this->db->from('ambil_matakuliah am');
		$this->db->where('am.idjadwal in (SELECT j.idjadwal FROM jadwal j WHERE (j.idmk = '.$matkul.'))');
		$this->db->join('mahasiswa m','m.nrp = am.nrp');

		$this->db->join('jadwal j','j.idjadwal = am.idjadwal');
		$this->db->join('matakuliah mk','mk.idmk = j.idmk');
		//$this->db->join('ruang r','r.idruang = j.idruang');

		return $this->db->get()->result();
	}

	public function insert_matakuliah($post)
	{
		return $this->db->insert($this->table, $post);
	}

}
?>
