<?php
class user
{
    var $id;
    var $username;
    var $password;
    var $first_name;
    var $last_name;
    var $email_address;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_id,
        $_username,
        $_password,
        $_first_name,
        $_last_name,
        $_email_address,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->username = $_username;
        $this->password = $_password;
        $this->first_name = $_first_name;
        $this->last_name = $_last_name;
        $this->email_address = $_email_address;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
