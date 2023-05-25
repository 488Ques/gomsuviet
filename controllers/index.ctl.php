<?php
require_once('modules/db.php');
require_once('models/product.php');

class Index {
    private static productModel $productModel;

    private static function init(): void
    {
        self::$productModel = new productModel(DB());
    }

    public static function Render(): void
    {
        self::init();

        // Initialize template data
        $phones = self::$productModel->getFourProducts(1);
        $tablets = self::$productModel->getFourProducts(2);
        $laptops = self::$productModel->getFourProducts(3);
        $acs = self::$productModel->getFourProducts(4);
        $fridges = self::$productModel->getFourProducts(5);
        $washers = self::$productModel->getFourProducts(6);

        $title = 'Trang chủ';
        $template = 'views/index.tmpl.php';

        // Render template
        require_once('views/layout.php');
    }
}