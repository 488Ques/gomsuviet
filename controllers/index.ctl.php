<?php
require_once('modules/db.php');
require_once('models/product.php');

class Index {
    public static function render(): void
    {
        $productModel = new productModel(DB());
        $phones = $productModel->getFourProducts(1);
        $tablets = $productModel->getFourProducts(2);
        $laptops = $productModel->getFourProducts(3);
        $acs = $productModel->getFourProducts(4);
        $fridges = $productModel->getFourProducts(5);
        $washers = $productModel->getFourProducts(6);

        $title = 'Trang chủ';
        $template = 'views/index.tmpl.php';

        require_once('views/layout.php');
    }
}