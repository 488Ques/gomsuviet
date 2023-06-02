<?php
require_once(DIR_BASE . 'modules/cart.php');
?>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="/">Gốm Sứ Việt</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mb-2 me-auto mb-lg-0">
                <li class="nav-item">
                    <form class="d-flex" action="/search.php">
                        <input type="text" name="product_name" class="form-control" placeholder="Nhập tên sản phẩm"/>
                        <button class="btn btn-outline-primary ms-2">
                            <i class="bi bi-search"></i>
                        </button>
                    </form>
                </li>
            </ul>

            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <div class="nav-link">
                        <i class="bi bi-list-ul me-1"></i>
                        Danh mục sản phẩm
                    </div>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/search.php?tag[]=1">Ấm chén bát tràng</a></li>
                        <li><a class="dropdown-item" href="/search.php?tag[]=2">Bình hút tài lộc</a></li>
                        <li><a class="dropdown-item" href="/search.php?tag[]=3">Tranh gốm sứ</a></li>
                        <li><a class="dropdown-item" href="/search.php?tag[]=4">Bộ đồ thờ cúng</a></li>
                        <li><a class="dropdown-item" href="/search.php?tag[]=5">Đèn dầu thờ</a></li>
                        <li><a class="dropdown-item" href="/search.php?tag[]=6">Cốc, tách</a></li>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/cart.php">
                        <i class="bi bi-cart-fill me-1"></i>
                        Giỏ hàng (<?php echo Cart::sumCartQuantity() ? Cart::sumCartQuantity() : 0; ?>)
                    </a>
                </li>

                <!-- User login/register/logout -->
                <li class="nav-item dropdown">
                    <a class="nav-link" href="#">
                        <i class="bi bi-person-circle me-1"></i>
                        <?php
                        if (!empty($_SESSION['user'])) {
                            echo $_SESSION['user']['username'];
                        } else if (!empty($_SESSION['merchant'])) {
                            echo $_SESSION['merchant']['username'];
                        } else {
                            echo 'Tài khoản';
                        }
                        ?>
                    </a>

                    <ul class="dropdown-menu">
                        <?php
                        if (!empty($_SESSION['user'])) {
                            echo '<li><a class="dropdown-item" href="/controllers/logout.ctl.php">Đăng xuất</a></li>';
                        } else if (!empty($_SESSION['merchant'])) {
                            echo '<li><a class="dropdown-item" href="/merchant/orders.php">Quản lý đơn hàng</a></li>';
                            echo '<li><a class="dropdown-item" href="/merchant/new-item.php">Đăng bán sản phẩm</a></li>';
                            echo '<li><a class="dropdown-item" href="/controllers/logout.ctl.php">Đăng xuất</a></li>';
                        } else {
                            echo '<li><a class="dropdown-item" href="/login.php">Đăng nhập</a></li>
                            <li><a class="dropdown-item" href="/register.php">Đăng kí</a></li>';
                        }
                        ?>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>