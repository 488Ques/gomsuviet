<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_DTOS . 'product.php');

// $prod => array('id' => $id, 'name' => $name, 'price' => $price, 'quantity' => $quantity, 'url' => $url)
// $cart = $_SESSION['cart'] => array($prod['id'] => $prod)

function addCart($prod)
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];

        // If product doesn't exist in cart, add it.
        // Otherwise, increase its quantity.
        if (!array_key_exists($prod['id'], $cart)) {
            $cart[$prod['id']] = $prod;
        } else {
            $cart[$prod['id']]['quantity']++;
        }

        $_SESSION['cart'] = $cart;
    } else {
        $cart[$prod['id']] = $prod;
        $_SESSION['cart'] = $cart;
    }
}

function removeCart($id)
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        unset($cart[$id]);
        $_SESSION['cart'] = $cart;
    }
}

function decreaseProdCart($id)
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];

        if ($cart[$id]['quantity'] > 1) {
            $cart[$id]['quantity']--;
            $_SESSION['cart'] = $cart;
        }
    }
}

function increaseProdCart($id)
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        $cart[$id]['quantity']++;
        $_SESSION['cart'] = $cart;
    }
}

// Return the summed price of all products in cart
function sumPriceCart()
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        $sum = 0;
        foreach ($cart as $prod) {
            $sum += $prod['quantity'] * $prod['price'];
        }

        return $sum;
    }
}

// Return the number of products in cart.
function sumProdCart()
{
    if (!empty($_SESSION['cart'])) {
        $cart = $_SESSION['cart'];
        $sum = 0;
        foreach ($cart as $prod) {
            $sum += $prod['quantity'];
        }

        return $sum;
    }
}

function emptyCart()
{
    if (!empty($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
    }
}
