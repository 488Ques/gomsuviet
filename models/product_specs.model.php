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
}
