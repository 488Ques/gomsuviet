<?php
class order_items {
    public int $id;
    public int $order_id;
    public int $product_id;
    public int $merchant_id;
    public int $quantity;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    /**
     * @param int $id
     * @param int $order_id
     * @param int $product_id
     * @param int $merchant_id
     * @param int $quantity
     * @param $created_at
     * @param $modified_at
     * @param $deleted_at
     */
    public function __construct(int $id, int $order_id, int $product_id, int $merchant_id, int $quantity, $created_at, $modified_at, $deleted_at)
    {
        $this->id = $id;
        $this->order_id = $order_id;
        $this->product_id = $product_id;
        $this->merchant_id = $merchant_id;
        $this->quantity = $quantity;
        $this->created_at = $created_at;
        $this->modified_at = $modified_at;
        $this->deleted_at = $deleted_at;
    }
}
