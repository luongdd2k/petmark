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
  <link href="favicon.png" rel="icon">
  <meta name="author" content="Nghia Minh Luong">
  <meta name="keywords" content="Default Description">
  <meta name="description" content="Default keyword">
  <title>Sky - Product Listing</title>
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
  <link rel="stylesheet" href="css/style.css">
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
            <li class="menu-item menu-item-has-children dropdown"><a href="index.html">Trang chủ</a>
              <ul class="sub-menu">
                <li class="menu-item"><a href="javascript:">Thú cưng</a></li>
                <li class="menu-item"><a href="javascript:">Phụ kiện</a></li>
              </ul>
            </li>
            <li class="menu-item menu-item-has-children dropdown"><a href="javascript:">Liên hệ</a></li>
            <li class="menu-item"><a href="about.html">Về chúng tôi</a></li>
            <li class="menu-item"><a href="acc-listing.html">Tìm kiếm</a></li>
          </ul>
        </div>
        <div class="navigation__column right">
          <form class="ps-search--header" action="do_action" method="post">
            <input class="form-control" type="text" placeholder="Search...">
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
  </div>
  <main class="ps-main">
    <div class="ps-products-wrap pt-80 pb-80">
      <div class="ps-products" data-mh="product-listing">
        <div class="ps-product-action">
          <div class="ps-product__filter">
            <select class="ps-select selectpicker">
              <option value="1">Xếp theo</option>
              <option value="2">Tên</option>
              <option value="3">Giá ( Thấp đến cao )</option>
              <option value="3">Giá ( Cao đến thấp )</option>
            </select>
          </div>
          <div class="ps-pagination">
            <ul class="pagination">
              <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">...</a></li>
              <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
        <div class="ps-product__columns">
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>New</span></div>
                <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div><a class="ps-shoe__favorite"
                  href="javascript:"><i class="ps-icon-heart"></i></a><img
                  src="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal"><img
                      src="https://png.pngtree.com/png-clipart/20190921/original/pngtree-alaskan-sled-dog-illustration-png-image_4702920.jpg"
                      alt="">
                    <img
                      src="https://salt.tikicdn.com/cache/w1200/ts/product/ce/5e/40/2d60be343ac1d9bd34f5903f76b89f2d.jpg"
                      alt="">
                    <img src="https://i.pinimg.com/originals/91/41/93/914193b877b617ca7555473a047ece31.jpg" alt="">
                    <img
                      src="https://tea-4.lozi.vn/v1/images/resized/cho-alaska-1478102397-1-3700415-1503803377?w=1200&type=f"
                      alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Alaska</a><span
                    class="ps-shoe__price">
                    <del>6.400.000 đ</del> &nbsp; 5.140.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>New</span></div>
                <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div><a class="ps-shoe__favorite"
                  href="javascript:"><i class="ps-icon-heart"></i></a><img
                  src="https://i.pinimg.com/736x/32/bf/fb/32bffb281cfd5a9828f1862c187adef4.jpg" style="height: 300px;"
                  alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img src="https://sieupet.com/sites/default/files/pictures/images/tam-cho-pug-bi-rung-long.jpg"
                      alt="">
                    <img src="https://i.pinimg.com/originals/b7/c6/d9/b7c6d95401fa8d32802a57ba79d45601.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/4d/ea/47/4dea47d9451200e9ba0f683cb277ed5f.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jpg" alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Pug</a><span
                    class="ps-shoe__price">
                    <del>3.000.000 đ</del> &nbsp; 1.950.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <div class="ps-badge"><span>New</span></div>
                <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div><a class="ps-shoe__favorite"
                  href="javascript:"><i class="ps-icon-heart"></i></a><img
                  src="https://tunglocpet.com/wp-content/uploads/2017/10/cho-corgi-pembroke-tunglocpet-03.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img src="https://i.pinimg.com/originals/fd/e5/b9/fde5b9bdd5b6da8dd0087266b8f026a0.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/a3/54/2d/a3542d1a2c27d8ad80862cfb9e05bfb6.jpg" alt="">
                    <img src="https://tapchithucung.vn/Uploads/images/cho-corgi-kem-chat-luong-2.jpeg" alt="">
                    <img src="https://vcdn-vnexpress.vnecdn.net/2020/07/17/iPiccy-collagedv-4811-1594954935.jpg" alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Corgi</a><span
                    class="ps-shoe__price">
                    <del>5.900.000 đ</del> &nbsp; 3.835.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <!-- <div class="ps-badge"><span>New</span></div>
              <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
                <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a><img
                  src="https://salt.tikicdn.com/cache/w1200/ts/product/85/b9/56/5ef1645cc1535406545b9064c3a544b8.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img src="https://pbs.twimg.com/media/EEmtGnwUUAE3rex.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/87/a4/fa/87a4fa07fe150bcbf72e523cfc92957f.jpg" alt="">
                    <img
                      src="https://jordan.arabsclassifieds.com/images/2019/06/19/234/awesome-teacup-pomeranian-puppies-ready-now_3.jpg"
                      alt="">
                    <img
                      src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jphttps://www.rachaelraymag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYzMDgyMDg0NzAzOTM4NDQx/gettyimages-1137349290.jpgg"
                      alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Pomeranian</a><span
                    class="ps-shoe__price"> 5.500.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <!-- <div class="ps-badge"><span>New</span></div>
              <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
                <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a><img
                  src="https://sieupet.com/sites/default/files/pictures/images/cho-poodle-tiny-1.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img
                      src="data:image/jpeg;base64,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"
                      alt="">
                    <img src="https://i.pinimg.com/originals/87/a4/fa/87a4fa07fe150bcbf72e523cfc92957f.jpg" alt="">
                    <img
                      src="https://jordan.arabsclassifieds.com/images/2019/06/19/234/awesome-teacup-pomeranian-puppies-ready-now_3.jpg"
                      alt="">
                    <img
                      src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jphttps://www.rachaelraymag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYzMDgyMDg0NzAzOTM4NDQx/gettyimages-1137349290.jpgg"
                      alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Poodle</a><span
                    class="ps-shoe__price"> 3.900.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <!-- <div class="ps-badge"><span>New</span></div>
              <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
                <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a><img
                  src="https://graphic.com.vn//uploads/product/photos/PMP9ESA/cover/w1200.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img src="https://png.pngtree.com/png-clipart/20190921/original/pngtree-chihuahua-dog-illustration-png-image_4706623.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/87/a4/fa/87a4fa07fe150bcbf72e523cfc92957f.jpg" alt="">
                    <img
                      src="https://jordan.arabsclassifieds.com/images/2019/06/19/234/awesome-teacup-pomeranian-puppies-ready-now_3.jpg"
                      alt="">
                    <img
                      src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jphttps://www.rachaelraymag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYzMDgyMDg0NzAzOTM4NDQx/gettyimages-1137349290.jpgg"
                      alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Chihuahua</a><span
                    class="ps-shoe__price"> 4.500.000 đ</span>
                </div>
              </div>
            </div>
          </div>
          <div class="ps-product__column">
            <div class="ps-shoe mb-30">
              <div class="ps-shoe__thumbnail">
                <!-- <div class="ps-badge"><span>New</span></div>
              <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
                <a class="ps-shoe__favorite" href="#"><i class="ps-icon-heart"></i></a><img
                  src="https://achocanh.com/wp-content/uploads/2018/06/giong-cho-lap-xuong-dachshund-1200x1200.jpg"
                  style="height: 300px;" alt=""><a class="ps-shoe__overlay" href="pet-detail.html"></a>
              </div>
              <div class="ps-shoe__content">
                <div class="ps-shoe__variants">
                  <div class="ps-shoe__variant normal">
                    <img src="https://pbs.twimg.com/media/EEmtGnwUUAE3rex.jpg" alt="">
                    <img src="https://i.pinimg.com/originals/87/a4/fa/87a4fa07fe150bcbf72e523cfc92957f.jpg" alt="">
                    <img
                      src="https://jordan.arabsclassifieds.com/images/2019/06/19/234/awesome-teacup-pomeranian-puppies-ready-now_3.jpg"
                      alt="">
                    <img
                      src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jphttps://www.rachaelraymag.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTYzMDgyMDg0NzAzOTM4NDQx/gettyimages-1137349290.jpgg"
                      alt="">
                  </div>
                  <select class="ps-rating ps-shoe__rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                </div>
                <div class="ps-shoe__detail"><a class="ps-shoe__name" href="pet-detail.html">Lạp xưởng</a><span
                    class="ps-shoe__price"> 3.000.000 đ</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="ps-product-action">
          <div class="ps-product__filter">
            <select class="ps-select selectpicker">
              <option value="1">Xếp theo</option>
              <option value="2">Tên</option>
              <option value="3">Giá ( Thấp đến cao )</option>
              <option value="3">Giá ( Cao đến thâp )</option>
            </select>
          </div>
          <div class="ps-pagination">
            <ul class="pagination">
              <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
              <li class="active"><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">...</a></li>
              <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="ps-sidebar" data-mh="product-listing">
        <aside class="ps-widget--sidebar ps-widget--category">
          <div class="ps-widget__header">
            <h3>Chó</h3>
          </div>
          <div class="ps-widget__content">
            <ul class="ps-list--checked">
              <li class="current"><a href="javascript:">Alaska</a></li>
              <li><a href="javascript:">Corgi</a></li>
              <li><a href="javascript:">Pug</a></li>
              <li><a href="javascript:">Phốc sóc</a></li>
              <li><a href="javascript:">Pomeranian</a></li>
              <li><a href="javascript:">Thêm..</a></li>
            </ul>
          </div>
        </aside>
        <aside class="ps-widget--sidebar ps-widget--filter">
          <div class="ps-widget__header">
            <h3>giá cả</h3>
          </div>
          <div class="ps-widget__content">
            <div class="ac-slider" data-default-min="32000" data-default-max="2000000" data-max="30000000"
              data-step="100" data-unit="đ"></div>
            <p class="ac-slider__meta">Giá:<span class="ac-slider__value ac-slider__min"></span>-<span
                class="ac-slider__value ac-slider__max"></span></p><a class="ac-slider__filter ps-btn" href="#">Lọc</a>
          </div>
        </aside>
        <!-- <aside class="ps-widget--sidebar ps-widget--category">
            <div class="ps-widget__header">
              <h3>Sky Brand</h3>
            </div>
            <div class="ps-widget__content">
              <ul class="ps-list--checked">
                <li class="current"><a href="product-listing.html">Nike(521)</a></li>
                <li><a href="product-listing.html">Adidas(76)</a></li>
                <li><a href="product-listing.html">Baseball(69)</a></li>
                <li><a href="product-listing.html">Gucci(36)</a></li>
                <li><a href="product-listing.html">Dior(108)</a></li>
                <li><a href="product-listing.html">B&G(108)</a></li>
                <li><a href="product-listing.html">Louis Vuiton(47)</a></li>
              </ul>
            </div>
          </aside> -->
        <div class="ps-sticky desktop">
          <aside class="ps-widget--sidebar">
            <div class="ps-widget__header">
              <h3>Màu Lông</h3>
            </div>
            <div class="ps-widget__content">
              <ul class="ps-list--color">
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
              </ul>
            </div>
          </aside>
        </div>
      </div>
    </div>
    <div class="ps-footer bg--cover"
      data-background="https://images.foody.vn/res/g78/776508/prof/s576x330/foody-upload-api-foody-mobile-vat-nuoi-jpg-180911112547.jpg">
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
              <p>&copy; <a href="index.html">PETMARK</a>, If you find a place that sells cheaper, we will refund you!!!
              </p>
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