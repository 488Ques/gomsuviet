<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_MODULES . 'db_module.php');
require_once(DIR_MODELS . 'product.model.php');

class indexController
{
    protected productModel $productModel;

    public function __construct()
    {
        $db = newDB();
        $this->productModel = new productModel($db);
    }

    public function getFourProducts($tagID)
    {
        return $this->productModel->getFourProducts($tagID);
    }
}
