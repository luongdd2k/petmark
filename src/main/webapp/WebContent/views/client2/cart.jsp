<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

    <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />

    <!-- Carousel -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.core.min.css" />
    <link rel="stylesheet" href="node_modules/@glidejs/glide/dist/css/glide.theme.min.css" />

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">


    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/cart.css">

    <title>Pet Mart | Giỏ hàng</title>
</head>

<body>
    <header id="header" class="header">
        <div class="navigation">
            <div class="container">
              <div class="row header__top" id="row-login">
                <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
                  <p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                  <div class="header__actions">
                    <a href="login.html"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                    <a href="register.html">Đăng ký</a>
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
                      <a href="index.html" class="nav__link scroll-link">Trang chủ</a>
                    </li>
                    <li class="nav__item">
                      <a href="#category" class="nav__link scroll-link">Category</a>
                    </li>
                    <li class="nav__item">
                      <a href="#news" class="nav__link scroll-link">Blog</a>
                    </li>
                    <li class="nav__item">
                      <a href="#contact" class="nav__link scroll-link">Liên hệ</a>
                    </li>
                  </ul>
                </div>
      
                <div class="nav__icons">
                  <a href="#" class="icon__item">
                    <svg class="icon__user">
                      <use xlink:href="./images/sprite.svg#icon-user"></use>
                    </svg>
                  </a>
      
                  <a href="#" class="icon__item">
                    <svg class="icon__search">
                      <use xlink:href="./images/sprite.svg#icon-search"></use>
                    </svg>
                  </a>
      
                  <a href="cart.html" class="icon__item">
                    <svg class="icon__cart">
                      <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                    </svg>
                    <span id="cart__total">0</span>
                  </a>
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
                        <li class="page__title">Giỏ hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <main id="main">
      <section class="section cart__area">
        <div class="container">
            <div class="responsive__cart-area">
                <form class="cart__form">
                    <div class="cart__table table-responsive">
                        <table width="100%" class="table">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="product__thumbnail">
                                        <a href="#">
                                            <img src="./images/products/iPhone/iphone6.jpeg" alt="">
                                        </a>
                                    </td>
                                    <td class="product__name">
                                        <a href="#">Vòng Cổ Chuông Cho Mèo</a>
                                        <br><br>
                                        <small>White/6.25</small>
                                    </td>
                                    <td class="product__price">
                                        <div class="price">
                                            <span class="new__price">$250.99</span>
                                        </div>
                                    </td>
                                    <td class="product__quantity">
                                        <div class="input-counter">
                                            <div>
                                                <span class="minus-btn">
                                                    <svg>
                                                        <use xlink:href="./images/sprite.svg#icon-minus"></use>
                                                    </svg>
                                                </span>
                                                <input type="text" min="1" value="1" max="10" class="counter-btn">
                                                <span class="plus-btn">
                                                    <svg>
                                                        <use xlink:href="./images/sprite.svg#icon-plus"></use>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product__subtotal">
                                        <div class="price">
                                            <span class="new__price">$250.99</span>
                                        </div>
                                        <a href="#" class="remove__cart-item">
                                            <svg>
                                                <use xlink:href="./images/sprite.svg#icon-trash"></use>
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="cart-btns">
                        <div class="continue__shopping">
                            <a href="/">Tiếp tục mua hàng</a>
                        </div>
                    </div>

                    <div class="cart__totals">
                        <h3>Thanh toán</h3>
                        <ul>
                            <li>
                                Tạm tính
                                <span class="new__price">$250.99</span>
                            </li>
                            <li>
                                Thành tiền
                                <span class="new__price">$250.99</span>
                            </li>
                        </ul>
                        <div class="btn-payment">
                          <a href="check-out.html">TIẾN HÀNH THANH TOÁN</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>

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
    <script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Animate On Scroll -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- import Vue before Element -->
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <!-- import JavaScript -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>

    <!-- Custom JavaScript -->
    <script src="./js/products.js"></script>
    <script src="./js/index.js"></script>
    <script src="./js/slider.js"></script>
    <script>
        $(function(){
           let a = $('#test').val();
           console.log(a);
        })
        new Vue({
          el: '#cart-vue',
          data: function() {
            return {
                num: 1
            };
          },
            methods: {
             handleChange(value) {
                console.log(value)
            }
        }
        })
      </script>
</body>

</html>