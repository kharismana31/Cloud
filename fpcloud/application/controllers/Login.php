<?php 
 
class Login extends CI_Controller{
 
  function __construct(){
    parent::__construct();    
    $this->load->model('login_m');
 
  }
 
  function index(){
    $this->load->view('login_v');
  }
 
  function aksi_login(){
    $nrp = $this->input->post('nrp');
    $password = $this->input->post('password');
    $where = array(
      'nrp' => $nrp,
      'password' => md5($password)
      );
    $cek = $this->login_m->cek_login("mahasiswa",$where)->num_rows();
    if($cek > 0){
 
      $data_session = array(
        'nama' => $nrp,
        'status' => "login"
        );
 
      $this->session->set_userdata($data_session);
 
      redirect(base_url("dashboard"));
 
    }else{
      echo "NRP dan password salah !";
    }
  }
 
  function logout(){
    $this->session->sess_destroy();
    redirect(base_url('login'));
  }
}