<div class="col">
    <div class="card">
        <div class="card-body">
            <!-- badge -->
            <div class="text-center position-relative">
                <a href="<?php echo '/detail.php?id=' . $prod->id; ?>">
                    <img src="<?php echo $url; ?>" class="mb-3 img-fluid">
                </a>
            </div>

            <div class="text-muted mb-1">
                <small>
                    <?php
                    $prodTags = SearchController::GetProductTagsName($prod->id);
                    foreach ($prodTags as $i => $tag) {
                        if ($i == count($prodTags) - 1) {
                            echo $tag->name;
                            break;
                        }
                        echo $tag->name . ', ';
                    }
                    ?>
                </small>
            </div>

            <h2 class="fs-6">
                <a href="<?php echo '/detail.php?id=' . $prod->id; ?>" class="text-decoration-none">
                    <?php echo $prod->name; ?>
                </a>

                <div class="mt-2">
                    <?php echo number_format($prod->price) . ' VNĐ'; ?>
                    <!-- TODO Discount -->
                    <!-- <span class="text-decoration-line-through text-muted">$35</span> -->
                </div>
            </h2>

            <div>
                <form method="POST" action="/controllers/cart.ctl.php">
                    <button type="submit" class="btn btn-primary btn-sm">
                        <i class="bi bi-cart-plus"></i> Thêm
                    </button>

                    <input type="hidden" value="add" name="action">
                    <input type="hidden" value="<?php echo $prod->id; ?>" name="id">
                    <input type="hidden" value="<?php echo $prod->merchant_id; ?>" name="merchant_id">
                    <input type="hidden" value="<?php echo $prod->name; ?>" name="name">
                    <input type="hidden" value="<?php echo $prod->price; ?>" name="price">
                    <input type="hidden" value="1" name="quantity">
                    <input type="hidden" value="<?php echo $url; ?>" name="url">
                </form>
            </div>
        </div>
    </div>
</div>