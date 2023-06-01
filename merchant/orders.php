<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'controllers/ordersViewView.ctl.php');

session_start();

OrdersViewController::Render();