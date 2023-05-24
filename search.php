<?php
require_once($_SERVER['DOCUMENT_ROOT'] . '/include_path.php');
require_once(DIR_CONTROLLERS . 'search.ctl.php');

$prods;
$tags;
$searchCtl = new searchController();
$searchCtl->invoke($prods, $tags);

$title = 'Danh sách sản phẩm';
$template = DIR_VIEWS . 'search.tmpl.php';

require_once(DIR_VIEWS . 'layout.php');
