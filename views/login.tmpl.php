<?php
require_once('modules/helpers.php');
?>

<section class="container-fluid mt-4">
    <?php
    include_once('views/msg.php');
    ?>

    <form class="row justify-content-center mx-auto" style="max-width: 40%;" action="/controllers/login.ctl.php" method="POST">
        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" class="form-control" name="username" value="<?php echo getURLParameter('username') ?>">
            <div class="form-text">Username không dài hơn 256 ký tự</div>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <input type="password" class="form-control" name="password">
        </div>

        <input type="submit" class="btn btn-primary" value="Đăng nhập">
    </form>
</section>