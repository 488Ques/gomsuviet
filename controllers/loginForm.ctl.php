<?php
class LoginFormController
{
    public static function Render(): void
    {
        $title = 'Đăng nhập';
        $template = 'views/login.tmpl.php';

        require_once('views/layout.php');
    }
}