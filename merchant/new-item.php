<?php
require_once('../include_path.php');
require_once(DIR_BASE . 'controllers/newItemView.ctl.php');

session_start();

NewItemViewController::Render();