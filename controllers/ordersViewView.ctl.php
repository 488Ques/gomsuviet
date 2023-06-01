<?php
require_once(DIR_BASE . 'modules/db.php');
require_once(DIR_BASE . 'models/product_order.model.php');

class OrdersViewController
{
    private static productOrderModel $productOrderModel;

    private static function init(): void {
        $db = DB();
        self::$productOrderModel = new productOrderModel($db);
    }
    public static function Render(): void
    {
        self::init();

        $merchant = $_SESSION['merchant'];
        $ordersInfo = self::$productOrderModel->getOrderInfoByMerchantID($merchant['id']);

        $title = 'Quản lý đơn hàng';
        $template = DIR_BASE . 'views/orders.tmpl.php';

        require_once(DIR_BASE . 'views/layout.php');
    }
}