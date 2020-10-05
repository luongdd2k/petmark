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
    <title>Sky - Checkout</title>
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
                  <!-- <p>460 West 34th Street, 15th floor, New York  -  Hotline: 804-377-3580 - 804-399-3580</p> -->
                </div>
                <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
                  <div class="header__actions">
                    <div class="btn-group ps-dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Language<i class="fa fa-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="#">English</a></li>
                        <li><a href="#">Japanese</a></li>
                        <li><a href="#">Chinese</a></li>
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
              <li class="menu-item menu-item-has-children dropdown"><a href="index.html">Trag chủ</a>
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
    </header>
    <main class="ps-main">
      <div class="ps-checkout pt-80 pb-80">
        <div class="ps-container">
          <form class="ps-checkout__form" action="do_action" method="post">
            <div class="row">
                  <!-- <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 ">
                    <div class="ps-checkout__billing">
                      <h3>Billing Detail</h3>
                            <div class="form-group form-group--inline">
                              <label>First Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Last Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Company Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Email Address<span>*</span>
                              </label>
                              <input class="form-control" type="email">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Company Name<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Phone<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                            <div class="form-group form-group--inline">
                              <label>Address<span>*</span>
                              </label>
                              <input class="form-control" type="text">
                            </div>
                      <div class="form-group">
                        <div class="ps-checkbox">
                          <input class="form-control" type="checkbox" id="cb01">
                          <label for="cb01">Create an account?</label>
                        </div>
                      </div>
                      <h3 class="mt-40"> Addition information</h3>
                      <div class="form-group form-group--inline textarea">
                        <label>Order Notes</label>
                        <textarea class="form-control" rows="5" placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                      </div>
                    </div>
                  </div> -->
                  <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 ">
                    <div class="ps-checkout__order">
                      <header>
                        <h3>Your Order</h3>
                      </header>
                      <div class="content">
                        <table class="table ps-checkout__products">
                          <thead>
                            <tr>
                              <th class="text-uppercase">Pet</th>
                              <th class="text-uppercase">Quantity</th>
                              <th class="text-uppercase">Price</th>
                              <th class="text-uppercase">Despost Price</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>Husky Shibarian</td>
                              <td>x1</td>
                              <td>5.140.000đ</td>
                              <td>1.200.000đ</td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <footer>
                        <h3>Payment Method</h3>
                        <!-- <div class="form-group cheque">
                          <div class="ps-radio">
                            <input class="form-control" type="radio" id="rdo01" name="payment" checked>
                            <label for="rdo01">Cheque Payment</label>
                            <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                          </div>
                        </div> -->
                        <div class="form-group paypal">
                          <div class="ps-radio ps-radio--inline">
                            <input class="form-control" type="radio" name="payment" id="rdo02">
                            <label for="rdo02">Paypal</label>
                          </div>
                          <ul class="ps-payment-method">
                            <li><a href="#"><img src="images/payment/1.png" alt=""></a></li>
                            <!-- <li><a href="#"><img src="images/payment/2.png" alt=""></a></li>
                            <li><a href="#"><img src="images/payment/3.png" alt=""></a></li> -->
                          </ul>
                          <button class="ps-btn ps-btn--fullwidth">Despost<i class="ps-icon-next"></i></button>
                        </div>
                      </footer>
                    </div>
                
            </div>
          </form>
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