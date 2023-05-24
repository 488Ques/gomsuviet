<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_MODULES . 'shoppingCart.php');

session_start();

$action =  $_POST['action'];
if (!empty($action)) {
    switch ($action) {
        case 'add':
            $prod = array(
                'id' => $_POST['id'],
                'name' => $_POST['name'],
                'price' => $_POST['price'],
                'quantity' => $_POST['quantity'],
                'url' => $_POST['url']
            );
            addCart($prod);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case '-':
            decreaseProdCart($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case '+':
            increaseProdCart($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case 'remove':
            removeCart($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
    }
}

exit();
