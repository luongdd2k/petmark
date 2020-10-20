<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <!-- Animate On Scroll -->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  
  
  <link rel="stylesheet" href="css/check-out.css">
  <link rel="stylesheet" href="css/styles.css" />

  <title>Pet Mart | Thanh toán</title>
</head>

<body>
  <header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <input type="hidden" id="usernameBE" value="" />
        <div class="row header__top" >
          <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
            <p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
          </div>
          <div id="row-login" class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
            <div class="header__actions">
              <a href="login.html">Đăng nhập</a>
              <a href="register.html">Đăng ký</a>
            </div>
          </div>
          <div id="row-logout" class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
            <div class="header__actions">
              <a href="" id="hello-name"></a>
              <a href="">Đăng xuất</a>
            </div>
          </div>
        </div>
        <nav class="nav">
          <div class="nav__hamburger">
            <svg>
              <use xlink:href="./images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

          <div class="nav__logo">
            <a href="index.html" class="scroll-link">
              PET MART
            </a>
          </div>

          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PET MART</span>
              <a href="index.html" class="close__toggle">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-cross"></use>
                </svg>
              </a>
            </div>
            <ul class="nav__list">
              <li class="nav__item">
                <a href="index.html" class="nav__link">Trang chủ</a>
              </li>
              <li class="nav__item">
                <a href="#category" class="nav__link">Sản phẩm</a>
              </li>
              <li class="nav__item">
                <a href="#" class="nav__link">Blog</a>
              </li>
              <li class="nav__item">
                <a href="#" class="nav__link">Liên hệ</a>
              </li>
            </ul>
          </div>

          <div class="nav__icons">
            <div id="location" class="hide"> 
              <a href="#" class="icon__item">
                <svg class="icon__user">
                  <use xlink:href="./images/sprite.svg#icon-location"></use>
                </svg>
              </a>
            </div>
            <div id="search-box" style="margin-right: 1rem;">
              <input class="form-control"  type="search" aria-label="Search" placeholder="Tìm kiếm ...">
            </div>
              <a href="#" class="icon__item">
                <svg class="icon__search">
                  <use xlink:href="./images/sprite.svg#icon-search"></use>
                </svg>
              </a>
            
            <div id="cart" class="hide"> 
              <a href="cart.html" class="icon__item">
                <svg class="icon__cart">
                  <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                </svg>
                <span id="cart__total">0</span>
              </a>
            </div>
          </div>
        </nav>
      </div>
    </div>

    <div class="page__title-area">
      <div class="container">
        <div class="page__title-container">
          <ul class="page__titles">
            <li>
              <a href="/">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-home"></use>
                </svg>
              </a>
            </li>
            <li class="page__title">Thanh toán</li>
          </ul>
        </div>
      </div>
    </div>
  </header>

  <main id="main">
    <div class="container">
        <div class="ps-checkout pt-20 pb-20">
        <div class="row">
            <div class="ps-container page-checkout col-12">
              <div  class="checkout-adress">
                <div class="border-delivery"></div>
                <div id="checkout-adress" class="checkout-adress__container">
                  <div class="checkout-adress__section-header">
                    <div class="checkout-adress__section-header-text">
                      <svg
                        height="16"
                        viewBox="0 0 12 16"
                        width="12"
                        class="shopee-svg-icon icon-location-marker"
                      >
                        <path
                          d="M6 3.2c1.506 0 2.727 1.195 2.727 2.667 0 1.473-1.22 2.666-2.727 2.666S3.273 7.34 3.273 5.867C3.273 4.395 4.493 3.2 6 3.2zM0 6c0-3.315 2.686-6 6-6s6 2.685 6 6c0 2.498-1.964 5.742-6 9.933C1.613 11.743 0 8.498 0 6z"
                          fill-rule="evenodd"
                        ></path>
                      </svg>
                      Địa chỉ nhận hàng
                    </div>
                  </div>
                  <div class="checkout-adress__select-adress-summary">
                    <div class="checkout-adress-row">
                      <div class="checkout-adress-row__user-detail">
                        <span>Trần Ngọc Hải </span> &nbsp;
                        <span> 0386768658 </span>
                      </div>
                      <div class="checkout-address-row__address-summary">
                       Số nhà 17, Đường An Trai, Xã Vân Canh, Huyện Hoài Đức, Hà Nội
                      </div>  
                      <div id="adress-edit" class="checkout-address-row__address-summary checkout-address-row__address-summary--edit">
                        <p onclick="doiDiaChi()" style="color: blue;">Thay đổi</p>
                       </div>     
                    </div>
                  </div>
                </div>
                <div id="edit-checkout-adress" class="edit-adress pt-20 pb-20 hide">
                    <form>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="formGroupExampleInput">Tên người nhận</label>
                                    <input type="text" class="form-control" id="nameRecive" >
                                  </div>
                                  <div class="form-group">
                                    <label for="formGroupExampleInput2">Số điện thoại</label>
                                    <input type="text" class="form-control" id="phoneRecive" >
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Địa chỉ nhận hàng</label>
                                    <textarea class="form-control" id="adressRecive" rows="3"></textarea>
                                  </div>
                            </div>
                        </div>
                        <div class="col-12" style="text-align: center;">
                            <button onclick="anDoiDiaChi()" type="button" class="btn btn-outline-primary" style="font-size: 15px; width: 80px;">
                                Lưu
                            </button>  
                        </div>
                      </form>
                    
                </div>
              </div>
              <div class="checkout-producrt-order-list">
                <div class="checkout-product-order-list__header-block">
                  <div class="checkout-product-order-list__headers">
                    <div class="checkout-product-ordered-list__header checkout-product-ordered-list__header--product">
                      <div class="checkout-product-ordered-list__title">Sản phẩm</div>
                    </div>
                    <div class="checkout-product-ordered-list__header checkout-product-ordered-list__header--variation"></div>
                    <div class="checkout-product-ordered-list__header checkout-product-ordered-list__header--price">Đơn giá</div>
                    <div class="checkout-product-ordered-list__header checkout-product-ordered-list__header--amount">Số lượng</div>
                    <div class="checkout-product-ordered-list__header checkout-product-ordered-list__header--subtotal">Thành tiền</div>
                  </div>
                </div>
                <div class="checkout-product-order-list__content">
                  <div class="checkout-order-group">
                    <div class="chockout-order-group__orders">
                      <div class="checkout-product-ordered-list-item">
                        <div class="checkout-product-ordered0list-item__items">
                          <div class="checkout-product-ordered-list-item__item checkout-product-ordered-list-item__item--non-add-on">
                            <div class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--product">
                              <img class="checkout-product-ordered-list-item__product-image img-fluid" src="https://vn-live-01.slatic.net/p/fab431d28976ce60654b4fbfce556207.jpg" width="90" height="90">
                              <span class="checkout-product-ordered-list-item__product-info">
                                <span class="checkout-product-ordered-list-item__product-name">Vòng cổ chuông cho mèo</span>
                                <div></div>
                              </span>
                            </div>
                            <div class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--variation">
                              <span class="checkout-product-ordered-list-item__variation">Loại: </span>
                            </div>
                            <div class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--price">140000 đ</div>
                            <div class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--amount">3</div>
                            <div class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--subtotal">420000 đ</div>
                          </div> 
                        </div>
                      </div>
                    </div>
                    <div class="_2iOh5B">
                      <div class="_2hlLyg"></div>
                      <div class="_7IQQY9"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="page-checkout__payment-order-wrapper">
                <div class="checkout-payment-method-view">
                  <div class="checkout-payment-method-view__current checkout-payment-setting">
                    <div class="checkout-payment-method-view__current-title checkout-payment-method-view__current-title--wide-block">Phương thức thanh toán</div>
                  </div>
                  <div class="styles__StyledPaymentMethods">
                    <ul class="list">
                      <li class="fTvtIP">
                        <label class="RadioCheckout__StyledRadio-bkaeis-0 bqACGT">
                          <input type="radio"  name="payment-methods" value="cod" checked>
                          <span class="radio-fake" onclick="amVNPay()"></span>
                          <img src="https://png.pngtree.com/png-clipart/20200224/original/pngtree-pack-cash-icon-cartoon-style-png-image_5208194.jpg" alt="money" class="card-img" width="44">
                          <span class="label">Thanh toán tiền mặt khi nhận hàng</span>
                        </label>
                      </li>
                      <li class="fTvtIP">
                        <label class="RadioCheckout__StyledRadio-bkaeis-0 bqACGT">
                          <input type="radio"  name="payment-methods" value="vnpay" >
                          <span  class="radio-fake" onclick="showVNPay()"></span>
                          <img src="https://vnpayment.vnpay.vn/Resources/website/images/vnpayqr.png" alt="vnpay" class="card-img" width="44">
                          <span class="label">Thanh toán bằng VN Pay</span>
                        </label>
                      </li>
                    </ul>
                  </div>
                  <div class="checkout-payment-setting__payment-method-options">
                    <div class="bank-transfer-category hide" id="form-vnpay">
                      <div class="bank-transfer-category__body">
                          <form class="vnpay-form" action="">
                            <div class="form-flexs">
                              <div class="form-group">
                                  <label for="language">Loại dịch vụ </label>
                                  <select name="ordertype" id="ordertype" class="form-control form-vnpay">
                                      <option value="billpayment">Thanh toán hóa đơn</option>
                                      <option value="topup">Nạp tiền điện thoại</option>
                                      <option value="fashion">Thời trang</option>
                                  </select>
                              </div>
                              <div class="form-group">
                                  <label for="amount">Số tiền</label>
                                  <input class="form-control form-vnpay" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required." id="amount" max="100000000" min="1" name="amount" type="number" value="100000" />
                              </div>
                            </div>
                            <div class="form-flexs">
                              <div class="form-group">
                                <label for="bankcode">Ngân hàng</label>
                                <select name="bankcode" id="bankcode" class="form-control  form-vnpay">
                                  <option value="">Không chọn </option>
                                  <option value="NCB">Ngân hàng NCB</option>
                                  <option value="SACOMBANK">Ngân hàng SacomBank  </option>
                                  <option value="EXIMBANK">Ngân hàng EximBank </option>
                                  <option value="MSBANK">Ngân hàng MSBANK </option>
                                  <option value="NAMABANK">Ngân hàng NamABank </option>
                                  <option value="VISA">Thanh toán qua VISA/MASTER</option>
                                  <option value="VNMART">Ví điện tử VnMart</option>
                                  <option value="VIETINBANK">Ngân hàng Vietinbank  </option>
                                  <option value="VIETCOMBANK">Ngân hàng VCB </option>
                                  <option value="HDBANK">Ngân hàng HDBank</option>
                                  <option value="DONGABANK">Ngân hàng Dong A</option>
                                  <option value="TPBANK">Ngân hàng TPBank </option>
                                  <option value="OJB">Ngân hàng OceanBank</option>
                                  <option value="BIDV">Ngân hàng BIDV </option>
                                  <option value="TECHCOMBANK">Ngân hàng Techcombank </option>
                                  <option value="VPBANK">Ngân hàng VPBank </option>
                                  <option value="AGRIBANK">Ngân hàng Agribank </option>
                                  <option value="MBBANK">Ngân hàng MBBank </option>
                                  <option value="ACB">Ngân hàng ACB </option>
                                  <option value="OCB">Ngân hàng OCB </option>
                                </select>
                              </div>
                              <div class="form-group">
                                <label for="OrderDescription">Nội dung thanh toán</label>
                                <textarea class="form-control form-vnpay" cols="20" id="vnp_OrderInfo" name="vnp_OrderInfo" rows="2">Thanh toan san pham</textarea>
                              </div>
                            </div>
                          </form>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="OR36Xx">
                  <div class="_38DBn- _1ylw6p _2ZumAb">Tổng tiền hàng:</div>
                  <div class="_38DBn- _2wZvga _2ZumAb _2ghey"></div>
                  <div class="_38DBn- _1ylw6p sfPrg9">Tổng thanh toán:</div>
                  <div class="_38DBn- _34fUBg _2wZvga sfPrg9"></div>
                  <div class="_3S63c5 _1WpGLP" id="btn-dat-tien">
                    <button type="button"  class="stardust-button stardust-button--primary stardust-button--large _22Ktrb" >
                        <span>Đặt hàng tiền mặt</span> 
                    </button>
                  </div>
                  <div class="_3S63c5 _1WpGLP hide" id="btn-dat-vnpay">
                    <button type="button" onclick="linkVNPay" class="stardust-button stardust-button--primary stardust-button--large _22Ktrb" >
                        <span>Đặt hàng Vn Pay</span>
                    </button>
                  </div>

                  
                </div>
              </div>
            </div>
          </div>
          <!--End row-->
        </div>
    </div>
    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer">
          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-airplane"></use>
              </svg>
            </div>
            <p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-credit-card-alt"></use>
              </svg>
            </div>
            <p>HOÀN TIỀN 100%</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
              </svg>
            </div>
            <p>NHIỀU ƯU ĐÃI LỠN</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-headphones"></use>
              </svg>
            </div>
            <p>CHĂM SÓC TẬN TÌNH</p>
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer id="footer" class="section footer" style="background-image: url(images/Footer-Background-Image.png)">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>SẢN PHẨM</h3>
          <a href="#">Chó</a>
          <a href="#">Mèo</a>
          <a href="#">Phụ kiện</a>
        </div>
        <div class="footer-top__box">
          <h3>THÔNG TIN</h3>
          <a href="#">Về chúng tôi</a>
          <a href="#">Chính Sách Bảo Mật</a>
          <a href="#">Điều khoản và Điều kiện</a>
          <a href="#">Liên hệ</a>
        </div>
        <div class="footer-top__box">
          <h3>TÀI KHOẢN CỦA TÔI</h3>
          <a href="#">Thông tin tài khoản</a>
          <a href="#">Danh sách đơn hàng</a>
        </div>
        <div class="footer-top__box">
          <h3>LIÊN HỆ</h3>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-location"></use>
              </svg>
            </span>
            206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
            petmart.support@gmail.com
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images/sprite.svg#icon-phone"></use>
              </svg>
            </span>
            (+84) 386768658
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom">
      <div class="footer-bottom__box">

      </div>
      <div class="footer-bottom__box">

      </div>
    </div>
    </div>
  </footer>

  <!-- End Footer -->

  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>

  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>


  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="./js/jquery-3.5.1.min.js"></script>

  <!-- Custom JavaScript -->
  <script src="./js/index.js"></script>
  <script src="./js/slider.js"></script>
  <script src="./js/custom.js"></script>    
  <script src="./js/check-out.js"></script>
  <script src="./js/sweat-alert.js"></script>
</body>

</html>