<?php
require_once('modules/cart.php');
$cart = $_SESSION['cart'] ?? array();
?>

<div class="container">
    <div class="row mt-4">
        <section class="col-lg-8">
            <?php
            foreach ($cart as $prod) {
                include('views/cartItem.partial.php');
            }
            ?>
        </section>

        <aside class="col-lg-4">
            <div class="bg-white rounded-3 shadow-lg p-4">
                <div class="py-2 px-xl-2">
                    <div class="text-center mb-4 pb-3 border-bottom">
                        <h5 class="mb-3 pb-1 font-SamsungOne">Tổng cộng</h5>
                        <h3 class="font-SamsungSharpSans"><?php echo number_format(sumPriceCart() ?? 0); ?> VNĐ</h3>
                    </div>
                    <a class="btn btn-primary btn-shadow d-block w-100 mt-4" href="<?php echo sumProdCart() ? '/checkout.php' : '#'; ?>">
                        Thanh toán
                    </a>
                </div>
            </div>
        </aside>
    </div>
</div>