<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_MODULES . 'db.php');
require_once(DIR_MODELS . 'product.model.php');
require_once(DIR_MODELS . 'product_specs.model.php');
require_once(DIR_MODELS . 'product_image.model.php');

class detailController
{
    protected productModel $productModel;
    protected productSpecsModel $productSpecsModel;
    protected productImageModel $productImageModel;

    public function __construct()
    {
        $db = newDB();
        $this->productModel = new productModel($db);
        $this->productSpecsModel = new productSpecsModel($db);
        $this->productImageModel = new productImageModel($db);
    }

    public function invoke(&$prod, &$specs, &$images)
    {
        if (!empty($_GET["id"])) {
            $prod = $this->productModel->get($_GET["id"]);
            $specs = $this->productSpecsModel->get($prod->specs_id);
            $images = $this->productImageModel->getImages($prod->id);
        }
    }

    public function getProductThumbnail($productID)
    {
        return $this->productImageModel->getThumbnail($productID);
    }
}
