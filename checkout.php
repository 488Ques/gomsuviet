<?php
require_once('include_path.php');
require_once('controllers/checkoutView.ctl.php');

session_start();

CheckoutViewController::Render();