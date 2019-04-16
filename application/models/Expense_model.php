<?php

Class Expense_model extends CI_Model {

	// Insert employee_expenses data in database
	public function save($data) {
		
		if (count($data)) {
			// Query to insert data in database
			$this->db->insert('employee_expanses', $data);
			if ($this->db->affected_rows() > 0) {
				return true;
			}
		}
		return false;
	}

	// Find all employee_expenses data in database
	public function findAll($condition="") {
		if (!empty($condition)) {
			$conditions = "1 = 1 AND ".$condition;
			$this->db->select('*');
			$this->db->from('employee_expanses');
			$this->db->where($conditions);
			//$this->db->limit(1);
			$query = $this->db->get();
		}else{
			$this->db->select('*');
			$this->db->from('employee_expanses');
			$query = $this->db->get();
			
		}
		return $query->result();
	}

}

?>