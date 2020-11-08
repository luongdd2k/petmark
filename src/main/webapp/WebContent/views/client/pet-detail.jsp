<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 7]><html class="ie ie7"><![endif]-->
<!--[if IE 8]><html class="ie ie8"><![endif]-->
<!--[if IE 9]><html class="ie ie9"><![endif]-->
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <link href="apple-touch-icon.png" rel="apple-touch-icon">
  <link href="images/favicon.png" rel="icon">
  <meta name="author" content="Nghia Minh Luong">
  <meta name="keywords" content="Default Description">
  <meta name="description" content="Default keyword">
  <title>Sky - Product Detail</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <!-- Fonts-->
  <link
    href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900"
    rel="stylesheet">
  <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="plugins/ps-icon/style.css">
  <!-- CSS Library-->
  <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="plugins/owl-carousel/assets/owl.carousel.css">
  <link rel="stylesheet" href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
  <link rel="stylesheet" href="plugins/slick/slick/slick.css">
  <link rel="stylesheet" href="plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
  <link rel="stylesheet" href="plugins/Magnific-Popup/dist/magnific-popup.css">
  <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
  <link rel="stylesheet" href="plugins/revolution/css/settings.css">
  <link rel="stylesheet" href="plugins/revolution/css/layers.css">
  <link rel="stylesheet" href="plugins/revolution/css/navigation.css">
  <!-- Custom-->
  <link rel="stylesheet" href="CSS/style.css">
  <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
  <!--WARNING: Respond.js doesn't work if you view the page via file://-->
  <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
<!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->

