<?php
require_once('../modules/cart.php');

session_start();

$action =  $_POST['action'];
if (!empty($action)) {
    switch ($action) {
        case 'add':
            $item = new CartItem($_POST['id'], $_POST['merchant_id'], $_POST['name'], $_POST['price'], $_POST['quantity'], $_POST['url']);
            Cart::addCartItem($item);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case '-':
            Cart::decreaseCartItem($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case '+':
            Cart::increaseCartItem($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
        case 'remove':
            Cart::removeCartItem($_POST['id']);
            header('Location: ' . $_SERVER['HTTP_REFERER']);
            break;
    }
}

exit();
