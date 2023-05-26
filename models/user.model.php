<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_DTOS . 'user.php');

class userModel
{
    protected PDO $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function insert($username, $password, $first_name, $last_name, $email_address)
    {
        $stmt = $this->db->prepare('INSERT INTO user(username, password, first_name, last_name, email_address) VALUES (?, PASSWORD(?), ?, ?, ?);');
        $stmt->execute([$username, $password, $first_name, $last_name, $email_address]);
    }

    public function get($username)
    {
        $stmt = $this->db->prepare('SELECT * FROM user WHERE username = ? AND deleted_at IS NULL');
        $stmt->execute([$username]);

        $user = $stmt->fetch();

        return new user(
            $user['id'],
            $user['username'],
            $user['password'],
            $user['first_name'],
            $user['last_name'],
            $user['email_address'],
            $user['created_at'],
            $user['modified_at'],
            $user['deleted_at'],
        );
    }

    public function login($username, $password): bool
    {
        $stmt = $this->db->prepare('SELECT COUNT(*) FROM user WHERE username = ? AND password = PASSWORD(?) AND deleted_at IS NULL');
        $stmt->execute([$username, $password]);

        return $stmt->fetchColumn();
    }

    // Check if a username exists (Including deleted ones)
    public function exist($username)
    {
        $stmt = $this->db->prepare('SELECT id FROM user WHERE username = ?');
        $stmt->execute([$username]);

        return $stmt->fetchColumn();
    }
}
