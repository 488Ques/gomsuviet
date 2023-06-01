<?php
require_once(DIR_BASE . 'modules/cart.php');
/** @var array $ordersInfo */
?>

<div class="container">
    <div class="row mt-4">
        <section>
            <?php if (!empty($ordersInfo)) : ?>
                <?php foreach ($ordersInfo as $orderInfo) : ?>
                    <?php include(DIR_BASE . 'views/ordersItem.partial.php'); ?>
                <?php endforeach; ?>
            <?php else : ?>
                <div class="alert alert-info text-center py-3" role="alert">
                    <i class="bi bi-info-circle me-2"></i>
                    Hiện không có đơn hàng nào.
                </div>
            <?php endif; ?>
        </section>
    </div>
</div>