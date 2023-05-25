<?php
require_once('modules/db.php');
require_once('models/product.php');
require_once('models/product_specs.model.php');
require_once('models/product_image.model.php');

class DetailController {
    public static function render(): void
    {
        $productModel = new productModel(DB());
        $productSpecsModel = new productSpecsModel(DB());
        $productImageModel = new productImageModel(DB());

        if (!empty($_GET["id"])) {
            $prod = $productModel->get($_GET["id"]);

            $specs = $productSpecsModel->get($prod->specs_id);
            $specsJSON = json_decode($specs->specs, true);

            $images = $productImageModel->getImages($prod->id);
            $thumbnail = $productImageModel->getThumbnail($prod->id);

            $title = $prod->name;
            $template = DIR_VIEWS . 'detail.tmpl.php';

            require_once(DIR_VIEWS . 'layout.php');
        }
    }
}

