<?php
class product_rating
{
    public int $id;
    public int $product_id;
    public string $username;
    public int $rating;
    public string $comment;
    var $created_at;

    /**
     * @param int $id
     * @param int $product_id
     * @param string $username
     * @param int $rating
     * @param string $comment
     * @param $created_at
     */
    public function __construct(int $id, int $product_id, string $username, int $rating, string $comment, $created_at)
    {
        $this->id = $id;
        $this->product_id = $product_id;
        $this->username = $username;
        $this->rating = $rating;
        $this->comment = $comment;
        $this->created_at = $created_at;
    }
}