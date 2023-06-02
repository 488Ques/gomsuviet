<?php
require_once('../include_path.php');

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate and sanitize the form inputs
    $productName = $_POST['product_name'] ?? '';
    $productPrice = $_POST['product_price'] ?? '';
    $productType = $_POST['product_type'] ?? '';
    $quantity = $_POST['quantity'] ?? '';
    $productDetails = $_POST['product_details'] ?? '';
    $pattern = $_POST['pattern'] ?? '';

    echo $productName . PHP_EOL;
    echo $productPrice . PHP_EOL;
    echo $productType . PHP_EOL;
    echo $quantity . PHP_EOL;
    echo $productDetails . PHP_EOL;
    echo $pattern . PHP_EOL;

    // Handle file upload
    $imageUploadDirectory = DIR_BASE . 'static/image/product_images/';
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
            $uploadedImagePaths[] = $destinationPath;
        }
    }

    exit;
}