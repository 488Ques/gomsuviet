<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'modules/db.php');
require_once(DIR_BASE . 'modules/helpers.php');
require_once(DIR_BASE . 'models/product_rating.model.php');

session_start();

$user = $_SESSION['user'];
$productRatingModel = new productRatingModel(DB());

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $productID = $_POST['product_id'];
    $username = $user['username'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    if (empties($rating, $comment)) {
        header('Location: ' . $_SERVER['HTTP_REFERER'] . '&msg=invalid');
        exit();
    }

    $productRatingModel->new($productID, $username, $rating, $comment);

    // Redirect back to the previous page
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit();
}