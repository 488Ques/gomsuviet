<?php
require_once('../modules/helpers.php');
require_once('../modules/db.php');
require_once('../models/user.model.php');

session_start();

$userModel = new userModel(DB());

$username = $_POST['username'];
$password = $_POST['password'];
if (!empties($username, $password)) {
    if ($userModel->login($username, $password)) {
        $_SESSION['username'] = $username;
        header('Location: /');
    } else {
        header('Location: /login.php?msg=login-fail&username=' . $username);
    }
} else {
    header('Location: /login.php?msg=login-fail&username=' . $username);
}

exit();
