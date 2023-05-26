<?php
class RegisterFormController
{
    public static function Render(): void
    {
        $title = 'Đăng kí';
        $template = 'views/register.tmpl.php';

        require_once('views/layout.php');
    }
}