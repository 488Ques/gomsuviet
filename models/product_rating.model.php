<?php
require_once(DIR_BASE . 'models/DTOs/product_rating.php');

class productRatingModel
{
    protected PDO $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

    public function getByProductID(int $productID): array
    {
        $query = "SELECT * FROM product_rating WHERE product_id = :product_id";
        $statement = $this->db->prepare($query);
        $statement->bindParam(':product_id', $productID, PDO::PARAM_INT);
        $statement->execute();

        $results = $statement->fetchAll(PDO::FETCH_ASSOC);
        $ratings = [];

        foreach ($results as $result) {
            $rating = new product_rating(
                $result['id'],
                $result['product_id'],
                $result['username'],
                $result['rating'],
                $result['comment'],
                $result['created_at']
            );

            $ratings[] = $rating;
        }

        return $ratings;
    }

    public function new(int $productID, string $username, int $rating, string $comment)
    {
        $query = "INSERT INTO product_rating (product_id, username, rating, comment)
                  VALUES (:product_id, :username, :rating, :comment)";

        $statement = $this->db->prepare($query);
        $statement->bindParam(':product_id', $productID, PDO::PARAM_INT);
        $statement->bindParam(':username', $username, PDO::PARAM_STR);
        $statement->bindParam(':rating', $rating, PDO::PARAM_INT);
        $statement->bindParam(':comment', $comment, PDO::PARAM_STR);

        return $statement->execute();
    }
}
