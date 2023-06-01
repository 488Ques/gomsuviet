<?php
require_once("../include_path.php");
require_once(DIR_BASE . 'models/DTOs/order_items.php');

class orderItemsModel
{
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

    public function confirmOrderItem(int $orderItemId): bool
    {
        $sql = 'UPDATE order_items SET confirmed_at = CURRENT_TIMESTAMP WHERE id = :order_item_id';

        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':order_item_id', $orderItemId, PDO::PARAM_INT);
        $result = $stmt->execute();

        return $result;
    }
}