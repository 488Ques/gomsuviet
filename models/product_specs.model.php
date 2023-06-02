<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_DTOS . 'product_specs.php');

class productSpecsModel
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function get($id)
    {
        $stmt = $this->db->prepare('SELECT * FROM product_specs WHERE id = ? AND deleted_at IS NULL;');
        $stmt->execute([$id]);

        $result = $stmt->fetch();

        return new product_specs(
            $result['id'],
            $result['specs'],
            $result['created_at'],
            $result['modified_at'],
            $result['deleted_at'],
        );
    }

    public function new(string $detailedType, string $color, int $quantity, string $productDetails, string $pattern)
    {
        // Create an array to store the specifications
        $specs = [
            'Loại sản phẩm' => $detailedType,
            'Màu sắc' => $color,
            'Số món' => (string) $quantity,
            'Chi tiết các món' => $productDetails,
            'Hoa văn' => $pattern
        ];

        // Convert the array to JSON format
        $specsJson = json_encode($specs);

        // Insert the specification into the product_specs table
        $sql = 'INSERT INTO product_specs (specs) VALUES (:specs)';
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':specs', $specsJson, PDO::PARAM_STR);
        $stmt->execute();

        // Return the last inserted ID
        return $this->db->lastInsertId();
    }
}
