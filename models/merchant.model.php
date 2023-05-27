<?php
require_once('models/DTOs/merchant.php');

class merchantModel {
    protected PDO $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function register($username, $password, $first_name, $last_name, $address, $email_address)
    {
        $stmt = $this->db->prepare('INSERT INTO merchant(username, password, first_name, last_name, address, email_address) VALUES (?, PASSWORD(?), ?, ?, ?, ?);');
        return $stmt->execute([$username, $password, $first_name, $last_name, $address, $email_address]);
    }

    public function login($username, $password): bool
    {
        $stmt = $this->db->prepare('SELECT COUNT(*) FROM merchant WHERE username = ? AND password = PASSWORD(?) AND deleted_at IS NULL');
        $stmt->execute([$username, $password]);

        return $stmt->fetchColumn();
    }

    /**
     * Check if a username exists (Including deleted ones)
     * @param $username
     * @return mixed
     */
    public function exist($username)
    {
        $stmt = $this->db->prepare('SELECT id FROM merchant WHERE username = ?');
        $stmt->execute([$username]);

        return $stmt->fetchColumn();
    }
}