<?php

class product
{
    var $id;
    var $merchant_id;
    var $name;
    var $description;
    var $price;
    var $specs_id;
    var $created_at;
    var $modified_at;
    var $deleted_at;

    /**
     * @param $id
     * @param $merchant_id
     * @param $name
     * @param $description
     * @param $price
     * @param $specs_id
     * @param $created_at
     * @param $modified_at
     * @param $deleted_at
     */
    public function __construct($id, $merchant_id, $name, $description, $price, $specs_id, $created_at, $modified_at, $deleted_at)
    {
        $this->id = $id;
        $this->merchant_id = $merchant_id;
        $this->name = $name;
        $this->description = $description;
        $this->price = $price;
        $this->specs_id = $specs_id;
        $this->created_at = $created_at;
        $this->modified_at = $modified_at;
        $this->deleted_at = $deleted_at;
    }


}