<?php
class product_image
{
    var $id;
    var $url;
    var $product_id;
    var $is_thumbnail;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_id,
        $_url,
        $_product_id,
        $_is_thumbnail,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->url = $_url;
        $this->product_id = $_product_id;
        $this->is_thumbnail = $_is_thumbnail;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
