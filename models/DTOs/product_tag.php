<?php
class product_tag
{
    var $id;
    var $name;
    var $description;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_id,
        $_name,
        $_description,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->name = $_name;
        $this->description = $_description;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }
}
