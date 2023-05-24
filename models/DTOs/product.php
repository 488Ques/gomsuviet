<?php
class product
{
    var $id;
    var $name;
    var $description;
    var $price;
    var $specs_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_id,
        $_name,
        $_description,
        $_price,
        $_specs_id,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->description = $_description;
        $this->price = $_price;
        $this->specs_id = $_specs_id;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
