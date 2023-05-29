<?php
require_once('models/DTOs/product.php');

class productModel
{
    protected PDO $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

    public function get($id): product
    {
        $stmt = $this->db->prepare('SELECT id, merchant_id, name, description, price, specs_id, created_at, modified_at, deleted_at
         FROM product WHERE id = ? AND deleted_at IS NULL;');

        $stmt->execute([$id]);

        $product = $stmt->fetch();

        return new product(
            $product['id'],
            $product['merchant_id'],
            $product['name'],
            $product['description'],
            $product['price'],
            $product['specs_id'],
            $product['created_at'],
            $product['modified_at'],
            $product['deleted_at'],
        );
    }

    // Return all products whose ID belongs to $ids
    public function matchAll($ids)
    {
        $stmt = 'SELECT id, name, description, price, specs_id, created_at, modified_at, deleted_at 
        FROM product WHERE id IN (';
        for ($i = 0; $i < count($ids); $i++) {
            if ($i == count($ids) - 1) {
                $stmt = $stmt . '?);';
                break;
            }
            $stmt = $stmt . '?, ';
        }

        $prepared = $this->db->prepare($stmt);
        $prepared->execute($ids);

        $products = array();
        while ($temp = $prepared->fetch()) {
            $prod = new product(
                $temp['id'],
                null,
                $temp['name'],
                $temp['description'],
                $temp['price'],
                $temp['specs_id'],
                $temp['created_at'],
                $temp['modified_at'],
                $temp['deleted_at'],
            );
            array_push($products, $prod);
        }

        return $products;
    }

    // search() finds products that match all $tags, match partially $partialName and
    // have price higher than $lowerPrice. If null is passed into all, it returns all products.
    public function search($tags, $partialName, $lowerPrice)
    {
        // SELECT prod.id, prod.name, prod.price FROM product prod WHERE prod.name LIKE %?% prod.price > ? AND prod.id IN 
        // (SELECT map.product_id FROM producttag_map map WHERE map.tag_id = ? INTERSECT 
        // SELECT map.product_id FROM producttag_map map WHERE map.tag_id = ?) AND 1; 

        $stmt = '';
        $args = array();

        if (!empty($tags) || !empty($partialName) || !empty($lowerPrice)) {
            $stmt = 'SELECT prod.id, prod.name, prod.price FROM product prod WHERE ';
            if (!empty($partialName)) {
                array_push($args, '%' . $partialName . '%'); // Match all product name containing $partialName
                $stmt = $stmt . 'prod.name LIKE ? AND ';
            }
            if (!empty($lowerPrice)) {
                array_push($args, $lowerPrice);
                $stmt = $stmt . 'prod.price > ? AND ';
            }

            if (!empty($tags)) {
                $args = array_merge($args, $tags);
                $stmt = $stmt . 'prod.id IN (';
                $tagsClause = '';
                for ($i = 0; $i < count($tags); $i++) {
                    if ($i == count($tags) - 1) {
                        $tagsClause = $tagsClause . 'SELECT map.product_id FROM producttag_map map WHERE tag_id = ?';
                        break;
                    }
                    $tagsClause = $tagsClause . 'SELECT map.product_id FROM producttag_map map WHERE tag_id = ? INTERSECT ';
                }
                $stmt = $stmt . $tagsClause . ') AND ';
            }

            $stmt = $stmt . '1;';
        } else {
            $stmt = 'SELECT prod.id, prod.name, prod.price FROM product prod;';
        }

        $prepared = $this->db->prepare($stmt);
        $prepared->execute($args);

        $products = array();
        while ($temp = $prepared->fetch()) {
            $prod = new product(
                $temp['id'],
                null,
                $temp['name'],
                null,
                $temp['price'],
                null,
                null,
                null,
                null,
                null,
            );
            array_push($products, $prod);
        }

        return $products;
    }

    public function getFourProducts($tagID)
    {
        $stmt = 'SELECT prod.id, prod.name, prod.price, image.url 
        FROM product prod, product_image image, producttag_map map
        WHERE map.tag_id = ? AND prod.id = map.product_id AND prod.id = image.product_id AND image.is_thumbnail = 1 LIMIT 4;';

        $prepared = $this->db->prepare($stmt);
        $prepared->execute([$tagID]);

        $result = $prepared->fetchAll();
        return $result;
    }
}
