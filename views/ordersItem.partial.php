<?php
/** @var array $orderInfo */
?>

<!-- Item-->
<div class="d-sm-flex justify-content-between align-items-center my-2 pb-3 border-bottom">
    <div class="d-block d-sm-flex align-items-center text-center text-sm-start">
        <a class="d-inline-block flex-shrink-0 mx-auto me-sm-4" href="<?php echo '/detail.php?id=' . $orderInfo['product_id'] ?>">
            <img src="<?php echo $orderInfo['product_thumbnail'] ?>" alt="Product" width="160">
        </a>

        <div class="pt-2">
            <h3 class="mb-2">
                <a class="text-decoration-none" href="<?php echo '/detail.php?id=' . $orderInfo['product_id'] ?>">
                    <?php echo $orderInfo['product_name'] ?>
                </a>
            </h3>
            <div class="pt-2">Số lượng: <?php echo $orderInfo['quantity'] ?></div>
            <div>Người mua: <?php echo $orderInfo['userUsername'] ?></div>
        </div>
    </div>

    <div class="pt-2 pt-sm-0 ps-sm-3 mx-auto mx-sm-0 text-center text-sm-start" style="max-width: 9rem;">
        <form method="POST" action="/controllers/orders.ctl.php">
            <button class="btn btn-link px-0 text-success text-decoration-none" type="submit">
                <i class="bi bi-check-circle"></i>
                <span>Xác nhận đơn hàng</span>
            </button>

            <input type="hidden" value="<?php echo $orderInfo['id']; ?>" name="id">
        </form>
    </div>
</div>