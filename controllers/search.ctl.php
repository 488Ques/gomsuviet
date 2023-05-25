<?php
require_once('modules/db.php');
require_once('models/product.php');
require_once('models/product_image.model.php');
require_once('models/product_tag.model.php');

class SearchController {
    private static productModel $productModel;
    private static productImageModel $imageModel;
    private static productTagModel $tagModel;

    private static function init(): void
    {
        $db = DB();
        self::$productModel = new productModel($db);
        self::$imageModel = new productImageModel($db);
        self::$tagModel = new productTagModel($db);
    }

    public static function Render(): void
    {
        self::init();

        $tags = $_GET['tag'] ?? 1; // An array of tag ID numbers

        $productName = null;
        if (isset($_GET['product_name'])) {
            $productName = $_GET['product_name'];
        }
        $lowerPrice = $_GET['lower_price'] ?? 0;

        $prods = self::$productModel->search($tags, $productName, $lowerPrice);
        $tags = self::$tagModel->all();

        $title = 'Danh sách sản phẩm';
        $template = 'views/search.tmpl.php';

        require_once('views/layout.php');
    }

    public static function GetProductThumbnail($productID): string
    {
        return self::$imageModel->getThumbnail($productID);
    }

    public static function GetProductTagsName($prodID) {
        return self::$tagModel->getProductTagsName($prodID);
    }
}