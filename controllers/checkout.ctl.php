<?php
require_once('../modules/cart.php');
require_once('../modules/db.php');
require_once('../models/product_order.model.php');
require_once('../models/order_items.model.php');

// Start session
session_start();

// Initialize models
$productOrderModel = new productOrderModel(DB());
$orderItemsModel = new orderItemsModel(DB());

// Get user information from session
$user = $_SESSION['user'];

// Get cart items from session
$cart = $_SESSION[CART_SESSION_KEY];

// Create a new order for the user
$orderID = $productOrderModel->newOrder($user['id']);

// Loop through each item in the cart and add them to the order_items table
foreach ($cart as $item) {
    $unserializedItem = unserialize($item);
    $orderItemsModel->newOrderItem($unserializedItem, $orderID);
}

// Empty the cart
Cart::emptyCart();

// Redirect to the checkout page with a success message
header('Location: /checkout.php?msg=payment-success');
exit();
