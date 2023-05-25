<div class="container">
    <!-- Filter options -->
    <div class="row gx-10 mt-4">
        <aside class="col-lg-3 col-md-4 mb-6 mb-md-0">
            <form method="GET" action="/search.php">
                <div>
                    <input class="form-control" type="text" placeholder="Nhập tên sản phẩm" name='product_name'>
                </div>

                <div class="accordion accordion-flush my-2">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne">
                                Tags
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show">
                            <div class="accordion-body">
                                <?php
                                $checkbox = '
                                <div>
                                    <input class="form-check-input" type="checkbox" name="tag[]" value="%s">
                                    <label class="form-check-label">
                                        %s
                                    </label>
                                </div>';

                                foreach ($tags as $tag) {
                                    echo sprintf($checkbox, $tag->id, $tag->name);
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="accordion accordion-flush my-2">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo">
                                Giá
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse">
                            <div class="accordion-body">
                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="2000000">
                                    <label class="form-check-label">
                                        Trên 2 triệu
                                    </label>
                                </div>

                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="3000000">
                                    <label class="form-check-label">
                                        Trên 3 triệu
                                    </label>
                                </div>

                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="5000000">
                                    <label class="form-check-label">
                                        Trên 5 triệu
                                    </label>
                                </div>

                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="10000000">
                                    <label class="form-check-label">
                                        Trên 10 triệu
                                    </label>
                                </div>

                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="20000000">
                                    <label class="form-check-label">
                                        Trên 20 triệu
                                    </label>
                                </div>

                                <div>
                                    <input class="form-check-input" type="radio" name="lower_price" value="30000000">
                                    <label class="form-check-label">
                                        Trên 30 triệu
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <input class="btn btn-primary" type="submit" value="Tìm kiếm">
            </form>
        </aside>

        <!-- Listing -->
        <section class="col-lg-9 col-md-12">
            <div class="row g-4 row-cols-xl-4 row-cols-lg-3 row-cols-2 row-cols-md-2 row-cols-sm-1 mt-2">
                <?php
                foreach ($prods as $prod) {
                    $url = SearchController::GetProductThumbnail($prod->id);
                    include(DIR_VIEWS . 'productCard.partial.php');
                }
                ?>
            </div>
        </section>
    </div>
</div>