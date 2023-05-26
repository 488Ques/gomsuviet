<?php

class CheckoutViewController {
    public static function Render(): void {
        $title = 'Thanh toán';
        $template = 'views/checkout.tmpl.php';

        require_once('views/layout.php');
    }
}
