<?php
// $prod => array('id' => $id, 'name' => $name, 'price' => $price, 'quantity' => $quantity, 'url' => $url)
// $cart = $_SESSION[CART_SESSION_KEY] => array($prod['id'] => $prod)

const CART_SESSION_KEY = 'cart';

class CartItem
{
    public $product_id;
    public $merchant_id;
    public $name;
    public $price;
    public $quantity;
    public $url;

    public function __construct($id, $merchant_id, $name, $price, $quantity, $url)
    {
        $this->product_id = $id;
        $this->merchant_id = $merchant_id;
        $this->name = $name;
        $this->price = $price;
        $this->quantity = $quantity;
        $this->url = $url;
    }
}

class Cart
{
    public static function addCartItem(CartItem $item)
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];

        if (array_key_exists($item->product_id, $cart)) {
            $existingItem = unserialize($cart[$item->product_id]);
            $existingItem->quantity++;
            $cart[$item->product_id] = serialize($existingItem);
        } else {
            $cart[$item->product_id] = serialize($item);
        }

        $_SESSION[CART_SESSION_KEY] = $cart;
    }

    public static function removeCartItem($id)
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];

        if (array_key_exists($id, $cart)) {
            unset($cart[$id]);
            $_SESSION[CART_SESSION_KEY] = $cart;
        }
    }

    public static function decreaseCartItem($id)
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];

        if (array_key_exists($id, $cart)) {
            $item = unserialize($cart[$id]);

            if ($item->quantity > 1) {
                $item->quantity--;
                $cart[$id] = serialize($item);
                $_SESSION[CART_SESSION_KEY] = $cart;
            }
        }
    }

    public static function increaseCartItem($id)
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];

        if (array_key_exists($id, $cart)) {
            $item = unserialize($cart[$id]);

            $item->quantity++;
            $cart[$id] = serialize($item);
            $_SESSION[CART_SESSION_KEY] = $cart;
        }
    }

    public static function sumCartPrice()
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];
        $sum = 0;

        foreach ($cart as $item) {
            $unserializedItem = unserialize($item);

            if ($unserializedItem instanceof CartItem) {
                $sum += $unserializedItem->quantity * $unserializedItem->price;
            }
        }

        return $sum;
    }

    public static function sumCartQuantity()
    {
        $cart = $_SESSION[CART_SESSION_KEY] ?? [];
        $sum = 0;

        foreach ($cart as $item) {
            $unserializedItem = unserialize($item);

            if ($unserializedItem instanceof CartItem) {
                $sum += $unserializedItem->quantity;
            }
        }

        return $sum;
    }

    public static function emptyCart()
    {
        $_SESSION[CART_SESSION_KEY] = [];
    }
}