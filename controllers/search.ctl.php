<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'product.model.php');
require_once(DIR_MODELS . 'product_image.model.php');
require_once(DIR_MODELS . 'product_tag.model.php');

class searchController
{
    protected productModel $prodModel;
    protected productImageModel $imageModel;
    protected productTagModel $tagModel;

    public function __construct()
    {
        $db = newDB();
        $this->prodModel = new productModel($db);
        $this->imageModel = new productImageModel($db);
        $this->tagModel = new productTagModel($db);
    }

    public function invoke(&$prods, &$tags)
    {
        $tags = $_GET['tag'] ?? 1; // An array of tag ID numbers

        $productName = null;
        if (isset($_GET['product_name'])) {
            $productName = $_GET['product_name'];
        }
        $lowerPrice = $_GET['lower_price'] ?? 0;

        $prods = $this->prodModel->search($tags, $productName, $lowerPrice);
        $tags = $this->tagModel->all();
    }

    public function getProductThumbnail($productID)
    {
        return $this->imageModel->getThumbnail($productID);
    }

    public function getProductTagsName($prodID) {
        return $this->tagModel->getProductTagsName($prodID);
    }
}
