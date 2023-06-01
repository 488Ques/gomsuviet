<?php
require_once('include_path.php');
require_once('controllers/cartView.ctl.php');

session_start();

CartViewController::Render();