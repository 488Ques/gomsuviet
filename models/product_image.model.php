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

    public function batchInsert(array $imagePaths, int $productID)
    {
        // Prepare the SQL statement for batch insertion
        $sql = "INSERT INTO product_image (url, product_id, is_thumbnail) VALUES (:url, :product_id, :is_thumbnail)";
        $stmt = $this->db->prepare($sql);

        // Initialize the thumbnail flag
        $is_thumbnail = 1;

        // Bind parameters for each image path and execute the batch insert
        foreach ($imagePaths as $imagePath) {
            // Bind the parameters
            $stmt->bindParam(':url', $imagePath);
            $stmt->bindParam(':product_id', $productID);
            $stmt->bindParam(':is_thumbnail', $is_thumbnail, PDO::PARAM_BOOL);

            // Execute the statement
            $stmt->execute();

            // Set the thumbnail flag to 0 for the rest of the images
            $is_thumbnail = 0;
        }
    }
}
