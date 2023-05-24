<?php
require_once('../include_path.php');
require_once(DIR_MODULES . 'helpers.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'user.model.php');

session_start();

$userModel = new userModel(newDB());

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
