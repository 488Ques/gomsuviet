<?php
function buildProductCard($url, $name, $price, $id)
{
    return '
        <div class="col-md-3 col-sm-6 col-12">
            <div class="card card-product mb-3">
                <a href="/detail.php?id=' . $id . '">
                    <img class="card-img-top" src="' . $url . '" alt="">
                </a>
                <div class="card-body text-center">
                    <a href="/detail.php?id=' . $id . '" class="text-decoration-none">
                        <h5 class="card-title product-title">' . $name . '</h5>
                    </a>
                    
                    <div class="card-text product-price">
                        <span class="del-price">' . $price . ' VNĐ</span>
                    </div>
                    <a href="/detail.php?id=' . $id . '" class="btn btn-primary">Xem chi tiết</a>
                </div>
            </div>
        </div>';
}
?>

<!--<div id="productCarousel" class="carousel slide" data-bs-ride="carousel">-->
<!--    <div class="carousel-indicators">-->
<!--        <button type="button" data-bs-target="#productCarousel" data-bs-slide-to="0" class="active" aria-current="true"-->
<!--                aria-label="Slide 1"></button>-->
<!--        <button type="button" data-bs-target="#productCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>-->
<!--        <button type="button" data-bs-target="#productCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>-->
<!--    </div>-->
<!--    <div class="carousel-inner font-SamsungOne darkened">-->
<!--        <div class="carousel-item active">-->
<!--            <img src="/static/image/index/1.webp" class="d-block w-100">-->
<!--            <div class="carousel-caption">-->
<!--                <h5>Samsung Galaxy A03</h5>-->
<!--                <p>Ưu đãi đến <b>5 triệu</b>, hỗ trợ <b>5 triệu</b> thu cũ đổi mới và giảm thêm <b>1 triệu</b> khi thanh-->
<!--                    toán-->
<!--                    trước.</p>-->
<!--                <p><a href="/detail.php?id=1" class="rounded-pill px-4 btn btn-primary">Mua ngay</a></p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="carousel-item">-->
<!--            <img src="/static/image/index/2.webp" class="d-block w-100">-->
<!--            <div class="carousel-caption">-->
<!--                <h5>Tủ lạnh Panasonic Inverter</h5>-->
<!--                <p>Giữ thực phẩm tươi lâu và tiết kiệm điện gấp 2 lần.</p>-->
<!--                <p><a href="/detail.php?id=49" class="rounded-pill px-4 btn btn-primary">Mua ngay</a></p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <div class="carousel-item">-->
<!--            <img src="/static/image/index/3.webp" class="d-block w-100">-->
<!--            <div class="carousel-caption">-->
<!--                <h5>Samsung Galaxy Tab A7</h5>-->
<!--                <p>Mang đến sự thay đổi hoàn toàn, hoàn thiện tỉ mỉ trong từng đường nét, bền bỉ vượt thời gian.</p>-->
<!--                <p><a href="/detail.php?id=17" class="rounded-pill px-4 btn btn-primary">Mua ngay</a></p>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<!--    <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">-->
<!--        <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<!--        <span class="visually-hidden">Previous</span>-->
<!--    </button>-->
<!--    <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">-->
<!--        <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<!--        <span class="visually-hidden">Next</span>-->
<!--    </button>-->
<!--</div>-->


<div class="container">
    <div class="row mt-5">
        <h2 class="list-product-title">Ấm chén bát tràng</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($phones as $phone) {
                    echo buildProductCard($phone['url'], $phone['name'], number_format($phone['price']), $phone['id']);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <h2 class="list-product-title">Bình hút tài lộc</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($tablets as $tablet) {
                    echo buildProductCard($tablet['url'], $tablet['name'], number_format($tablet['price']), $tablet['id']);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <h2 class="list-product-title">Tranh gốm sứ</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($laptops as $laptop) {
                    echo buildProductCard($laptop['url'], $laptop['name'], number_format($laptop['price']), $laptop['id']);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <h2 class="list-product-title">Bộ đồ thờ cúng</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($acs as $ac) {
                    echo buildProductCard($ac['url'], $ac['name'], number_format($ac['price']), $ac['id']);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <h2 class="list-product-title">Đèn dầu thờ</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($fridges as $fridge) {
                    echo buildProductCard($fridge['url'], $fridge['name'], number_format($fridge['price']), $fridge['id']);
                }
                ?>
            </div>
        </div>
    </div>

    <div class="row mt-5">
        <h2 class="list-product-title">Cốc, tách</h2>
        <div class="product-group">
            <div class="row">
                <?php
                foreach ($washers as $washer) {
                    echo buildProductCard($washer['url'], $washer['name'], number_format($washer['price']), $washer['id']);
                }
                ?>
            </div>
        </div>
    </div>
</div>