<body class="ps-loading">
  <div class="header--sidebar"></div>
  <header class="header">
    <div class="header__top">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
            <!-- <p>460 West 34th Street, 15th floor, New York - Hotline: 804-377-3580 - 804-399-3580</p> -->
          </div>
          <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
            <div class="header__actions"><a href="login-guest.html">Login & Regiser</a>
              <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="javascript:" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">Language<i class="fa fa-angle-down"></i></a>
                <ul class="dropdown-menu">
                  <li><a href="javascript:">English</a></li>
                  <li><a href="javascript:">Japanese</a></li>
                  <li><a href="javascript:">Chinese</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <nav class="navigation">
      <div class="container-fluid">
        <div class="navigation__column left">
          <div class="header__logo"><a class="ps-logo" href="index.html"><img src="images/logo.png" alt=""></a></div>
        </div>
        <div class="navigation__column center">
          <ul class="main-menu menu">
            <li class="menu-item menu-item-has-children dropdown"><a href="index.html">trang chủ</a>
              <ul class="sub-menu">
                <li class="menu-item"><a href="javascript:">Thú cưng</a></li>
                <li class="menu-item"><a href="javascript:">Phụ kiện</a></li>
              </ul>
            </li>
            <li class="menu-item menu-item-has-children dropdown"><a href="javascript:">Liên hệ</a>
            </li>
            <li class="menu-item"><a href="about.html">Về chúng tôi</a></li>
            <li class="menu-item"><a href="acc-listing.html">Tìm kiếm</a></li>
          </ul>
        </div>
        <div class="navigation__column right">
          <form class="ps-search--header" action="do_action" method="post">
            <input class="form-control" type="text" placeholder="Search Product…">
            <button><i class="ps-icon-search"></i></button>
          </form>
          <div class="ps-cart"><a class="ps-cart__toggle" href="cart.html"><span><i>20</i></span><i
                class="ps-icon-shopping-cart"></i></a>
          </div>
          <div class="menu-toggle"><span></span></div>
        </div>
      </div>
    </nav>
    <!-- src="images/slider/2.jpg" -->
  </header>
  <main class="ps-main">
    <div class="test">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 ">
          </div>
        </div>
      </div>
    </div>
    <div class="ps-product--detail pt-60">
      <div class="ps-container">
        <div class="row">
          <div class="col-lg-10 col-md-12 col-lg-offset-1">
            <div class="ps-product__thumbnail">
              <div class="ps-product__preview">
                <div class="ps-product__variants">
                  <div class="item"><img
                      src="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg"
                      alt=""></div>
                  <div class="item"><img
                      src="https://png.pngtree.com/png-clipart/20190921/original/pngtree-alaskan-sled-dog-illustration-png-image_4702920.jpg"
                      alt=""></div>
                  <div class="item"><img
                      src="https://salt.tikicdn.com/cache/w1200/ts/product/ce/5e/40/2d60be343ac1d9bd34f5903f76b89f2d.jpg"
                      alt=""></div>
                  <div class="item"><img
                      src="https://i.pinimg.com/originals/91/41/93/914193b877b617ca7555473a047ece31.jpg" alt=""></div>
                  <div class="item"><img
                      src="https://tea-4.lozi.vn/v1/images/resized/cho-alaska-1478102397-1-3700415-1503803377?w=1200&type=f"
                      alt=""></div>
                </div>
              </div>
              <div class="ps-product__image">
                <div class="item"><img class="zoom"
                    src="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg"
                    alt=""
                    data-zoom-image="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg">
                </div>
                <div class="item"><img class="zoom"
                    src="https://png.pngtree.com/png-clipart/20190921/original/pngtree-alaskan-sled-dog-illustration-png-image_4702920.jpg"
                    alt=""
                    data-zoom-image="https://png.pngtree.com/png-clipart/20190921/original/pngtree-alaskan-sled-dog-illustration-png-image_4702920.jpg">
                </div>
                <div class="item"><img class="zoom"
                    src="https://salt.tikicdn.com/cache/w1200/ts/product/ce/5e/40/2d60be343ac1d9bd34f5903f76b89f2d.jpg"
                    alt=""
                    data-zoom-image="https://salt.tikicdn.com/cache/w1200/ts/product/ce/5e/40/2d60be343ac1d9bd34f5903f76b89f2d.jpg">
                </div>
                <div class="item"><img class="zoom"
                    src="https://i.pinimg.com/originals/91/41/93/914193b877b617ca7555473a047ece31.jpg" alt=""
                    data-zoom-image="https://i.pinimg.com/originals/91/41/93/914193b877b617ca7555473a047ece31.jpg">
                </div>
                <div class="item"><img class="zoom"
                    src="https://tea-4.lozi.vn/v1/images/resized/cho-alaska-1478102397-1-3700415-1503803377?w=1200&type=f"
                    alt=""
                    data-zoom-image="https://tea-4.lozi.vn/v1/images/resized/cho-alaska-1478102397-1-3700415-1503803377?w=1200&type=f">
                </div>
              </div>
            </div>
            <div class="ps-product__thumbnail--mobile">
              <div class="ps-product__main-img"><img src="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg" alt=""></div>
              <div class="ps-product__preview owl-slider" data-owl-auto="true" data-owl-loop="true"
                data-owl-speed="5000" data-owl-gap="20" data-owl-nav="true" data-owl-dots="false" data-owl-item="3"
                data-owl-item-xs="3" data-owl-item-sm="3" data-owl-item-md="3" data-owl-item-lg="3"
                data-owl-duration="1000" data-owl-mousedrag="on"><img src="https://png.pngtree.com/png-clipart/20190921/original/pngtree-alaskan-sled-dog-illustration-png-image_4702920.jpg" alt=""><img
                  src="https://i.pinimg.com/originals/91/41/93/914193b877b617ca7555473a047ece31.jpg" alt=""><img src="https://tea-4.lozi.vn/v1/images/resized/cho-alaska-1478102397-1-3700415-1503803377?w=1200&type=f" alt=""></div>
            </div>
            <div class="ps-product__info">
              <div class="ps-product__rating">
                <select class="ps-rating">
                  <option value="1">1</option>
                  <option value="1">2</option>
                  <option value="1">3</option>
                  <option value="1">4</option>
                  <option value="2">5</option>
                </select>
              </div>
              <h1>${pet.getPetName() }</h1>
              <h3 class="ps-product__price">6.400.000đ  <del>${pet.getDisplayPrice(1) }</del></h3>
              <div class="ps-product__block ps-product__quickview">
                <h4>MÔ TẢ</h4>
                <p>${pet.getDescription() }</p>
              </div>
              <!-- <div class="ps-product__block ps-product__style">
                  <h4>CHOOSE YOUR STYLE</h4>
                  <ul>
                    <li><a href="product-detail.html"><img src="images/shoe/sidebar/1.jpg" alt=""></a></li>
                    <li><a href="product-detail.html"><img src="images/shoe/sidebar/2.jpg" alt=""></a></li>
                    <li><a href="product-detail.html"><img src="images/shoe/sidebar/3.jpg" alt=""></a></li>
                    <li><a href="product-detail.html"><img src="images/shoe/sidebar/2.jpg" alt=""></a></li>
                  </ul>
                </div> -->
              <!-- <div class="ps-product__block ps-product__size">
                  <h4>CHOOSE SIZE<a href="javascript:">Size chart</a></h4>
                  <select class="ps-select selectpicker">
                    <option value="1">Select Size</option>
                    <option value="2">4</option>
                    <option value="3">4.5</option>
                    <option value="3">5</option>
                    <option value="3">6</option>
                    <option value="3">6.5</option>
                    <option value="3">7</option>
                    <option value="3">7.5</option>
                    <option value="3">8</option>
                    <option value="3">8.5</option>
                    <option value="3">9</option>
                    <option value="3">9.5</option>
                    <option value="3">10</option>
                  </select>
                  <div class="form-group">
                    <input class="form-control" type="number" value="1">
                  </div>
                </div> -->
              <div class="ps-product__shopping"><a class="ps-btn mb-10" href="pet-checkout.html">Đặt cọc<i
                    class="ps-icon-next"></i></a>
                <div class="ps-product__actions"><a class="mr-10" href="whishlist.html"><i
                      class="ps-icon-heart"></i></a></div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="ps-product__content mt-50">
              <ul class="tab-list" role="tablist">
                <li><a href="#tab_02" aria-controls="tab_02" role="tab" data-toggle="tab">Nhận xét</a></li>
              </ul>
            </div>
            <div class="tab-content mb-60">
              <div class="tab-pane" role="tabpanel" id="tab_02">
                <p class="mb-20">1 review for <strong>Alaska</strong></p>
                <div class="ps-review">
                  <div class="ps-review__thumbnail"><img src="images/user/1.jpg" alt=""></div>
                  <div class="ps-review__content">
                    <header>
                      <select class="ps-rating">
                        <option value="1">1</option>
                        <option value="1">2</option>
                        <option value="1">3</option>
                        <option value="1">4</option>
                        <option value="5">5</option>
                      </select>
                      <p>By<a href=""> Alena Studio</a> - November 25, 2017</p>
                    </header>
                    <p>Soufflé danish gummi bears tart. Pie wafer icing. Gummies jelly beans powder. Chocolate bar
                      pudding macaroon candy canes chocolate apple pie chocolate cake. Sweet caramels sesame snaps
                      halvah bear claw wafer. Sweet roll soufflé muffin topping muffin brownie. Tart bear claw cake
                      tiramisu chocolate bar gummies dragée lemon drops brownie.</p>
                  </div>
                </div>
                <form class="ps-product__review" action="_action" method="post">
                  <h4>ADD YOUR REVIEW</h4>
                  <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
                      <div class="form-group">
                        <label>Your rating<span></span></label>
                        <select class="ps-rating">
                          <option value="1">1</option>
                          <option value="1">2</option>
                          <option value="1">3</option>
                          <option value="1">4</option>
                          <option value="5">5</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 ">
                      <div class="form-group">
                        <label>Your Review:</label>
                        <textarea class="form-control" rows="6"></textarea>
                      </div>
                      <div class="form-group">
                        <button class="ps-btn ps-btn--sm">Submit<i class="ps-icon-next"></i></button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    <!-- <div class="ps-section ps-section--top-sales ps-owl-root pt-40 pb-80">
      <div class="ps-container">
        <div class="ps-section__header mb-50">
          <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
              <h3 class="ps-section__title" data-mask="Related item">- YOU MIGHT ALSO LIKE</h3>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
              <div class="ps-owl-actions"><a class="ps-prev" href="javascript:"><i class="ps-icon-arrow-right"></i>Prev</a><a
                  class="ps-next" href="javascript:">Next<i class="ps-icon-arrow-left"></i></a></div>
            </div>
          </div>
        </div>
        <div class="ps-section__content">
          <div class="ps-owl--colection owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
            data-owl-gap="30" data-owl-nav="false" data-owl-dots="false" data-owl-item="4" data-owl-item-xs="1"
            data-owl-item-sm="2" data-owl-item-md="3" data-owl-item-lg="4" data-owl-duration="1000"
            data-owl-mousedrag="on">
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail">
                  <div class="ps-badge"><span>New</span></div><a class="ps-shoe__favorite" href="javascript:"><i
                      class="ps-icon-heart"></i></a><img src="images/shoe/1.jpg" alt=""><a class="ps-shoe__overlay"
                    href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price"> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail">
                  <div class="ps-badge"><span>New</span></div>
                  <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div><a class="ps-shoe__favorite"
                    href="javascript:"><i class="ps-icon-heart"></i></a><img src="images/shoe/2.jpg" alt=""><a
                    class="ps-shoe__overlay" href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price">
                      <del>£220</del> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail">
                  <div class="ps-badge"><span>New</span></div><a class="ps-shoe__favorite" href="javascript:"><i
                      class="ps-icon-heart"></i></a><img src="images/shoe/3.jpg" alt=""><a class="ps-shoe__overlay"
                    href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price"> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail"><a class="ps-shoe__favorite" href="javascript:"><i
                      class="ps-icon-heart"></i></a><img src="images/shoe/4.jpg" alt=""><a class="ps-shoe__overlay"
                    href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price"> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail">
                  <div class="ps-badge"><span>New</span></div><a class="ps-shoe__favorite" href="javascript:"><i
                      class="ps-icon-heart"></i></a><img src="images/shoe/5.jpg" alt=""><a class="ps-shoe__overlay"
                    href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price"> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="ps-shoes--carousel">
              <div class="ps-shoe">
                <div class="ps-shoe__thumbnail"><a class="ps-shoe__favorite" href="javascript:"><i
                      class="ps-icon-heart"></i></a><img src="images/shoe/6.jpg" alt=""><a class="ps-shoe__overlay"
                    href="product-detail.html"></a>
                </div>
                <div class="ps-shoe__content">
                  <div class="ps-shoe__variants">
                    <div class="ps-shoe__variant normal"><img src="images/shoe/2.jpg" alt=""><img
                        src="images/shoe/3.jpg" alt=""><img src="images/shoe/4.jpg" alt=""><img src="images/shoe/5.jpg"
                        alt=""></div>
                    <select class="ps-rating ps-shoe__rating">
                      <option value="1">1</option>
                      <option value="1">2</option>
                      <option value="1">3</option>
                      <option value="1">4</option>
                      <option value="2">5</option>
                    </select>
                  </div>
                  <div class="ps-shoe__detail"><a class="ps-shoe__name" href="product-detai.html">Air Jordan 7 Retro</a>
                    <p class="ps-shoe__categories"><a href="javascript:">Men shoes</a>,<a href="javascript:"> Nike</a>,<a href="javascript:">
                        Jordan</a></p><span class="ps-shoe__price"> £ 120</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- <div class="ps-subscribe">
      <div class="ps-container">
        <div class="row">
          <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12 ">
            <h3><i class="fa fa-envelope"></i>Sign up to Newsletter</h3>
          </div>
          <div class="col-lg-5 col-md-7 col-sm-12 col-xs-12 ">
            <form class="ps-subscribe__form" action="do_action" method="post">
              <input class="form-control" type="text" placeholder="">
              <button>Sign up now</button>
            </form>
          </div>
          <div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 ">
            <p>...and receive <span>$20</span> coupon for first shopping.</p>
          </div>
        </div>
      </div>
    </div> -->
    <div class="ps-footer bg--cover" data-background="images/background/parallax.jpg">
      <div class="ps-footer__content">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
              <aside class="ps-widget--footer ps-widget--info">
                <header><a class="ps-logo" href="index.html"><img src="images/logo-white.png" alt=""></a>
                  <h3 class="ps-widget__title">Address 1</h3>
                </header>
                <footer>
                  <p><strong>13 Âu cơ, Tây Hồ, Hà Nội</strong></p>
                  <p>Email: <a href='mailto:support@store.com'>petmarksupport@store.com</a></p>
                  <p>Phone: 0123456789</p>
                </footer>
              </aside>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
              <aside class="ps-widget--footer ps-widget--info second">
                <header>
                  <h3 class="ps-widget__title">Address 1</h3>
                </header>
                <footer>
                  <p><strong>13 Âu cơ, Tây Hồ, Hà Nội</strong></p>
                  <p>Email: <a href='mailto:support@store.com'>petmarksupport@store.com</a></p>
                  <p>Phone: 0123456789</p>
                </footer>
              </aside>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
              <aside class="ps-widget--footer ps-widget--link">
                <header>
                  <h3 class="ps-widget__title">Get Help</h3>
                </header>
                <footer>
                  <ul class="ps-list--line">
                    <li><a href="javascript:">Order Status</a></li>
                    <li><a href="javascript:">Contact Us</a></li>
                  </ul>
                </footer>
              </aside>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
              <aside class="ps-widget--footer ps-widget--link">
                <header>
                  <h3 class="ps-widget__title">Products</h3>
                </header>
                <footer>
                  <ul class="ps-list--line">
                    <li><a href="javascript:">Pet</a></li>
                    <li><a href="javascript:">Accessori</a></li>
                  </ul>
                </footer>
              </aside>
            </div>
          </div>
        </div>
      </div>
      <div class="ps-footer__copyright">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
              <p>&copy; <a href="index.html">PETMARK</a>, If you find a place that sells cheaper, we will refund you!!!</p>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
              <ul class="ps-social">
                <li><a href="javascript:"><i class="fa fa-facebook"></i></a></li>
                <li><a href="javascript:"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="javascript:"><i class="fa fa-twitter"></i></a></li>
                <li><a href="javascript:"><i class="fa fa-instagram"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <!-- JS Library-->
  <script type="text/javascript" src="plugins/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
  <script type="text/javascript" src="plugins/owl-carousel/owl.carousel.min.js"></script>
  <script type="text/javascript" src="plugins/gmap3.min.js"></script>
  <script type="text/javascript" src="plugins/imagesloaded.pkgd.js"></script>
  <script type="text/javascript" src="plugins/isotope.pkgd.min.js"></script>
  <script type="text/javascript" src="plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
  <script type="text/javascript" src="plugins/jquery.matchHeight-min.js"></script>
  <script type="text/javascript" src="plugins/slick/slick/slick.min.js"></script>
  <script type="text/javascript" src="plugins/elevatezoom/jquery.elevatezoom.js"></script>
  <script type="text/javascript" src="plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
  <script type="text/javascript" src="plugins/jquery-ui/jquery-ui.min.js"></script>
  <script type="text/javascript"
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script>
  <script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script type="text/javascript"
    src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
  <script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
  <!-- Custom scripts-->
  <script type="text/javascript" src="js/main.js"></script>
</body>

</html>