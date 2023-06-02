<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'modules/db.php');
require_once(DIR_BASE . 'modules/helpers.php');
require_once(DIR_BASE . 'models/product_specs.model.php');
require_once(DIR_BASE . 'models/product.model.php');
require_once(DIR_BASE . 'models/producttag_map.model.php');
require_once(DIR_BASE . 'models/product_image.model.php');

// Start session
session_start();

// Initialize models
$db = DB();
$productSpecsModel = new productSpecsModel($db);
$productModel = new productModel($db);
$productTagMapModel = new productTagMapModel($db);
$productImageModel = new productImageModel($db);

$merchant = $_SESSION['merchant'];

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate and sanitize the form inputs
    $productName = $_POST['product_name'] ?? '';
    $productPrice = $_POST['product_price'] ?? '';
    $productType = $_POST['product_type'] ?? '';

    $productDetailedType = $_POST['product_detailed_type'] ?? '';
    $productColor = $_POST['product_color'] ?? '';
    $quantity = $_POST['quantity'] ?? '';
    $productDetails = $_POST['product_details'] ?? '';
    $pattern = $_POST['pattern'] ?? '';

    if (empties($productName, $productPrice, $productType, $productDetailedType, $productColor, $quantity, $productDetails, $pattern)) {
        header('Location: /merchant/new-item.php?msg=new-item-fail');
        exit();
    }

    // Create a new product specification and retrieve the inserted specs ID
//    $specsID = $productSpecsModel->new($productDetailedType, $productColor, $quantity, $productDetails, $pattern);
//
//    // Create a new product and retrieve the inserted product ID
//    $productID = $productModel->new($merchant['id'], $productName, $productPrice, $specsID);
//
//    // Map the product to its corresponding tag using the product ID and tag ID
//    $productTagMapModel->map($productID, $productType);

    // Handle file upload
    $relativeUploadPath = 'static/image/product_images/';
    $imageUploadDirectory = DIR_BASE . $relativeUploadPath;
    $uploadedFiles = $_FILES['images'];
    $uploadedImagePaths = [];

    // Loop through each uploaded file
    for ($i = 0; $i < count($uploadedFiles['name']); $i++) {
        $imageName = $uploadedFiles['name'][$i];
        $imageTmpName = $uploadedFiles['tmp_name'][$i];
        $imageError = $uploadedFiles['error'][$i];
        $imageSize = $uploadedFiles['size'][$i];

        // Generate a unique filename for the uploaded image
        $uniqueFilename = uniqid() . '_' . $imageName;

        // Set the destination path for the uploaded image
        $destinationPath = $imageUploadDirectory . $uniqueFilename;

        // Move the uploaded image to the destination directory
        if (move_uploaded_file($imageTmpName, $destinationPath)) {
            // Store the uploaded image path for further processing or database insertion
            $uploadedImagePaths[] = $relativeUploadPath . $uniqueFilename;
        }
    }

    // Show failure message if there's no image
    if (count($uploadedImagePaths) == 0) {
        header('Location: /merchant/new-item.php?msg=new-item-fail');
        exit();
    }

    // Batch insert the product images into the product_image table, with the first image set as the thumbnail
//    $productImageModel->batchInsert($uploadedImagePaths, $productID);

    // Display success message
    header('Location: /merchant/new-item.php?msg=new-item-success');

    // DEBUG
//    echo '$productName = ' . $productName . '</br>';
//    echo '$productPrice = ' . $productPrice . '</br>';
//    echo '$productType = ' . $productType . '</br>';
//
//    echo '$productDetailedType = ' . $productDetailedType . '</br>';
//    echo '$productColor = ' . $productColor . '</br>';
//    echo '$quantity = ' . $quantity . '</br>';
//    echo '$productDetails = ' . $productDetails . '</br>';
//    echo '$pattern = ' . $pattern . '</br>';
//
//    echo 'Last inserted ID of specs: ' . $specsID . '</br>';
//    echo 'Last inserted ID of product: ' . $productID . '</br>';
//
//    echo 'Merchant ID: ' . $merchant['id'] . '</br>';
//
//    echo var_dump($uploadedImagePaths) . "</br>";

    exit();
}