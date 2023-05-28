<?php
require_once('../modules/helpers.php');
require_once('../modules/db.php');
require_once('../models/merchant.model.php');

session_start();

$merchantModel = new merchantModel(DB());

$username = $_POST['username'];
$password = $_POST['password'];
if (!empties($username, $password)) {
    if ($merchantModel->login($username, $password)) {
        $_SESSION['merchantUsername'] = $username;
        header('Location: /');
    } else {
        header('Location: /login.php?msg=login-fail&username=' . $username);
    }
} else {
    header('Location: /login.php?msg=login-fail&username=' . $username);
}

exit();