<?php

class productOrderModel
{
    protected PDO $db;

    public function __construct(PDO $db)
    {
        $this->db->prepare('INSERT INTO ')
    }

    /**
     * @param int $userID
     * @return false|int ID of the newly created order, or false on failure
     */
    public function newOrder(int $userID): false|int
    {
        // Prepare the SQL statement to insert a new order
        $stmt = $this->db->prepare('INSERT INTO `product_order` (`user_id`) VALUES (:userID)');

        // Bind the parameter values
        $stmt->bindParam(':userID', $userID);

        // Execute the query
        if ($stmt->execute()) {
            // Return the ID of the newly created order
            return (int)$this->db->lastInsertId();
        } else {
            // Return false if the query execution failed
            return false;
        }
    }
}