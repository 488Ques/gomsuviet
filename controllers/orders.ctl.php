<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'modules/db.php');
require_once(DIR_BASE . 'models/order_items.model.php');

$id = $_POST['id'];
$orderItemsModel = new orderItemsModel(DB());

$orderItemsModel->confirmOrderItem($id);

// Redirect back to the referring page
header('Location: ' . $_SERVER['HTTP_REFERER']);
exit();