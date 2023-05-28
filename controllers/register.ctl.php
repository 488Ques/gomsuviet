<?php
require_once('../modules/validators.php');
require_once('../modules/db.php');
require_once('../models/user.model.php');
require_once('../modules/helpers.php');

const DUPLICATE = 'duplicate';
const INVALID = 'invalid';

function buildLocationPath(string $msgStatus): string
{
    $locPath = 'Location: /register.php?msg=%s&username=%s&first_name=%s&last_name=%s&email_address=%s';
    global $username;
    global $first_name;
    global $last_name;
    global $email_address;

    return sprintf(
        $locPath,
        $msgStatus,
        $username,
        $first_name,
        $last_name,
        $email_address,
    );
}

$userModel = new userModel(DB());

$username = $_POST['username'];
$password = $_POST['password'];
$email_address = $_POST['email_address'];
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
if (!empties($username, $password, $email_address)) {
    $valid = validateStringLength($username, 1, 256);
    $valid = $valid && validateEmail($email_address);

    $first_name = !empty($first_name) ? $first_name : null;
    $last_name = !empty($last_name) ? $last_name : null;

    if ($valid) {
        if ($userModel->exist($username)) {
            header(buildLocationPath(DUPLICATE));
        } else {
            $userModel->insert($username, $password, $first_name, $last_name, $email_address);
            header('Location: /register.php?msg=done');
        }
    } else {
        header(buildLocationPath(INVALID));
    }
} else {
    header(buildLocationPath(INVALID));
}

exit();
