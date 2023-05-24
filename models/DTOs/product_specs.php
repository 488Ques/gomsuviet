<?php
class product_specs
{
    var $id;
    var $specs;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    function __construct(
        $_id,
        $_specs,
        $_created_at,
        $_modified_at,
        $_deleted_at
    ) {
        $this->id = $_id;
        $this->specs = $_specs;
        $this->created_at = $_created_at;
        $this->modified_at = $_modified_at;
        $this->deleted_at = $_deleted_at;
    }

    function __toString()
    {
        return sprintf('%s - %s', $this->id, $this->specs);
    }
}
