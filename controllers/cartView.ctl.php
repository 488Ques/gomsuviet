<?php
class CartViewController
{
    public static function Render(): void
    {
        $title = 'Giỏ hàng';
        $template = 'views/cart.tmpl.php';

        require_once('views/layout.php');
    }
}