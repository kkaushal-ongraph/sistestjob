<?php

class Migration_Add_employee_expanses extends CI_Migration
{
    public function up()
    {
        $this->dbforge->add_field(
           array(
              'id' => array(
                 'type' => 'INT',
                 'constraint' => 5,
                 'unsigned' => true,
                 'auto_increment' => true
              ),
              'user_id' => array(
                 'type' => 'INT',
                 'constraint' => 5,
                 'unsigned' => true,
              ),
              'date' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'category' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'employee_name' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'employee_address' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'expense_description' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'pre_tax_amount' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'tax_amount' => array(
                 'type' => 'VARCHAR',
                 'constraint' => '100',
                 'null' => TRUE,
              ),
              'created_at' => array(
                 'type' => 'timestamp',
              ),
           )
        );

        $this->dbforge->add_key('id', TRUE);
        $this->dbforge->create_table('employee_expanses');
        $this->db->query('ALTER TABLE `employee_expanses` ADD FOREIGN KEY(`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;');
    }

    public function down()
    {
        $this->dbforge->drop_table('employee_expanses');
    }
}