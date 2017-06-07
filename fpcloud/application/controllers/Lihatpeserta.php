<?php 

class Lihatpeserta extends CI_Controller{

	function __construct(){
		parent::__construct();

		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
		$this->load->helper(array('form'));
		$this->load->model('lihatpeserta_m');
	}

	function index(){

		$nrp = $this->session->userdata("nama");
		$matkul = $this->input->get('matakuliah', TRUE);
		$data['matakuliah'] = $this->lihatpeserta_m->get_data();

		//$data['list'] = $this->ambilmk_m->get_matakuliah_mahasiswa($nrp);
		$data['listnama'] = $this->lihatpeserta_m->get_data_peserta($matkul);
		$this->load->view('Template/Header_v');
		$this->load->view('lihatpeserta_v', $data);

		$this->load->view('Template/Footer_v');
		
	}
}