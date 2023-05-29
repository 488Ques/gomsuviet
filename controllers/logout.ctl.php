<?php
session_start();

if (!empty($_SESSION['username'])) {
    unset($_SESSION['username']);
    header('Location: /');
} else if (!empty($_SESSION['merchantUsername'])) {
    unset($_SESSION['merchantUsername']);
    header('Location: /');
} else {
    header('Content-type: text/html; charset=utf8');
    echo 'Không thể đăng xuất';
}

exit();
