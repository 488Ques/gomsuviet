<?php

class NewItemViewController
{
    public static function Render(): void
    {
        $title = 'Đăng tin bán hàng';
        $template = DIR_BASE . 'views/newItem.tmpl.php';

        require_once(DIR_BASE . 'views/layout.php');
    }
}
