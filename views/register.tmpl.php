<?php
require_once('modules/helpers.php');
?>

<section class="container-fluid mt-4">
    <?php include_once('views/msg.php'); ?>

    <form class="row justify-content-center mx-auto" style="max-width: 40%;" action="/controllers/register.ctl.php" method="POST">
        <div class="mb-3">
            <label class="form-label">Username <span class="text-danger fw-bold">*</span></label>
            <input type="text" class="form-control" name="username" value="<?php echo getURLParameter('username') ?>">
            <div class="form-text">Username không dài hơn 256 ký tự</div>
        </div>

        <div class="mb-3">
            <label class="form-label">Password <span class="text-danger fw-bold">*</span></label>
            <input type="password" class="form-control" name="password">
        </div>

        <label class="form-label">Họ và tên</label>
        <div class="input-group mb-3">
            <input type="text" class="form-control me-2" placeholder="Họ" name="last_name" value="<?php echo getURLParameter('last_name') ?>">
            <input type="text" class="form-control" placeholder="Tên" name="first_name" value="<?php echo getURLParameter('first_name') ?>">
        </div>

        <div class="mb-3">
            <label class="form-label">Email <span class="text-danger fw-bold">*</span></label>
            <input type="email" class="form-control" placeholder="abc@xyz.com" name="email_address" value="<?php echo getURLParameter('email_address') ?>">
        </div>

        <div class="fw-bold my-2"><span class="text-danger">*</span> Bắt buộc</div>

        <input type="submit" class="btn btn-primary" value="Đăng kí">
    </form>
</section>