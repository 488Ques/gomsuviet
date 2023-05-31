<?php
require_once('../models/DTOs/merchant.php');

const MERCHANT_SESSION_KEY = 'merchant';

class merchantModel
{
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

    /**
     * @param $username
     * @param $password
     * @return false|mixed Return an array containing the ID $user['id'] and username $user['username'] if the login is successful. False otherwise.
     */
    public function login($username, $password)
    {
        $stmt = $this->db->prepare('SELECT id, username FROM merchant WHERE username = :username AND 
                                            password = PASSWORD(:password) AND deleted_at IS NULL');
        $stmt->bindValue(':username', $username, PDO::PARAM_STR);
        $stmt->bindValue(':password', $password, PDO::PARAM_STR);
        $stmt->execute();

        $merchant = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($merchant) {
            return $merchant;
        }

        return false;
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