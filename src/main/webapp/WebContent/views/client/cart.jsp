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
    <link href="favicon.png" rel="icon">
    <meta name="author" content="Nghia Minh Luong">
    <meta name="keywords" content="Default Description">
    <meta name="description" content="Default keyword">
    <title>Sky - Cart</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <!-- Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet">
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
              <li class="menu-item menu-item-has-children dropdown"><a href="javascript:">Liên lạc</a> </li>
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
      <div class="ps-content pt-80 pb-80">
        <div class="ps-container">
          <div class="ps-cart-listing">
            <table class="table ps-cart__table">
              <thead>
                <tr>
                  <th>All Products</th>
                  <th>Price</th>
                  <th>Quantity</th>
                  <th>Total</th>
                  <th></th>
                </tr>
              </thead>
              <c:forEach var="card" items="${card }">
              <tbody>
                <tr>
                  <td><a class="ps-product__preview" href="acc-detail/${card.getAccessories().getId()}"><img class="mr-15" style="width: 100px;" src="https://vn-live-01.slatic.net/p/fab431d28976ce60654b4fbfce556207.jpg" alt=""> ${card.getAccessories().getName() } </a></td>
                  <td>${card.getAccessories().getDisplayPrice(1)}</td>
                  <td>
                    <div class="form-group--number">
                      <button class="minus"><span>-</span></button>
                      <input class="form-control" type="text" value="${card.getAmount() }" />
                      <button class="plus"><span>+</span></button>
                    </div>
                  </td>
                  <td>280.000đ</td>
                  <td>
                    <a class="ps-remove" href="delete/${card.getId() }"></a>
                  </td>
                </tr>
              </tbody>
              </c:forEach>
            </table>
            <div class="ps-cart__actions">
              <!-- <div class="ps-cart__promotion">
                <div class="form-group">
                  <div class="ps-form--icon"><i class="fa fa-angle-right"></i>
                    <input class="form-control" type="text" placeholder="Promo Code">
                  </div>
                </div>
                <div class="form-group">
                  <button class="ps-btn ps-btn--gray">Continue Shopping</button>
                </div>
              </div> -->
              <div class="ps-cart__total">
                <h3>Total Price: <span> 280.000 đ</span></h3><a class="ps-btn" href="acc-checkout.html">Process to checkout<i class="ps-icon-next"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
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
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script><script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <!-- Custom scripts-->
    <script type="text/javascript" src="js/main.js"></script>
  </body>
</html>