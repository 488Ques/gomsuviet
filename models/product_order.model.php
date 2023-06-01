<?php

class productOrderModel
{
    protected PDO $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
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

    /**
     * @param int $merchantID
     * @return array<string, mixed>
     */
    public function getOrderInfoByMerchantID(int $merchantID): array
    {
        $sql = 'SELECT oi.id, p.id AS `product_id`, p.name, pi.url, u.username, oi.quantity
            FROM order_items AS oi
            INNER JOIN product AS p ON oi.product_id = p.id
            INNER JOIN product_order AS po ON oi.order_id = po.id
            INNER JOIN user AS u ON po.user_id = u.id
            INNER JOIN product_image as pi ON p.id = pi.product_id
            WHERE oi.merchant_id = :merchant_id 
            AND pi.is_thumbnail = 1
            AND confirmed_at IS NULL;';

        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':merchant_id', $merchantID, PDO::PARAM_INT);
        $stmt->execute();

        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $ordersInfo = [];
        foreach ($results as $result) {
            $ordersInfo[] = [
                'id' => $result['id'],
                'product_id' => $result['product_id'],
                'product_name' => $result['name'],
                'product_thumbnail' => $result['url'],
                'userUsername' => $result['username'],
                'quantity' => $result['quantity']
            ];
        }

        return $ordersInfo;
    }
}