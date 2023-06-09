<!-- TODO Directory -->

<!-- <div class="mt-4 container">
    <div class="row">
      <div class="col-12">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Di động</a></li>
            <li class="breadcrumb-item"><a href="#">Điện thoại thông minh</a></li>

            <li class="breadcrumb-item active" aria-current="page">Galaxy Z Flip4 Bespoke Studio</li>
          </ol>
        </nav>
      </div>
    </div>
  </div> -->

<div class="container mt-4">
    <div class="row">
        <!-- Product image slide -->
        <div class="col-md-5 col-12">
            <div id="productSlide" class="carousel slide" data-bs-ride="true">
                <div class="carousel-inner">
                    <?php
                    $carouselItem = '
                    <div class="carousel-item %s">
                        <img src="%s" class="d-block w-100">
                    </div>';

                    foreach ($images as $i => $image) {
                        // Only put 'active' CSS class on the first carousel item
                        // so the carousel can work properly
                        echo(sprintf($carouselItem, $i == 0 ? 'active' : '', $image['url']));
                    }
                    ?>
                </div>

                <div id="productThumbnails" class="row mt-4">
                    <?php
                    $carouselThumb = '
                    <div class="col-3" data-bs-target="#productSlide" data-bs-slide-to="%d">
                        <img class="img-fluid" src="%s">
                    </div>';

                    foreach ($images as $i => $image) {
                        echo(sprintf($carouselThumb, $i, $image['url']));
                    }
                    ?>
                </div>
            </div>
        </div>

        <!-- Product name, description, order button, ... -->
        <div class="col-md-7 col-12">
            <div class="ps-lg-10 mt-6 mt-md-0">
                <h2 class="mb-1 fw-semibold"><?php echo $prod->name ?></h1>

                    <div class="fs-4">
                        <span class="fw-bold text-dark"><?php echo(number_format($prod->price) . " VNĐ"); ?></span>
                        <span>Merchant ID: <?php echo($prod->merchant_id) ?></span>
                        <!-- TODO Discount -->
                        <!-- <span class="text-decoration-line-through text-muted">$35</span>
            <span><small class="fs-6 ms-2 text-danger">26% Off</small></span> -->
                    </div>

                    <!-- <hr class="my-6"> -->

                    <div class="mt-6 row">
                        <form class="col-md-4" method="POST" action="/controllers/cart.ctl.php">
                            <button class="btn btn-primary w-100" type="submit">
                                <i class="bi bi-cart-plus"></i>
                                Thêm vào giỏ hàng
                            </button>

                            <input type="hidden" value="add" name="action">
                            <input type="hidden" value="<?php echo $prod->id; ?>" name="id">
                            <input type="hidden" value="<?php echo $prod->merchant_id; ?>" name="merchant_id">
                            <input type="hidden" value="<?php echo $prod->name; ?>" name="name">
                            <input type="hidden" value="<?php echo $prod->price; ?>" name="price">
                            <input type="hidden" value="1" name="quantity">
                            <input type="hidden" value="<?php echo $thumbnail ?>" name="url">
                        </form>

                        <!-- TODO Wishlist -->
                        <a class="col-md-1 col-12 btn btn-light" data-bs-toggle="tooltip" data-bs-html="true"
                           aria-label="Wishlist">
                            <i class="bi bi-heart"></i>
                        </a>

                        <div class="col-md-4 col-12">
                            <div class="dropdown">
                                <a class="btn btn-outline-secondary dropdown-toggle w-100" href="#" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Share
                                </a>

                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#"><i
                                                    class="bi bi-facebook me-2"></i>Facebook</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="bi bi-twitter me-2"></i>Twitter</a>
                                    </li>
                                    <li><a class="dropdown-item" href="#"><i class="bi bi-instagram me-2"></i>Instagram</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div>

                    <hr class="my-6">

                    <div>
                        <table class="table table-borderless">
                            <tbody>
                            <?php
                            $tableRow = '
                                <tr>
                                    <td>%s</td>
                                    <td>%s</td>
                                </tr>';

                            foreach ($specsJSON as $attr => $val) {
                                echo sprintf($tableRow, $attr, $val);
                            }
                            ?>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>

        <div class="review-section mt-4">
            <?php include_once(DIR_BASE . 'views/msg.php'); ?>

            <!-- Add a review form -->
            <?php if (isset($_SESSION['user'])): ?>
                <h4>Hãy để lại đánh giá</h4>
                <form class="mb-4" action="/controllers/rating.ctl.php" method="POST">
                    <div class="mb-3">
                        <label for="comment" class="form-label">Comment</label>
                        <textarea class="form-control" id="comment" name="comment" rows="3" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="rating" class="form-label">Điểm</label>
                        <div class="rating">
                            <input type="radio" id="star5" name="rating" value="5" required>
                            <label class="me-2" for="star5" title="5 stars">
                                5 <span class="bi bi-star-fill"></span>
                            </label>
                            <input type="radio" id="star4" name="rating" value="4" required>
                            <label class="me-2" for="star4" title="4 stars">
                                4 <span class="bi bi-star-fill"></span>
                            </label>
                            <input type="radio" id="star3" name="rating" value="3" required>
                            <label class="me-2" for="star3" title="3 stars">
                                3 <span class="bi bi-star-fill"></span>
                            </label>
                            <input type="radio" id="star2" name="rating" value="2" required>
                            <label class="me-2" for="star2" title="2 stars">
                                2 <span class="bi bi-star-fill"></span>
                            </label>
                            <input type="radio" id="star1" name="rating" value="1" required>
                            <label class="me-2" for="star1" title="1 star">
                                1 <span class="bi bi-star-fill"></span>
                            </label>
                        </div>
                    </div>

                    <input type="hidden" name="product_id" value=<?php echo "$prod->id" ?>>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            <?php endif; ?>

            <!-- Existing reviews -->
            <h3>Đánh giá cho sản phẩm này</h3>
            <hr>
            <div class="existing-reviews">
                <?php if (empty($ratings)): ?>
                    <p class="no-reviews fw-bold">Hiện chưa có đánh giá</p>
                <?php else: ?>
                    <?php foreach ($ratings as $rating): ?>
                        <div class="review">
                            <div class="review-header">
                                <h5 class="review-username"><?php echo $rating->username; ?></h5>
                                <div class="review-rating">
                                    <?php for ($i = 1; $i <= 5; $i++): ?>
                                        <?php if ($i <= $rating->rating): ?>
                                            <span class="bi bi-star-fill"></span>
                                        <?php else: ?>
                                            <span class="bi bi-star"></span>
                                        <?php endif; ?>
                                    <?php endfor; ?>
                                </div>
                            </div>
                            <p class="review-comment"><?php echo $rating->comment; ?></p>
                        </div>
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>

        </div>
    </div>
</div>