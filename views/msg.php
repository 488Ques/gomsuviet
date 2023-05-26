<?php
function displayAlert($message, $color)
{
    $alrt = '<div class="alert %s" role="alert"> %s </div>';
    return sprintf($alrt, $color, $message);
}

$msg = $_GET['msg'] ?? "";
if ($msg != "") {
    switch ($msg) {
        case 'done':
            echo (displayAlert('Đăng ký thành công', 'alert-success'));
            break;
        case 'invalid':
            echo (displayAlert('Vui lòng kiểm tra lại dữ liệu nhập vào', 'alert-danger'));
            break;
        case 'duplicate':
            echo (displayAlert('Username đã tồn tại, xin vui lòng chọn username khác', 'alert-warning'));
            break;
        case 'login-fail':
            echo (displayAlert('Đăng nhập thất bại', 'alert-danger'));
            break;
        case 'payment-success':
            echo displayAlert('Thanh toán thành công', 'alert-success');
    }
}
