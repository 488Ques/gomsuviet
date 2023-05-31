<?php
session_start();

if (!empty($_SESSION['user'])) {
    unset($_SESSION['user']);
    header('Location: /');
} else if (!empty($_SESSION['merchant'])) {
    unset($_SESSION['merchant']);
    header('Location: /');
} else {
    header('Content-type: text/html; charset=utf8');
    echo 'Không thể đăng xuất';
}

exit();
