<?php
class orderItemsModel {
    protected PDO $db;

    public function __construct(PDO $db)
    {
        $this->db = $db;
    }

    public function newOrderItem(CartItem $item, int $orderID)
    {
        $sql = "INSERT INTO order_items (order_id, product_id, merchant_id, quantity) 
                VALUES (:order_id, :product_id, :merchant_id, :quantity)";

        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':order_id', $orderID, PDO::PARAM_INT);
        $stmt->bindValue(':product_id', $item->product_id, PDO::PARAM_INT);
        $stmt->bindValue(':merchant_id', $item->merchant_id, PDO::PARAM_INT);
        $stmt->bindValue(':quantity', $item->quantity, PDO::PARAM_INT);

        $stmt->execute();

        return $this->db->lastInsertId();
    }
}