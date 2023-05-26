<?php
require_once('../modules/cart.php');

session_start();

emptyCart();
header('Location: /checkout.php?msg=payment-success');
exit();
