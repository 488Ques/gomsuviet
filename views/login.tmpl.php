<?php
require_once('modules/helpers.php');
?>

<section class="container-fluid mt-4">
    <?php
    include_once('views/msg.php');
    ?>

    <div class="row justify-content-center mx-auto" style="max-width: 40%;">
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" id="tab1" data-bs-toggle="tab" href="#user">Người mua</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="tab2" data-bs-toggle="tab" href="#merchant">Người bán</a>
            </li>
        </ul>

        <div class="tab-content mt-3">
            <div class="tab-pane fade show active" id="user">
                <form action="/controllers/login.ctl.php"
                      method="POST">
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" value="<?php echo getURLParameter('username') ?>">
                        <div class="form-text">Username không dài hơn 256 ký tự</div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" class="form-control" name="password">
                    </div>

                    <input type="submit" class="btn btn-primary w-100" value="Đăng nhập">
                </form>
            </div>

            <div class="tab-pane fade" id="merchant">
                <form action="/controllers/merchantLogin.ctl.php"
                      method="POST">
                    <div class="mb-3">
                        <label class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" value="<?php echo getURLParameter('username') ?>">
                        <div class="form-text">Username không dài hơn 256 ký tự</div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" class="form-control" name="password">
                    </div>

                    <input type="submit" class="btn btn-primary w-100" value="Đăng nhập">
                </form>
            </div>
        </div>
    </div>


</section>