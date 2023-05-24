<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_CONTROLLERS . 'index.ctl.php');

$title = 'Trang chủ';
$template = DIR_VIEWS . 'index.tmpl.php';
$indexController = new indexController();

require_once(DIR_VIEWS . 'layout.php');
