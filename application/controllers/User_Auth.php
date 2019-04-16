<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//session_start(); //we need to start session in order to access it through CI

Class User_Auth extends CI_Controller {

	public function __construct() {
		parent::__construct();

		// Load form helper library
		$this->load->helper('form','url');

		// Load form validation library
		$this->load->library('form_validation');

		// Load session library
		$this->load->library('session');

		// Load database
		$this->load->model('user_model');
		$this->load->model('expanse_model');
	}

	// Show login page
	public function index() {
		return $this->load->view('login_form');
	}

	// Show registration page
	public function registration() {
		return $this->load->view('registration_form');
	}

	// Validate and store registration data in database
	public function user_registration() {

		if(isset($this->session->userdata['logged_in'])){
				redirect(base_url('index.php/User_Auth/dashboard'));
		}
		$data = array();
		if($this->input->server('REQUEST_METHOD') == 'POST'){
			// Check validation for user input in SignUp form
			$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
			$this->form_validation->set_rules('c_password', 'Confirm Password', 'trim|required');
			$this->form_validation->set_rules('password', 'Password', 'trim|required|matches[c_password]');
			if ($this->form_validation->run() == FALSE) {
				$this->load->view('registration_form');
			} else {
				$data = array(
					'email' => $this->input->post('email'),
					'password' => md5($this->input->post('password')),
				);
				$result = $this->user_model->save($data);
				if ($result == TRUE) {
					$data['message_display'] = 'Registration Successfully !';
					return $this->load->view('login_form', $data);
				} else {
					$data['error_message'] = 'Email already exist!';
					return $this->load->view('registration_form', $data);
				}
			}
		}
	}

	// Check for user login process
	public function user_login() {

		if(isset($this->session->userdata['logged_in'])){
				redirect(base_url('index.php/User_Auth/dashboard'));
		}
		$data = array();
		if($this->input->server('REQUEST_METHOD') == 'POST'){
			$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
			$this->form_validation->set_rules('password', 'Password', 'trim|required');
			if ($this->form_validation->run() == FALSE) {
				return $this->load->view('login_form');
			}else{
				$email = $this->input->post('email');
				$password = md5($this->input->post('password'));
				$condition = "email = '$email' AND password = '$password' ";
				$result = $this->user_model->findAll($condition);
				if (count($result)) {
					$session_data = array(
						'user_id' => $result[0]->id,
						'email' => $result[0]->email,
					);
					$this->session->set_userdata('logged_in', $session_data);
					redirect(base_url('index.php/User_Auth/dashboard'));
				}
				$data = array('error_message' => 'Invalid Username or Password');
				return $this->load->view('login_form', $data);		
			}
		}
		return $this->load->view('login_form');
	}

	// Logout from admin page
	public function logout() {

		// Removing session data
		$session_data = array(
			'user_id' => "",
			'email' => "",
		);
		$this->session->unset_userdata('logged_in', $session_data);
		$data['message_display'] = 'Successfully Logout';
		return $this->load->view('login_form', $data);
	}

	//Save expanses
	public function upload_psv(){
		 $fields;            /** columns names retrieved after parsing */ 
    	 $separator = ';';    /** separator used to explode each line */
    	 $enclosure = '"';    /** enclosure used to decorate each field */

    	$max_row_size = 4096;
    	
		if (!empty($_FILES['file'])) {
			$ext = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
			if ($ext != 'psv') {
				$result = array('message'=>'Invalid file type. Plese upload psv file.','type'=>0);
			}else{
				$file = fopen($_FILES['file']['tmp_name'], 'r');
		        $fields = fgetcsv($file, $max_row_size, $separator, $enclosure);
		        $keys_values = explode(',',$fields[0]);

		        $content    =   array();
		        $keys   =   $this->escape_string($keys_values);
		        
		        $i  =   1;
		        while( ($row = fgetcsv($file, $max_row_size, $separator, $enclosure)) != false ) {            
		            if( $row != null ) { // skip empty lines
		                $values =   explode('|',$row[0]);
		                if(count($keys) == count($values)){
		                    $arr    =   array();
		                    for($j=0;$j<count($keys);$j++){
		                        if($keys[$j] != ""){
		                            $arr[$keys[$j]] =   $values[$j];
		                        }
		                    }
		                    $content[$i]=  $arr;
		                    $i++;
		                }
		            }
		        }
		        fclose($file);
		        $user_id = $this->session->userdata['logged_in']['user_id'];
		        foreach ($content as $value) {
		        	$data['user_id'] = $user_id;
		        	$data['date'] = !empty($value['date'])?$value['date']:"";
		        	$data['category'] = !empty($value['category'])?$value['category']:"";
		        	$data['employee_name'] = !empty($value['employee_name'])?$value['employee_name']:"";
		        	$data['employee_address'] = !empty($value['employee_address'])?$value['employee_address']:"";
		        	$data['expense_description'] = !empty($value['expense_description'])?$value['expense_description']:"";
		        	$data['pre_tax_amount'] = !empty($value['pre_tax_amount'])?$value['pre_tax_amount']:"";
		        	$data['tax_amount'] = !empty($value['tax_amount'])?$value['tax_amount']:"";
		        	$this->expanse_model->save($data);
		        }
		        $result =  array('message'=>'Successfully uploaded.','type'=>'1');;	
			}
		}else{
			$result = array('message'=>'Empty file not allowe.','type'=>'0');
		}
		echo json_encode($result);exit;
	}

	function escape_string($data){
        $result =   array();
        $data = explode("|",$data[0]);
        foreach($data as $row){
            $result[]   =   str_replace('"', '',$row);
        }
        return $result;
    }

    public function dashboard() {
    	$user_id = $this->session->userdata['logged_in']['user_id'];
    	$condition = "user_id = '$user_id'";
    	$result['expanses'] = $this->expanse_model->findAll($condition);
    	return $this->load->view('dashboard',$result);
    }

}

?>
