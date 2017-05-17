<?php 

class Ambilmk extends CI_Controller{

	function __construct(){
		parent::__construct();

		if($this->session->userdata('status') != "login"){
			redirect(base_url("login"));
		}
		$this->load->helper(array('form'));
		$this->load->model('ambilmk_m');
	}

	function index(){
		$nrp = $this->session->userdata("nama");
		$data['list'] = $this->ambilmk_m->get_matakuliah_mahasiswa($nrp);
		$data['matakuliah'] = $this->ambilmk_m->get_data();
		$this->load->view('Template/Header_v');
		$this->load->view('ambilmk_v', $data);

		$this->load->view('Template/Footer_v');
		
	}
	function tambah(){
		 $post = array(
         'nrp' => $this->session->userdata("nama"),
         'idjadwal' => $this->input->post('matakuliah', TRUE)
         );
         $this->ambilmk_m->insert_matakuliah($post);
         redirect(base_url("ambilmk"));
		
	}
}