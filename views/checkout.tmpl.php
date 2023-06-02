<?php
require_once('modules/cart.php');
$cart = $_SESSION['cart'];
?>

<section class="container mt-5">
    <div class="row g-5">
        <div class="col-md-5 col-lg-4 order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
                <span class="text-primary">Giỏ hàng</span>
                <span class="badge bg-primary rounded-pill"><?php echo Cart::sumCartQuantity() ? Cart::sumCartQuantity() : 0; ?> </span>
            </h4>
            <ul class="list-group mb-3">
                <?php
                $li = '
                <li class="list-group-item d-flex justify-content-between lh-sm">
                    <div>
                        <h6 class="my-0">%s</h6>
                    </div>
                    <span class="text-muted">%s VNĐ</span>
                </li>';
                foreach ($cart as $prod) {
                    /** @var CartItem $item */
                    $item = unserialize($prod);
                    echo sprintf($li, $item->name, number_format($item->price));
                }
                ?>

                <li class="list-group-item d-flex justify-content-between">
                    <span>Tổng cộng (VNĐ)</span>
                    <strong><?php echo number_format(Cart::sumCartPrice() ?? 0); ?> VNĐ</strong>
                </li>
            </ul>
        </div>

        <div class="col-md-7 col-lg-8">
            <?php include_once('views/msg.php'); ?>

            <h4 class="mb-3">Chọn địa chỉ nhận hàng</h4>
            <form method="POST" action="/controllers/checkout.ctl.php"  novalidate="" class="needs-validation">
                <div class="row g-3">
                    <div class="col-sm-6">
                        <label class="form-label">Họ</label>
                        <input type="text" class="form-control" placeholder="" value="" required="">
                        <div class="invalid-feedback">
                            Vui lòng nhập họ.
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <label for="firstName" class="form-label">Tên</label>
                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required="">
                        <div class="invalid-feedback">
                            Vui lòng nhập tên.
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="email" class="form-label">Email <span class="text-muted">(Không bắt buộc)</span></label>
                        <input type="email" class="form-control" id="email" placeholder="you@example.com">
                        <div class="invalid-feedback">
                            Yêu cầu nhập địa chỉ email đúng để gửi thông tin cập nhật về giao hàng
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="address" class="form-label">Địa chỉ giao hàng</label>
                        <input type="text" class="form-control" id="address" placeholder="100 Đường số 12..." required="">
                        <div class="invalid-feedback">
                            Vui lòng nhập địa chỉ giao hàng
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Quận</label>
                        <select class="form-select" required="">
                            <option value="">Chọn Quận</option>
                            <option>Quận 1</option>
                            <option>Quận 2</option>
                        </select>
                        <div class="invalid-feedback">
                            Vui lòng chọn quận.
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Phường</label>
                        <select class="form-select" required="">
                            <option value="">Chọn Phường</option>
                            <option>Phường Tân Thịnh</option>
                            <option>Phường Đakao</option>
                            <option>Phường Bến Nghé</option>
                            <option>Phường Thảo Điền</option>
                            <option>Phường An Phú</option>
                            <option>Phường Bình An</option>
                        </select>
                        <div class="invalid-feedback">
                            Vui lòng chọn phường.
                        </div>
                    </div>
                </div>

                <hr class="my-4">

                <h4 class="mb-3">Chọn hình thức thanh toán</h4>

                <div class="my-3">
                    <div class="form-check">
                        <input id="credit" type="radio" name="paymentMethod" class="form-check-input" checked="" required="">
                        <label class="form-check-label" for="credit">Thẻ tín dụng</label>
                    </div>
                    <div class="form-check">
                        <input id="debit" type="radio" name="paymentMethod" class="form-check-input" required="">
                        <label class="form-check-label" for="debit">Thẻ ATM/Internet banking</label>
                    </div>
                </div>

                <div class="row gy-3">
                    <div class="col-md-6">
                        <label for="cc-name" class="form-label">Họ tên chủ thẻ</label>
                        <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                        <small class="text-muted">Ví dụ: NGUYEN VAN A</small>
                        <div class="invalid-feedback">
                            Vui lòng nhập họ tên chủ thẻ
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label for="cc-number" class="form-label">Số thẻ</label>
                        <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                        <div class="invalid-feedback">
                            Vui lòng nhập số thẻ
                        </div>
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Tháng hết hạn</label>
                        <select class="form-select" name="" required="">
                            <option value="">Tháng</option>
                            <option value="">Tháng 1</option>
                            <option value="">Tháng 2</option>
                            <option value="">Tháng 3</option>
                            <option value="">Tháng 4</option>
                            <option value="">Tháng 5</option>
                            <option value="">Tháng 6</option>
                            <option value="">Tháng 7</option>
                            <option value="">Tháng 8</option>
                            <option value="">Tháng 9</option>
                            <option value="">Tháng 10</option>
                            <option value="">Tháng 11</option>
                            <option value="">Tháng 12</option>
                        </select>

                        <div class="invalid-feedback">
                            Vui lòng chọn tháng hết hạn của thẻ
                        </div>
                    </div>

                    <div class="col-md-4">
                        <label class="form-label">Năm hết hạn</label>
                        <select class="form-select" name="" required="">
                            <option value="">Năm</option>
                            <option value="">Năm 2022</option>
                            <option value="">Năm 2023</option>
                            <option value="">Năm 2024</option>
                            <option value="">Năm 2025</option>
                            <option value="">Năm 2026</option>
                            <option value="">Năm 2027</option>
                            <option value="">Năm 2028</option>
                            <option value="">Năm 2029</option>
                            <option value="">Năm 2030</option>
                        </select>

                        <div class="invalid-feedback">
                            Vui lòng chọn năm hết hạn của thẻ
                        </div>
                    </div>

                    <div class="col-md-4">
                        <label for="cc-cvv" class="form-label">CVV</label>
                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                        <div class="invalid-feedback">
                            Vui lòng nhập CVV
                        </div>
                    </div>
                </div>

                <hr class="my-4">

                <button class="w-100 btn btn-primary btn-lg" type="submit">Thanh toán</button>
            </form>
        </div>
    </div>
</section>

<script>
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })();
</script>