<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'controllers/orders.ctl.php');

session_start();

OrdersController::Render();