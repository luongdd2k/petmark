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
<title>Trang chủ</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Fonts-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugins/ps-icon/style.css">
<!-- CSS Library-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="plugins/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="plugins/owl-carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
<link rel="stylesheet" href="plugins/slick/slick/slick.css">
<link rel="stylesheet"
	href="plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="plugins/Magnific-Popup/dist/magnific-popup.css">
<link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
<link rel="stylesheet" href="plugins/revolution/css/settings.css">
<link rel="stylesheet" href="plugins/revolution/css/layers.css">
<link rel="stylesheet" href="plugins/revolution/css/navigation.css">
<!-- Custom-->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/new.css">
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
					<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 "></div>
					<div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
						<div class="header__actions">
							<a href="#myModal" data-toggle="modal">Login & Regiser</a>
							<div class="btn-group ps-dropdown">
								<a class="dropdown-toggle" href="javascript:"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Language<i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="javascript:">English</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<input type="hidden" name="login_user" id="login_user"
			value="${user }"> <input type="hidden" name="login_role"
			id="login_role" value="${account.getRole().getId() }"> <input type="hidden"
			name="login_fullname" id="login_fullname" value="${account.getFullName() }">
<!-- 		<input type="hidden" name="login_profilePictureURL" -->
<%-- 			id="login_profilePictureURL" value="${profilePictureURL }"> --%>
		<div id="myModal" class="modal fade signup-form">
			<div class="modal-dialog modal-login">
				<div class="modal-content" >
					<form action="CheckLogin" id="sl_form_login" method="post">
						<div class="form-header">
							<h2>Đăng nhập</h2>
						</div>
						<div class="sl_form_input">
							<div class="form-group abc">
								<label>Tên đăng nhập</label> <input type="text"
									class="form-control input_text" name="sl_login_username"
									id="username" required="required">
							</div>
							<div class="form-group abc">
								<label>Mật khẩu</label> <input type="password" id="password"
									class="form-control input_text" name="sl_login_password"
									required="required">
								<%
									out.println("<input type='hidden' name='pageid' id='pageid' value='"
										+ this.getClass().getSimpleName().replaceAll("_", ".").replaceAll(".005f", "_") + "'>");
								%>
							</div>
							<input type="hidden" name="cart_hidden_id" id="cart_hidden_id"
								value="${id}"> <input type="hidden" name="urlPage"
								id="urlPage" value="">
						</div>
						<div class="form-group">
							<label class="form-check-label"><input type="checkbox"
								required="required"> Remember Me! </a></label>
						</div>
						<div class="form-group sl_form_submit">
							<button type="submit"
								class="btn btn-primary btn-block btn-lg sl_submit">Login</button>
						</div>
						<div class="text-center small">
							Create a new account? <a href="register.html">Sign Up</a> here
						</div>
					</form>
				</div>
			</div>
		</div>
		<nav class="navigation">
			<div class="container-fluid">
				<div class="navigation__column left">
					<div class="header__logo">
						<a class="ps-logo" href="index.html"><img
							src="images/logo.png" alt=""></a>
					</div>
				</div>
				<div class="navigation__column center">
					<ul class="main-menu menu">
						<li class="menu-item menu-item-has-children dropdown"><a
							href="index.html">Trang chủ</a>
							<ul class="sub-menu">
								<li class="menu-item"><a href="javascript:">Thú cưng</a></li>
								<li class="menu-item"><a href="javascript:">Phụ kiện</a></li>
							</ul></li>
						<li class="menu-item menu-item-has-children dropdown"><a
							href="javascript:">Liên hệ</a></li>
						<li class="menu-item"><a href="about.html">về chúng tôi</a></li>
						<li class="menu-item"><a href="acc-listing.html">Tìm kiếm</a></li>
					</ul>
				</div>
				<div class="navigation__column right">
					<form class="ps-search--header" action="do_action" method="post">
						<input class="form-control" type="text" placeholder="Tìm kiếm">
						<button>
							<i class="ps-icon-search"></i>
						</button>
					</form>
					<div class="ps-cart">
						<a class="ps-cart__toggle" href="show-card"><span><i>1</i></span><i
							class="ps-icon-shopping-cart"></i></a>
					</div>
					<div class="menu-toggle">
						<span></span>
					</div>
				</div>
			</div>
		</nav>


		<!-- src="images/slider/2.jpg" -->
	</header>

	<main class="ps-main">
		<div class="ps-banner">
			<div class="rev_slider fullscreenbanner" id="home-banner">
				<ul>
					<li class="ps-banner ps-banner--white" data-index="rs-100"
						data-transition="random" data-slotamount="default"
						data-hideafterloop="0" data-hideslideonmobile="off"
						data-rotate="0"><img class="rev-slidebg"
						src="https://azpet.com.vn/wp-content/uploads/2019/01/background-cho-alaska-desktop.jpg"
						alt="" data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="5" data-no-retina>
						<!-- <div class="tp-caption ps-banner__header" id="layer20" data-x="left" data-hoffset="['-60','15','15','15']"
              data-y="['middle','middle','middle','middle']" data-voffset="['-150','-120','-150','-170']"
              data-width="['none','none','none','400']" data-type="text" data-responsive_offset="on"
              data-frames="[{&quot;delay&quot;:1000,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
              <p>BEST ITEM <br> THIS SUMMER</p>
            </div> -->
						<div class="tp-caption ps-banner__title" id="layer339"
							data-x="['left','left','left','left']"
							data-hoffset="['-150','15','15','15']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-250','-120','-150','-170']" data-type="text"
							data-responsive_offset="on"
							data-textAlign="['center','center','center','center']"
							data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
							<p class="text-uppercase">CHÓ ALASKA</p>
						</div>
						<div class="tp-caption ps-banner__description" id="layer2-14"
							data-x="['left','left','left','left']"
							data-hoffset="['-150','15','15','15']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-90','-40','-50','-70']" data-type="text"
							data-responsive_offset="on"
							data-textAlign="['center','center','center','center']"
							data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
							<p>
								Chó Alaska (hay Alaskan Malamute) là giống chó kéo xe được biết
								<br /> đến đầu tiên bởi bộ tộc Mahlemut. Người Eskimo du mục đã
								khám <br /> phá ra sức bền bỉ, dẻo dai đáng kinh ngạc của
								Alaska nên đã thuần hóa, <br /> lai tạo vớimột số giống chó
								khác như St Bernard cho ra giống to lớn, khỏe <br /> mạnh có
								khả năng di chuyển và kéo xe trên tuyết trên chặng đường dài.
							</p>
							<br>
							<p>
								Tại Việt Nam, Alaska ngày càng trở nên nổi tiếng. Chúng được
								nhiều người <br /> nuôi làm thú cưng trong các gia đình. Thay
								vì chọn nuôi những loài <br />chó cảnh phổ biến khác, Alaska
								đem đến những trải nghiệm độc <br />đáo mà không loài chó nào
								có được.
							</p>
						</div></li>
					<li class="ps-banner" data-index="rs-2972" data-transition="random"
						data-slotamount="default" data-hideafterloop="0"
						data-hideslideonmobile="off" data-rotate="0"><img
						class="rev-slidebg" src="images/slider/3.jpg" alt=""
						data-bgposition="center center" data-bgfit="cover"
						data-bgrepeat="no-repeat" data-bgparallax="5" data-no-retina>
						<div class="tp-caption ps-banner__title" id="layer21"
							data-x="['left','left','left','left']"
							data-hoffset="['-60','15','15','15']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['-60','-40','-50','-70']" data-type="text"
							data-responsive_offset="on"
							data-textAlign="['center','center','center','center']"
							data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
							<p class="text-uppercase">Litter Robot 3</p>
						</div>
						<div class="tp-caption ps-banner__description" id="layer211"
							data-x="['left','left','left','left']"
							data-hoffset="['-60','15','15','15']"
							data-y="['middle','middle','middle','middle']"
							data-voffset="['30','50','50','50']" data-type="text"
							data-responsive_offset="on"
							data-textAlign="['center','center','center','center']"
							data-frames="[{&quot;delay&quot;:1200,&quot;speed&quot;:1500,&quot;frame&quot;:&quot;0&quot;,&quot;from&quot;:&quot;x:50px;opacity:0;&quot;,&quot;to&quot;:&quot;o:1;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:300,&quot;frame&quot;:&quot;999&quot;,&quot;to&quot;:&quot;x:50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power3.easeInOut&quot;}]">
							<p>
								Supa wanted something that was going to rep his East Coast <br>
								roots and, more specifically, his hometown of <br /> New York
								City in a big way.
							</p>
						</div></li>

				</ul>
			</div>
		</div>
		<div
			class="ps-section--features-product ps-section masonry-root pt-100 pb-100">
			<div class="ps-container">
				<div class="ps-section__header mb-50">
					<h3 class="ps-section__title" data-mask="features">- Features
						Products</h3>
					<ul class="ps-masonry__filter">
						<li class="current"><a href="javascript:" data-filter="*">All <sup>8</sup></a></li>
						<li><a href="javascript:" data-filter=".pet">Pet <sup>1</sup></a></li>
						<li><a href="javascript:" data-filter=".accessori">Accessori <sup>1</sup></a></li>
					</ul>
				</div>
				<div class="ps-section__content pb-50">
					<div class="masonry-wrapper" data-col-md="4" data-col-sm="2"
						data-col-xs="1" data-gap="30" data-radio="100%">
						<div class="ps-masonry">
							<div class="grid-sizer"></div>
							<c:forEach var="list" items="${list }">
								<div class="grid-item kids">
									<div class="grid-item__content-wrapper">
										<div class="ps-shoe mb-30">
											<div class="ps-shoe__thumbnail">
												<div class="ps-badge">
													<span>New</span>
												</div>
												<div class="ps-badge ps-badge--sale ps-badge--2nd">
													<span>-35%</span>
												</div>
												<a class="ps-shoe__favorite" href="javascript:"><i
													class="ps-icon-heart"></i></a><img
													src="https://tunglocpet.com/wp-content/uploads/2017/10/cho-corgi-pembroke-tunglocpet-03.jpg"
													style="height: 350px;" alt=""><a
													class="ps-shoe__overlay" href="pet-detail/${list.getId() }"></a>
											</div>
											<div class="ps-shoe__content">
												<div class="ps-shoe__variants">
													<div class="ps-shoe__variant normal">
														<img
															src="https://i.pinimg.com/originals/fd/e5/b9/fde5b9bdd5b6da8dd0087266b8f026a0.jpg"
															alt=""> <img
															src="https://i.pinimg.com/originals/a3/54/2d/a3542d1a2c27d8ad80862cfb9e05bfb6.jpg"
															alt=""> <img
															src="https://tapchithucung.vn/Uploads/images/cho-corgi-kem-chat-luong-2.jpeg"
															alt=""> <img
															src="https://vcdn-vnexpress.vnecdn.net/2020/07/17/iPiccy-collagedv-4811-1594954935.jpg"
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
												<div class="ps-shoe__detail">
													<a class="ps-shoe__name" href="pet-detail/${list.getId() }">${list.getPetName() }</a><span
														class="ps-shoe__price"> <del>${list.getDisplayPrice(1) }</del>
														&nbsp; 3.835.000 đ
													</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="ps-section--offer">
			<div class="ps-column">
				<a class="ps-offer" href="pet-listing.html"><img
					src="images/banner/home-banner-1.png" alt=""></a>
			</div>
			<div class="ps-column">
				<a class="ps-offer" href="acc-listing.html"><img
					src="images/banner/home-banner-2.png" alt=""></a>
			</div>
		</div>
		<div class="ps-section ps-section--top-sales ps-owl-root pt-80 pb-80">
			<div class="ps-container">
				<div class="ps-section__header mb-50">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
							<h3 class="ps-section__title" data-mask="PET">Top Sales Pet</h3>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
							<div class="ps-owl-actions">
								<a class="ps-prev" href="javascript:"><i class="ps-icon-arrow-right"></i>Prev</a><a
									class="ps-next" href="javascript:">Next<i class="ps-icon-arrow-left"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="ps-section__content">
					<div class="ps-owl--colection owl-slider" data-owl-auto="true"
						data-owl-loop="true" data-owl-speed="5000" data-owl-gap="30"
						data-owl-nav="false" data-owl-dots="false" data-owl-item="4"
						data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3"
						data-owl-item-lg="4" data-owl-duration="1000"
						data-owl-mousedrag="on">
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<div class="ps-badge">
										<span>New</span>
									</div>
									<div class="ps-badge ps-badge--sale ps-badge--2nd">
										<span>-35%</span>
									</div>
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://tapchithucung.vn/Uploads/images/content/benh-ve-ky-sinh-gay-benh-o-cho-Alaska.jpg"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img
												src="https://tindongvat.com/wp-content/uploads/2019/06/cho-alaska.jpg"
												alt=""> <img
												src="https://khachsanchomeo.com/wp-content/uploads/2020/03/cho-alaska-cho-tot.jpg"
												alt=""> <img
												src="https://meohaycuocsong.com/wp-content/uploads/2019/04/alaska-beo.png"
												alt=""> <img
												src="https://www.thukieng.com/wp-content/uploads/2019/01/49482101_1992628450826657_303573880528699392_n.jpg"
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="pet-detail.html">Alaska</a><span
											class="ps-shoe__price"> <del>6.400.000 đ</del> &nbsp;
											5.140.000 đ
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<div class="ps-badge">
										<span>New</span>
									</div>
									<!-- <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://tunglocpet.com/wp-content/uploads/2017/10/cho-corgi-pembroke-tunglocpet-03.jpg"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img
												src="https://i.pinimg.com/originals/fd/e5/b9/fde5b9bdd5b6da8dd0087266b8f026a0.jpg"
												alt=""> <img
												src="https://i.pinimg.com/originals/a3/54/2d/a3542d1a2c27d8ad80862cfb9e05bfb6.jpg"
												alt=""> <img
												src="https://tapchithucung.vn/Uploads/images/cho-corgi-kem-chat-luong-2.jpeg"
												alt=""> <img
												src="https://vcdn-vnexpress.vnecdn.net/2020/07/17/iPiccy-collagedv-4811-1594954935.jpg"
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="pet-detail.html">Corgi</a><span
											class="ps-shoe__price"> <del>5.900.000 đ</del> &nbsp;
											3.835.000 đ
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<div class="ps-badge">
										<span>New</span>
									</div>
									<div class="ps-badge ps-badge--sale ps-badge--2nd">
										<span>-35%</span>
									</div>
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://i.pinimg.com/736x/32/bf/fb/32bffb281cfd5a9828f1862c187adef4.jpg"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img
												src="https://sieupet.com/sites/default/files/pictures/images/tam-cho-pug-bi-rung-long.jpg"
												alt=""> <img
												src="https://i.pinimg.com/originals/b7/c6/d9/b7c6d95401fa8d32802a57ba79d45601.jpg"
												alt=""> <img
												src="https://i.pinimg.com/originals/4d/ea/47/4dea47d9451200e9ba0f683cb277ed5f.jpg"
												alt=""> <img
												src="https://i.pinimg.com/originals/fb/41/74/fb41743872d26512a1ed52a5e1259f8a.jpg"
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="javascript:">Pug</a><span
											class="ps-shoe__price"> <del>3.000.000 đ</del> &nbsp;
											1.950.000 đ
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<!-- <div class="ps-badge"><span>New</span></div>
                  <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://i.pinimg.com/originals/ef/ec/9f/efec9f666e35de94c5e11430ca2698b2.jpg"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img
												src="https://nationaltoday.com/wp-content/uploads/2020/02/national-golden-retriever-day.jpg"
												alt=""> <img
												src="https://gray-wifr-prod.cdn.arcpublishing.com/resizer/1axm4M0TpOvuzH0gG0fc2X9iza8=/1200x1200/smart/cloudfront-us-east-1.images.arcpublishing.com/gray/QOOBWEODD5JCJFBC77S35MP3PQ.jpg"
												alt=""> <img
												src="https://mydogsinfo.com/wp-content/uploads/2020/05/miniature-golden-retriever-puppy-i1-sz3.jpg"
												alt=""> <img
												src="https://radiocms-images.us1.eldarioncloud.com/resize/1200/https://storage.googleapis.com/media.mwcradio.com/podblogs/uploads/shallow-focus-photography-of-a-golden-retriever-686094.jpg"
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="pet-detail.html">Golden</a><span
											class="ps-shoe__price"> 5.500.000 đ</span>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<!-- <div class="ps-badge"><span>New</span></div>
                  <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://bloximages.newyork1.vip.townnews.com/stltoday.com/content/tncms/assets/v3/editorial/c/30/c309fd08-51b7-11e1-a42c-001a4bcf6878/56f2033d375e9.image.jpg?crop=1153%2C1153%2C107%2C0&resize=1200%2C1200&order=crop%2Cresize"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img
												src="https://images.theconversation.com/files/68247/original/image-20150105-13839-12zmqb8.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop"
												alt=""> <img
												src="https://i2-prod.edinburghlive.co.uk/incoming/article17912438.ece/ALTERNATES/s1200c/88347101_113512033597061_447899646556110848_n.jpg"
												alt=""> <img
												src="https://i2-prod.glasgowlive.co.uk/incoming/article17881854.ece/ALTERNATES/s1200c/0_Screen-Shot-2020-03-07-at-131443.png"
												alt=""> <img
												src="https://i.pinimg.com/originals/31/43/74/314374f8211f9b44599eb38415871cc9.jpg"
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="pet-detail.html">Beagle</a><span
											class="ps-shoe__price"> 7.040.000 đ</span>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-shoes--carousel">
							<div class="ps-shoe mb-30">
								<div class="ps-shoe__thumbnail">
									<!-- <div class="ps-badge"><span>New</span></div>
                  <div class="ps-badge ps-badge--sale ps-badge--2nd"><span>-35%</span></div> -->
									<a class="ps-shoe__favorite" href="javascript:"><i
										class="ps-icon-heart"></i></a><img
										src="https://salt.tikicdn.com/cache/w1200/ts/product/85/b9/56/5ef1645cc1535406545b9064c3a544b8.jpg"
										style="height: 350px;" alt=""><a
										class="ps-shoe__overlay" href="pet-detail.html"></a>
								</div>
								<div class="ps-shoe__content">
									<div class="ps-shoe__variants">
										<div class="ps-shoe__variant normal">
											<img src="https://pbs.twimg.com/media/EEmtGnwUUAE3rex.jpg"
												alt=""> <img
												src="https://i.pinimg.com/originals/87/a4/fa/87a4fa07fe150bcbf72e523cfc92957f.jpg"
												alt=""> <img
												src="https://jordan.arabsclassifieds.com/images/2019/06/19/234/awesome-teacup-pomeranian-puppies-ready-now_3.jpg"
												alt=""> <img
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
									<div class="ps-shoe__detail">
										<a class="ps-shoe__name" href="pet-detail.html">Pomeranian</a><span
											class="ps-shoe__price"> 5.500.000 đ</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ps-container">
				<div class="ps-section__header mb-50">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
							<h3 class="ps-section__title" data-mask="ACCESSORI">Top
								Sales Accessori</h3>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
							<div class="ps-owl-actions">
								<a class="ps-prev" href="javascript:"><i
									class="ps-icon-arrow-right"></i>Prev</a><a class="ps-next" href="javascript:">Next<i
									class="ps-icon-arrow-left"></i></a>
							</div>
						</div>
					</div>
				</div>

				
					<div class="ps-section__content">
						<div class="ps-owl--colection owl-slider" data-owl-auto="true"
							data-owl-loop="true" data-owl-speed="5000" data-owl-gap="30"
							data-owl-nav="false" data-owl-dots="false" data-owl-item="4"
							data-owl-item-xs="1" data-owl-item-sm="2" data-owl-item-md="3"
							data-owl-item-lg="4" data-owl-duration="1000"
							data-owl-mousedrag="on">
						<c:forEach var="listAcc" items="${listAcc }">
							<div class="ps-shoes--carousel">
								<div class="ps-shoe mb-30">
									<div class="ps-shoe__thumbnail">
										<a class="ps-shoe__favorite" href="javascript:"><i
											class="ps-icon-heart"></i></a><img
											src="https://vn-live-01.slatic.net/p/fab431d28976ce60654b4fbfce556207.jpg"
											style="height: 350px;" alt=""><a
											class="ps-shoe__overlay"
											href="acc-detail/${listAcc.getId() }"></a>
									</div>
									<div class="ps-shoe__content">
										<div class="ps-shoe__variants">
											<div class="ps-shoe__variant normal">
												<img
													src="https://salt.tikicdn.com/cache/w1200/ts/product/98/2d/a2/17b4d6793b3a3c93c62091b53399e676.png"
													alt=""> <img
													src="https://bizweb.dktcdn.net/100/307/433/products/v-ng-c-nh-g-n-chu-ng-cho-th-c-ng-cutepets-ph-ki-n-ch-m-o-pet-shop-h-n-i-1.jpg?v=1527332433290"
													alt=""> <img
													src="https://vn-test-11.slatic.net/p/562421a78e168ed2f637ce1adb967f8d.jpg"
													alt=""> <img
													src="https://vn-live-01.slatic.net/p/28837d8eb86f722929774ac78b6a1347.jpg"
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
										<div class="ps-shoe__detail">
											<a class="ps-shoe__name"
												href="acc-detail/${listAcc.getId() }">${listAcc.getName() }</a>
											<span class="ps-shoe__price">${listAcc.getDisplayPrice(1) }</span>
										</div>
									</div>
								</div>
							</div>
				</c:forEach>
				<!-- 							end div card -->
			</div>
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
								<header>
									<a class="ps-logo" href="index.html"><img
										src="images/logo-white.png" alt=""></a>
									<h3 class="ps-widget__title">Address 1</h3>
								</header>
								<footer>
									<p>
										<strong>13 Âu cơ, Tây Hồ, Hà Nội</strong>
									</p>
									<p>
										Email: <a href='mailto:support@store.com'>petmarksupport@store.com</a>
									</p>
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
									<p>
										<strong>13 Âu cơ, Tây Hồ, Hà Nội</strong>
									</p>
									<p>
										Email: <a href='mailto:support@store.com'>petmarksupport@store.com</a>
									</p>
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
							<p>
								&copy; <a href="index.html">PETMARK</a>, If you find a place
								that sells cheaper, we will refund you!!!
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="plugins/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript"
		src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
	<script type="text/javascript"
		src="plugins/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="plugins/gmap3.min.js"></script>
	<script type="text/javascript" src="plugins/imagesloaded.pkgd.js"></script>
	<script type="text/javascript" src="plugins/isotope.pkgd.min.js"></script>
	<script type="text/javascript"
		src="plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="plugins/jquery.matchHeight-min.js"></script>
	<script type="text/javascript" src="plugins/slick/slick/slick.min.js"></script>
	<script type="text/javascript"
		src="plugins/elevatezoom/jquery.elevatezoom.js"></script>
	<script type="text/javascript"
		src="plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="plugins/jquery-ui/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx39JFH5nhxze1ZydH-Kl8xXM3OK4fvcg&amp;region=GB"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="Script/index.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript"
		src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
	<!-- Custom scripts-->
	<script type="text/javascript" src="js/main.js"></script>
</body>

</html>