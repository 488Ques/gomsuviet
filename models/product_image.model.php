<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_DTOS . 'product_image.php');

class productImageModel
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getImages($productID)
    {
        $stmt = $this->db->prepare('SELECT url FROM product_image WHERE product_id = ? AND deleted_at IS NULL;');
        $stmt->execute([$productID]);

        $result = $stmt->fetchAll();

        return $result;
    }

    /**
     * Return a string of a product's image URL marked as thumbnail
     *
     * @param $productID
     * @return string
     */
    public function getThumbnail($productID)
    {
        $stmt = $this->db->prepare('SELECT url FROM product_image WHERE product_id = ? AND is_thumbnail != 0 AND deleted_at IS NULL');
        $stmt->execute([$productID]);

        $result = $stmt->fetch();

        return $result['url'];
    }
}
