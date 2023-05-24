<?php
class producttag_map
{
    var $product_id;
    var $tag_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_product_id,
        $_tag_id,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->product_id = $_product_id;
        $this->tag_id = $_tag_id;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
