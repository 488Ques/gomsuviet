<div class="wrapper">
    <div class="content">
        <div class="mx-5">
            <form method="POST" action="/controllers/newItem.ctl.php" enctype="multipart/form-data">
                <div class="Product-section">
                    <h2>Thông tin cơ bản</h2>
                    <hr>

                    <div class="Product-content add-image">
                        <!-- Image Upload -->
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Hình ảnh sản phẩm </span>
                        </div>
                        <div id="image-container">
                            <button type="button" class="btn btn-outline-primary">
                                <label for="image-upload" id="image-label">
                                    <i class="fa-solid fa-image"></i>
                                    Thêm hình
                                </label>
                            </button>
                            <input type="file" id="image-upload" name="images[]" accept="image/*" multiple
                                   style="display: none; height:50px">
                            <div id="image-preview"></div>
                        </div>

                        <script>
                            const imageUpload = document.getElementById('image-upload');
                            const imagePreview = document.getElementById('image-preview');

                            imageUpload.addEventListener('change', (event) => {
                                imagePreview.innerHTML = ''; // Clear previous previews

                                for (let i = 0; i < event.target.files.length; i++) {
                                    const file = event.target.files[i];
                                    const reader = new FileReader();

                                    reader.onload = (event) => {
                                        const image = document.createElement('img');
                                        image.src = event.target.result;
                                        image.style.height = "100px"; // Set the desired height
                                        image.style.marginRight = "10px"; // Add some spacing between images
                                        imagePreview.appendChild(image);
                                    };

                                    reader.readAsDataURL(file);
                                }
                            });
                        </script>
                    </div>

                    <!-- Product Name -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Tên sản phẩm </span>
                        </div>
                        <input type="text" class="form-control inp" name="product_name" placeholder="Nhập vào">
                    </div>

                    <!-- Product Price -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Giá bán</span>
                        </div>
                        <input type="number" class="form-control inp" name="product_price" placeholder="vd: 200000">
                    </div>

                    <!-- Product Type -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Loại sản phẩm </span>
                        </div>
                        <div class="form-floating inp">
                            <select class="form-select" id="floatingSelect" name="product_type"
                                    aria-label="Floating label select example">
                                <option value="1">Ấm chén bát tràng</option>
                                <option value="2">Bình hút tài lộc</option>
                                <option value="3">Tranh gốm sứ</option>
                                <option value="4">Bộ đồ thờ cúng</option>
                                <option value="5">Đèn dầu thờ</option>
                                <option value="6">Cốc, tách</option>
                            </select>
                            <label for="floatingSelect">Chọn loại sản phẩm</label>
                        </div>
                    </div>

                    <!-- Quantity -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Số món</span>
                        </div>
                        <input type="number" class="form-control inp product-details" name="quantity"
                               placeholder="Số lượng">
                    </div>

                    <!-- Product Details -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Chi tiết các món </span>
                        </div>
                        <input type="text" class="form-control inp" name="product_details"
                               placeholder="vd: 1 ấm, 3 chén,..">
                    </div>

                    <!-- Pattern -->
                    <div class="Product-content">
                        <div class="name">
                            <span class="icon">*</span>
                            <span class="text">Hoa văn </span>
                        </div>
                        <input type="text" class="form-control inp" name="pattern" placeholder="vd: sen hồng,..">
                    </div>

                    <!-- Buttons -->
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end mb-4">
                        <button class="btn btn-group" type="reset">Huỷ</button>
                        <button class="btn btn-primary btn-group" type="submit">Lưu</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>