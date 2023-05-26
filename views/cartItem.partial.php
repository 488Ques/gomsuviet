<!-- Item-->
<div class="d-sm-flex justify-content-between align-items-center my-2 pb-3 border-bottom">
    <div class="d-block d-sm-flex align-items-center text-center text-sm-start">
        <a class="d-inline-block flex-shrink-0 mx-auto me-sm-4" href="<?php echo '/detail.php?id=' . $prod['id']; ?>">
            <img src="<?php echo $prod['url']; ?>" alt="Product" width="160">
        </a>

        <div class="pt-2">
            <h3 class="mb-2">
                <a class="text-decoration-none" href="<?php echo '/detail.php?id=' . $prod['id']; ?>">
                    <?php echo $prod['name']; ?>
                </a>
            </h3>
            <div class="pt-2"><?php echo number_format($prod['price']); ?> VNĐ</div>
        </div>
    </div>

    <div class="pt-2 pt-sm-0 ps-sm-3 mx-auto mx-sm-0 text-center text-sm-start" style="max-width: 9rem;">
        <form method="POST" action="/controllers/cart.ctl.php">
            <input class="form-control form-control-sm" type="submit" value="-" name="action">
            <div class="my-1 py-1 border text-center"><?php echo $prod['quantity']; ?></div>
            <input class="form-control form-control-sm" type="submit" value="+" name="action">

            <input type="hidden" value="<?php echo $prod['id']; ?>" name="id">
        </form>

        <form method="POST" action="/controllers/cart.ctl.php">
            <button class="btn btn-link px-0 text-danger text-decoration-none" type="submit">
                <i class="bi bi-x-circle"></i>
                <span>Xóa</span>
            </button>

            <input type="hidden" value="remove" name="action">
            <input type="hidden" value="<?php echo $prod['id']; ?>" name="id">
        </form>
    </div>
</div>