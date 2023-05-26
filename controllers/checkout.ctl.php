<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_MODULES . 'cart.php');

session_start();

emptyCart();
header('Location: /checkout.php?msg=payment-success');
exit();
