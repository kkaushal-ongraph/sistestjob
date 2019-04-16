<?php

Class User_model extends CI_Model {

	// Insert registration data in database
	public function save($data) {

		// Query to check whether username already exist or not
		$condition = "email =" . "'" . $data['email'] . "'";
		$this->db->select('*');
		$this->db->from('users');
		$this->db->where($condition);
		$this->db->limit(1);
		$query = $this->db->get();
		if ($query->num_rows() == 0) {

			// Query to insert data in database
			$this->db->insert('users', $data);
			if ($this->db->affected_rows() > 0) {
				return true;
			}
		}
		return false;
	}

	
	// Find all users data in database
	public function findAll($condition="") {
		if (!empty($condition)) {
			$conditions = "1 = 1 AND ".$condition;
			$this->db->select('*');
			$this->db->from('users');
			$this->db->where($conditions);
			//$this->db->limit(1);
			$query = $this->db->get();
		}else{
			$this->db->select('*');
			$this->db->from('users');
			$query = $this->db->get();
			
		}
		return $query->result();
	}

	
}

?>