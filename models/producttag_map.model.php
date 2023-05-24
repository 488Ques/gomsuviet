<?php
class productTagMapModel
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    // Return an array of product ID whose tags match all tags in $tags 
    public function matchTags($tags)
    {
        $stmt = '';
        for ($i = 0; $i < count($tags); $i++) {
            if ($i == count($tags) - 1) {
                $stmt = $stmt . 'SELECT map.product_id FROM producttag_map map WHERE tag_id = ?;';
                break;
            }
            $stmt = $stmt . 'SELECT map.product_id FROM producttag_map map WHERE tag_id = ? INTERSECT ';
        }

        $prepared = $this->db->prepare($stmt);
        $prepared->execute($tags);

        $prodIDs = array();
        while ($temp = $prepared->fetch()) {
            array_push($prodIDs, $temp['product_id']);
        }

        return $prodIDs;
    }
}
