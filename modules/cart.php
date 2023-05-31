<?php
// $prod => array('id' => $id, 'name' => $name, 'price' => $price, 'quantity' => $quantity, 'url' => $url)
// $cart = $_SESSION['cart'] => array($prod['id'] => $prod)

class CartItem
{
    public $id;
    public $merchant_id;
    public $name;
    public $price;
    public $quantity;
    public $url;

    public function __construct($id, $merchant_id, $name, $price, $quantity, $url)
    {
        $this->id = $id;
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
        $cart = $_SESSION['cart'] ?? [];

        if (array_key_exists($item->id, $cart)) {
            $existingItem = unserialize($cart[$item->id]);
            $existingItem->quantity++;
            $cart[$item->id] = serialize($existingItem);
        } else {
            $cart[$item->id] = serialize($item);
        }

        $_SESSION['cart'] = $cart;
    }

    public static function removeCartItem($id)
    {
        $cart = $_SESSION['cart'] ?? [];

        if (array_key_exists($id, $cart)) {
            unset($cart[$id]);
            $_SESSION['cart'] = $cart;
        }
    }

    public static function decreaseCartItem($id)
    {
        $cart = $_SESSION['cart'] ?? [];

        if (array_key_exists($id, $cart)) {
            $item = unserialize($cart[$id]);

            if ($item->quantity > 1) {
                $item->quantity--;
                $cart[$id] = serialize($item);
                $_SESSION['cart'] = $cart;
            }
        }
    }

    public static function increaseCartItem($id)
    {
        $cart = $_SESSION['cart'] ?? [];

        if (array_key_exists($id, $cart)) {
            $item = unserialize($cart[$id]);

            $item->quantity++;
            $cart[$id] = serialize($item);
            $_SESSION['cart'] = $cart;
        }
    }

    public static function sumCartPrice()
    {
        $cart = $_SESSION['cart'] ?? [];
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
        $cart = $_SESSION['cart'] ?? [];
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
        $_SESSION['cart'] = [];
    }
}