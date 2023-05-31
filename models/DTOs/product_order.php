<?php
class product_order {
    public int $id;
    public int $user_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    /**
     * @param int $id
     * @param int $user_id
     * @param $created_at
     * @param $modified_at
     * @param $deleted_at
     */
    public function __construct(int $id, int $user_id, $created_at, $modified_at, $deleted_at)
    {
        $this->id = $id;
        $this->user_id = $user_id;
        $this->created_at = $created_at;
        $this->modified_at = $modified_at;
        $this->deleted_at = $deleted_at;
    }
}