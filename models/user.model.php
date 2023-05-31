<?php
require_once('DTOs/user.php');

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

    /**
     * @param $username
     * @param $password
     * @return false|mixed Return an array containing the ID $user['id'] and username $user['username'] if the login is successful. False otherwise.
     */
    public function login($username, $password)
    {
        $stmt = $this->db->prepare('SELECT id, username FROM user WHERE username = :username AND 
                                            password = PASSWORD(:password) AND deleted_at IS NULL');
        $stmt->bindValue(':username', $username, PDO::PARAM_STR);
        $stmt->bindValue(':password', $password, PDO::PARAM_STR);
        $stmt->execute();

        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {
            return $user;
        }

        return false;
    }

    // Check if a username exists (Including deleted ones)
    public function exist($username)
    {
        $stmt = $this->db->prepare('SELECT id FROM user WHERE username = ?');
        $stmt->execute([$username]);

        return $stmt->fetchColumn();
    }
}
