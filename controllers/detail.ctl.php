<?php
require_once(DIR_BASE . 'modules/db.php');
require_once(DIR_BASE . 'models/product.model.php');
require_once(DIR_BASE . 'models/product_specs.model.php');
require_once(DIR_BASE . 'models/product_image.model.php');
require_once(DIR_BASE . 'models/product_rating.model.php');

class DetailController
{
    private static productModel $productModel;
    private static productSpecsModel $productSpecsModel;
    private static productImageModel $productImageModel;
    private static productRatingModel $productRatingModel;

    private static function init(): void {
        $db = DB();
        self::$productModel = new productModel($db);
        self::$productSpecsModel = new productSpecsModel($db);
        self::$productImageModel = new productImageModel($db);
        self::$productRatingModel = new productRatingModel($db);
    }

    public static function Render(): void
    {
        self::init();

        if (!empty($_GET["id"])) {
            $prod = self::$productModel->get($_GET["id"]);

            $specs = self::$productSpecsModel->get($prod->specs_id);
            $specsJSON = json_decode($specs->specs, true);

            $images = self::$productImageModel->getImages($prod->id);
            $thumbnail = self::$productImageModel->getThumbnail($prod->id);

            $ratings = self::$productRatingModel->getByProductID($prod->id);

            $title = $prod->name;
            $template = 'views/detail.tmpl.php';

            require_once('views/layout.php');
        }
    }
}

