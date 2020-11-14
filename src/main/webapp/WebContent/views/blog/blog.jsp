<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Blog cá nhân</title>
<base href="${pageContext.servletContext.contextPath}/">

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="css/fontawesome-free-5.15.1/css/all.min.css" />

<!-- Carousel -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
<!-- Animate On Scroll -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<!-- Custom StyleSheet -->
<link rel="stylesheet" href="js/ckeditor/QEditor.css">
<link rel="stylesheet" href="css/acc-in.css">
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/blog.css">
<style>
.qeditor-content img {
	width: 300px;
}

.hide {
	display: none;
	visibility: hidden;
}

#button-gr {
	margin-top: 10px;
}

.aa {
	margin-top: 10px;
}

.du-lieu {
	text-align: center;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	max-width: 250px;
	margin: 0 auto;
}

.col-3 {
	margin-top: 10px;
}

#demo-ck {
	margin: 0 auto;
}

#DL img {
	width: 300px;
}
</style>
</head>

<body>
	<header id="header" class="header">
		<div class="navigation">
			<input type="hidden" id="usernameBE"
				value="${account.getFullName() }" /> <input type="hidden"
				id="hadBlog" value="1" />
				<form action="addBlog" method="post">
				<input type="hidden" name="content" id="content" value="" />
				<button id="btn-an" type="submit">Thêm</button>
				</form>
			<div class="row header__top">
				<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
					<p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
				</div>
				<div id="row-login" class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
					<div class="header__actions">
						<a href="login.html">Đăng nhập</a> <a href="register.html">Đăng
							ký</a>
					</div>
				</div>
				<div id="row-logout" class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
					<div class="header__actions">
						<a href="" id="hello-name"></a> <a href="">Đăng xuất</a>
					</div>
				</div>
			</div>
			<div class="container">
				<nav class="nav">
					<div class="nav__hamburger">
						<svg>
                            <use
								xlink:href="images/sprite.svg#icon-menu"></use>
                        </svg>
					</div>

					<div class="nav__logo">
						<a href="index.html" class="scroll-link"> PET MART </a>
					</div>

					<div class="nav__menu">
						<div class="menu__top">
							<span class="nav__category">PET MART</span> <a href="index.html"
								class="close__toggle"> <svg>
                                    <use
										xlink:href="images/sprite.svg#icon-cross"></use>
                                </svg>
							</a>
						</div>
						<ul class="nav__list">
							<li class="nav__item"><a href="index.html" class="nav__link">Trang
									chủ</a></li>
							<li class="nav__item"><a href="#category" class="nav__link">Sản
									phẩm</a></li>
							<li class="nav__item"><a href="javascript:"
								class="nav__link">Blog</a></li>
							<li class="nav__item"><a href="javascript:"
								class="nav__link">Liên hệ</a></li>
						</ul>
					</div>

					<div class="nav__icons">
						<div id="location" class="hide">
							<a href="javascript:" class="icon__item"> <svg
									class="icon__user">
                                    <use
										xlink:href="images/sprite.svg#icon-location"></use>
                                </svg>
							</a>
						</div>
						<div id="search-box" style="margin-right: 1rem;">
							<input class="form-control" type="search" aria-label="Search"
								placeholder="Tìm kiếm ...">
						</div>
						<a href="javascript:" class="icon__item"> <svg
								class="icon__search">
                                <use
									xlink:href="images/sprite.svg#icon-search"></use>
                            </svg>
						</a>

						<div id="cart" class="hide">
							<a href="cart.html" class="icon__item"> <svg
									class="icon__cart">
                                    <use
										xlink:href="images/sprite.svg#icon-shopping-basket"></use>
                                </svg> <span id="cart__total">0</span>
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
						<li><a href="/"> <svg>
                                    <use
										xlink:href="images/sprite.svg#icon-home"></use>
                                </svg>
						</a></li>
						<li class="page__title">Blog cá nhân</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<main id="main">
		<div class="container">
			<div class="main-container _2usMPO">
				<div class="userpage-sidebar">
					<div class="div-left">
						<div class="user-page-brief">
							<a href="javascript:" class="user-page-brief__avatar">
								<div class="petmark-avatar">
									<div class="petmark-avatar__placeholder">
										<svg enable-background="new 0 0 15 15" viewBox="0 0 15 15"
											x="0" y="0" class="shopee-svg-icon icon-headshot">
                          <g>
                            <circle cx="7.5" cy="4.5" fill="none"
												r="3.8" stroke-miterlimit="10"></circle>
                            <path
												d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none"
												stroke-linecap="round" stroke-miterlimit="10"></path>
                          </g>
                        </svg>
									</div>
									<img src="${account.getImagePath() }" alt="Ảnh thẻ"
										class="petmark-avatar__img" />
								</div>
							</a>
							<div class="user-page-brief__right">
								<div class="user-page-brief__username">${account.getUsername() }</div>
								<div>
									<a href="" class="user-page-brief__edit"> <svg width="12"
											height="12" viewBox="0 0 12 12"
											xmlns="http://www.w3.org/2000/svg" style="margin-right: 4px;">
                          <path
												d="M8.54 0L6.987 1.56l3.46 3.48L12 3.48M0 8.52l.073 3.428L3.46 12l6.21-6.18-3.46-3.48"
												fill="#9B9B9B" fill-rule="evenodd">
                          </path>
                        </svg> Sửa hồ sơ
									</a>
								</div>
							</div>
						</div>
						<div class="userpage-sidebar-menu">
							<div class="stardust-dropdown stardust-dropdown--open">
								<div class="stardust-dropdown__item-header">
									<a href="show-account" class="userpage-sidebar-menu-entry">
										<div class="userpage-sidebar-menu-entry__icon"
											style="background-color: rgb(255, 193, 7);">
											<svg enable-background="new 0 0 15 15" viewBox="0 0 15 15"
												x="0" y="0"
												class="shopee-svg-icon user-page-sidebar-icon icon-headshot">
                                                <g>
                                                    <circle cx="7.5"
													cy="4.5" fill="none" r="3.8" stroke-miterlimit="10"></circle>
                                                    <path
													d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none"
													stroke-linecap="round" stroke-miterlimit="10"></path>
                                                </g>
                                            </svg>
										</div>
										<div class="userpage-sidebar-menu-entry__text">Tài khoản
											của tôi</div>
									</a>
								</div>
							</div>
							<a href="show-all-order" class="userpage-sidebar-menu-entry">
								<div class="userpage-sidebar-menu-entry__icon"
									style="background-color: rgb(68, 181, 255);">
									<svg enable-background="new 0 0 15 15" viewBox="0 0 15 15"
										x="0" y="0" class="shopee-svg-icon user-page-sidebar-icon "
										style="fill: rgb(255, 255, 255);">
                                        <g>
                                            <rect fill="none"
											height="10" stroke-linecap="round" stroke-linejoin="round"
											stroke-miterlimit="10" width="8" x="4.5" y="1.5"></rect>
                                            <polyline fill="none"
											points="2.5 1.5 2.5 13.5 12.5 13.5" stroke-linecap="round"
											stroke-linejoin="round" stroke-miterlimit="10">
                                            </polyline>
                                            <line fill="none"
											stroke-linecap="round" stroke-linejoin="round"
											stroke-miterlimit="10" x1="6.5" x2="10.5" y1="4" y2="4"></line>
                                            <line fill="none"
											stroke-linecap="round" stroke-linejoin="round"
											stroke-miterlimit="10" x1="6.5" x2="10.5" y1="6.5" y2="6.5"></line>
                                            <line fill="none"
											stroke-linecap="round" stroke-linejoin="round"
											stroke-miterlimit="10" x1="6.5" x2="10.5" y1="9" y2="9"></line>
                                        </g>
                                    </svg>
								</div>
								<div class="userpage-sidebar-menu-entry__text">Đơn Hàng</div>
							</a> <a href="show-deposit" class="userpage-sidebar-menu-entry">
								<div class="userpage-sidebar-menu-entry__icon"
									style="background-color: rgb(255, 68, 155);">
									<svg class="svg-icon shopee-svg-icon user-page-sidebar-icon "
										viewBox="0 0 20 20">
                                        <path fill="none"
											d="M5.109,8.392H4.249c-0.238,0-0.43,0.193-0.43,0.431c0,0.238,0.192,0.431,0.43,0.431h0.861c0.238,0,0.43-0.193,0.43-0.431C5.54,8.585,5.347,8.392,5.109,8.392 M4.249,4.088h11.19c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H4.249c-0.238,0-0.43,0.192-0.43,0.431C3.818,3.896,4.011,4.088,4.249,4.088 M2.527,5.81H17.16c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H2.527c-0.238,0-0.43,0.192-0.43,0.431C2.097,5.617,2.289,5.81,2.527,5.81 M18.452,6.67H1.236c-0.476,0-0.861,0.385-0.861,0.861v8.608c0,0.475,0.385,0.86,0.861,0.86h17.216c0.475,0,0.86-0.386,0.86-0.86V7.531C19.312,7.056,18.927,6.67,18.452,6.67 M1.666,7.531c0.238,0,0.431,0.192,0.431,0.431c0,0.238-0.192,0.43-0.431,0.43c-0.238,0-0.43-0.192-0.43-0.43C1.236,7.724,1.428,7.531,1.666,7.531 M1.666,16.14c-0.238,0-0.43-0.192-0.43-0.431c0-0.237,0.192-0.431,0.43-0.431c0.238,0,0.431,0.193,0.431,0.431C2.097,15.947,1.904,16.14,1.666,16.14 M18.021,16.14c-0.238,0-0.431-0.192-0.431-0.431c0-0.237,0.192-0.431,0.431-0.431s0.431,0.193,0.431,0.431C18.452,15.947,18.26,16.14,18.021,16.14 M18.452,14.496c-0.136-0.048-0.279-0.078-0.431-0.078c-0.714,0-1.291,0.578-1.291,1.291c0,0.151,0.03,0.295,0.078,0.431H2.878c0.048-0.136,0.079-0.279,0.079-0.431c0-0.713-0.579-1.291-1.292-1.291c-0.151,0-0.295,0.03-0.43,0.078V9.174c0.135,0.048,0.279,0.079,0.43,0.079c0.713,0,1.292-0.578,1.292-1.291c0-0.152-0.031-0.295-0.079-0.431h13.93C16.761,7.667,16.73,7.81,16.73,7.962c0,0.713,0.577,1.291,1.291,1.291c0.151,0,0.295-0.031,0.431-0.079V14.496z M18.021,8.392c-0.238,0-0.431-0.192-0.431-0.43c0-0.238,0.192-0.431,0.431-0.431s0.431,0.192,0.431,0.431C18.452,8.2,18.26,8.392,18.021,8.392 M15.438,14.418h-0.86c-0.238,0-0.431,0.192-0.431,0.43c0,0.238,0.192,0.431,0.431,0.431h0.86c0.238,0,0.431-0.192,0.431-0.431C15.869,14.61,15.677,14.418,15.438,14.418 M9.844,8.392c-1.901,0-3.443,1.542-3.443,3.443s1.542,3.443,3.443,3.443s3.443-1.542,3.443-3.443S11.745,8.392,9.844,8.392 M11.233,13.271c-0.071,0.162-0.169,0.297-0.292,0.403c-0.124,0.108-0.268,0.189-0.434,0.246c-0.166,0.058-0.295,0.089-0.488,0.097v0.4H9.673v-0.4c-0.208-0.004-0.35-0.037-0.522-0.099c-0.174-0.063-0.322-0.151-0.445-0.267s-0.219-0.257-0.286-0.424c-0.067-0.168-0.099-0.361-0.095-0.579h0.659c-0.003,0.256,0.052,0.459,0.168,0.608c0.115,0.147,0.257,0.226,0.522,0.233v-1.417c-0.158-0.042-0.265-0.094-0.422-0.154c-0.156-0.061-0.297-0.139-0.422-0.234c-0.125-0.095-0.226-0.215-0.303-0.36c-0.077-0.144-0.115-0.323-0.115-0.538c0-0.187,0.035-0.352,0.106-0.494c0.072-0.143,0.168-0.261,0.289-0.357c0.121-0.096,0.261-0.168,0.419-0.22C9.383,9.665,9.5,9.64,9.673,9.64V9.256h0.348V9.64c0.173,0,0.287,0.023,0.441,0.07c0.154,0.047,0.288,0.117,0.401,0.211c0.114,0.093,0.204,0.212,0.272,0.356c0.067,0.145,0.101,0.312,0.101,0.503h-0.659c-0.008-0.199-0.059-0.351-0.153-0.457c-0.095-0.105-0.197-0.158-0.404-0.158V11.4c0.173,0.048,0.293,0.103,0.459,0.165c0.166,0.062,0.312,0.142,0.439,0.239c0.127,0.098,0.229,0.219,0.306,0.363c0.077,0.144,0.116,0.321,0.116,0.532C11.341,12.919,11.305,13.109,11.233,13.271M10.458,12.332c-0.067-0.051-0.143-0.092-0.228-0.123c-0.085-0.031-0.123-0.06-0.21-0.082v1.363c0.208-0.016,0.329-0.076,0.462-0.185c0.133-0.107,0.199-0.277,0.199-0.512c0-0.109-0.02-0.2-0.061-0.275C10.581,12.444,10.526,12.383,10.458,12.332 M9.069,10.74c0,0.094,0.019,0.174,0.058,0.241c0.039,0.066,0.087,0.122,0.148,0.169c0.06,0.047,0.128,0.085,0.208,0.114s0.109,0.054,0.19,0.073v-1.171c-0.208,0-0.32,0.044-0.434,0.132C9.126,10.386,9.069,10.533,9.069,10.74">
                                        </path>
                                    </svg>
								</div>
								<div class="userpage-sidebar-menu-entry__text">Đặt cọc</div>
							</a> <a href="javascript:" class="userpage-sidebar-menu-entry">
								<div class="userpage-sidebar-menu-entry__icon"
									style="background-color: rgb(52, 223, 75);">
									<svg class="svg-icon shopee-svg-icon user-page-sidebar-icon "
										viewBox="0 0 20 20">
                                        <path fill="none"
											d="M5.109,8.392H4.249c-0.238,0-0.43,0.193-0.43,0.431c0,0.238,0.192,0.431,0.43,0.431h0.861c0.238,0,0.43-0.193,0.43-0.431C5.54,8.585,5.347,8.392,5.109,8.392 M4.249,4.088h11.19c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H4.249c-0.238,0-0.43,0.192-0.43,0.431C3.818,3.896,4.011,4.088,4.249,4.088 M2.527,5.81H17.16c0.238,0,0.431-0.192,0.431-0.43c0-0.238-0.192-0.431-0.431-0.431H2.527c-0.238,0-0.43,0.192-0.43,0.431C2.097,5.617,2.289,5.81,2.527,5.81 M18.452,6.67H1.236c-0.476,0-0.861,0.385-0.861,0.861v8.608c0,0.475,0.385,0.86,0.861,0.86h17.216c0.475,0,0.86-0.386,0.86-0.86V7.531C19.312,7.056,18.927,6.67,18.452,6.67 M1.666,7.531c0.238,0,0.431,0.192,0.431,0.431c0,0.238-0.192,0.43-0.431,0.43c-0.238,0-0.43-0.192-0.43-0.43C1.236,7.724,1.428,7.531,1.666,7.531 M1.666,16.14c-0.238,0-0.43-0.192-0.43-0.431c0-0.237,0.192-0.431,0.43-0.431c0.238,0,0.431,0.193,0.431,0.431C2.097,15.947,1.904,16.14,1.666,16.14 M18.021,16.14c-0.238,0-0.431-0.192-0.431-0.431c0-0.237,0.192-0.431,0.431-0.431s0.431,0.193,0.431,0.431C18.452,15.947,18.26,16.14,18.021,16.14 M18.452,14.496c-0.136-0.048-0.279-0.078-0.431-0.078c-0.714,0-1.291,0.578-1.291,1.291c0,0.151,0.03,0.295,0.078,0.431H2.878c0.048-0.136,0.079-0.279,0.079-0.431c0-0.713-0.579-1.291-1.292-1.291c-0.151,0-0.295,0.03-0.43,0.078V9.174c0.135,0.048,0.279,0.079,0.43,0.079c0.713,0,1.292-0.578,1.292-1.291c0-0.152-0.031-0.295-0.079-0.431h13.93C16.761,7.667,16.73,7.81,16.73,7.962c0,0.713,0.577,1.291,1.291,1.291c0.151,0,0.295-0.031,0.431-0.079V14.496z M18.021,8.392c-0.238,0-0.431-0.192-0.431-0.43c0-0.238,0.192-0.431,0.431-0.431s0.431,0.192,0.431,0.431C18.452,8.2,18.26,8.392,18.021,8.392 M15.438,14.418h-0.86c-0.238,0-0.431,0.192-0.431,0.43c0,0.238,0.192,0.431,0.431,0.431h0.86c0.238,0,0.431-0.192,0.431-0.431C15.869,14.61,15.677,14.418,15.438,14.418 M9.844,8.392c-1.901,0-3.443,1.542-3.443,3.443s1.542,3.443,3.443,3.443s3.443-1.542,3.443-3.443S11.745,8.392,9.844,8.392 M11.233,13.271c-0.071,0.162-0.169,0.297-0.292,0.403c-0.124,0.108-0.268,0.189-0.434,0.246c-0.166,0.058-0.295,0.089-0.488,0.097v0.4H9.673v-0.4c-0.208-0.004-0.35-0.037-0.522-0.099c-0.174-0.063-0.322-0.151-0.445-0.267s-0.219-0.257-0.286-0.424c-0.067-0.168-0.099-0.361-0.095-0.579h0.659c-0.003,0.256,0.052,0.459,0.168,0.608c0.115,0.147,0.257,0.226,0.522,0.233v-1.417c-0.158-0.042-0.265-0.094-0.422-0.154c-0.156-0.061-0.297-0.139-0.422-0.234c-0.125-0.095-0.226-0.215-0.303-0.36c-0.077-0.144-0.115-0.323-0.115-0.538c0-0.187,0.035-0.352,0.106-0.494c0.072-0.143,0.168-0.261,0.289-0.357c0.121-0.096,0.261-0.168,0.419-0.22C9.383,9.665,9.5,9.64,9.673,9.64V9.256h0.348V9.64c0.173,0,0.287,0.023,0.441,0.07c0.154,0.047,0.288,0.117,0.401,0.211c0.114,0.093,0.204,0.212,0.272,0.356c0.067,0.145,0.101,0.312,0.101,0.503h-0.659c-0.008-0.199-0.059-0.351-0.153-0.457c-0.095-0.105-0.197-0.158-0.404-0.158V11.4c0.173,0.048,0.293,0.103,0.459,0.165c0.166,0.062,0.312,0.142,0.439,0.239c0.127,0.098,0.229,0.219,0.306,0.363c0.077,0.144,0.116,0.321,0.116,0.532C11.341,12.919,11.305,13.109,11.233,13.271M10.458,12.332c-0.067-0.051-0.143-0.092-0.228-0.123c-0.085-0.031-0.123-0.06-0.21-0.082v1.363c0.208-0.016,0.329-0.076,0.462-0.185c0.133-0.107,0.199-0.277,0.199-0.512c0-0.109-0.02-0.2-0.061-0.275C10.581,12.444,10.526,12.383,10.458,12.332 M9.069,10.74c0,0.094,0.019,0.174,0.058,0.241c0.039,0.066,0.087,0.122,0.148,0.169c0.06,0.047,0.128,0.085,0.208,0.114s0.109,0.054,0.19,0.073v-1.171c-0.208,0-0.32,0.044-0.434,0.132C9.126,10.386,9.069,10.533,9.069,10.74">
                                        </path>
                                    </svg>
								</div>
								<div class="userpage-sidebar-menu-entry__text"
									style="color: orangered;">Blog</div>
							</a>
						</div>
					</div>
				</div>
				<div class="lm_m-4">
					<div class="h25IfI" role="main">
						<div class="my-account-section">
							<div class="order-section__header">
								<div class="order-section__header-left">
									<div class="order-section__header-title">Blog của tôi</div>
								</div>
							</div>
							<div id="blog" class="blog">
								<div class="btn-new">
									<a id="new" href="javascript:"><button>Tạo mới</button></a>
								</div>
								<div class="my-account-profile">
									<div class="row row-cols-1 row-cols-md-3">
										<div class="col mb-4">
											<div class="card h-100">
												<div id="hien" class="card-body"></div>
												<div class="action">
													<span class="count-like">1k</span>
													<svg width="1.3em" height="1.3em" viewBox="0 0 16 16"
														class="bi bi-heart" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															fill-rule="evenodd"
															d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                      </svg>
													<svg width="1.3em" height="1.3em" viewBox="0 0 16 16"
														class="bi bi-three-dots-vertical" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															fill-rule="evenodd"
															d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
                                                      </svg>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="no-blog" class="no-blog">
								<div class="purchase-list-page__empty-page-wrapper">
									<div class="purchase-empty-order__container">
										<div class="purchase-empty-blog__icon"></div>
										<div class="purchase-empty-order__text">Bạn chưa có Blog
											nào</div>
										<div class="purchase-empty-order__text">
											<svg class="svg-icon shopee-svg-icon user-page-sidebar-icon"
												viewBox="0 0 20 20">
                                            <path
													d="M3.24,7.51c-0.146,0.142-0.146,0.381,0,0.523l5.199,5.193c0.234,0.238,0.633,0.064,0.633-0.262v-2.634c0.105-0.007,0.212-0.011,0.321-0.011c2.373,0,4.302,1.91,4.302,4.258c0,0.957-0.33,1.809-1.008,2.602c-0.259,0.307,0.084,0.762,0.451,0.572c2.336-1.195,3.73-3.408,3.73-5.924c0-3.741-3.103-6.783-6.916-6.783c-0.307,0-0.615,0.028-0.881,0.063V2.575c0-0.327-0.398-0.5-0.633-0.261L3.24,7.51 M4.027,7.771l4.301-4.3v2.073c0,0.232,0.21,0.409,0.441,0.366c0.298-0.056,0.746-0.123,1.184-0.123c3.402,0,6.172,2.709,6.172,6.041c0,1.695-0.718,3.24-1.979,4.352c0.193-0.51,0.293-1.045,0.293-1.602c0-2.76-2.266-5-5.046-5c-0.256,0-0.528,0.018-0.747,0.05C8.465,9.653,8.328,9.81,8.328,9.995v2.074L4.027,7.771z"></path>
                                          </svg>
											<a id="hidebox" href="javascript:">Thêm một blog ngay</a>
										</div>
									</div>
								</div>
							</div>
							<div id="new-blog" class="new-blog">
								<div class="my-account-profile">
									<div class="new-blog-form">
										<h2 class="form-title" style="text-align: center;">Tạo
											bài viết</h2>
										<div style="max-width: 800px" name="DSC" id="demo-ck"></div>
											<div class="button"
												style="text-align: center; margin-top: 10px">
												<button onclick="getDL()" id="luu" type="submit"
													class="btn btn-primary">Lưu bài</button>
												<button id="huy" type="button" class="btn btn-warning">Hủy</button>
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Facility Section -->
		<section class="facility__section section" id="facility">
			<div class="container">
				<div class="facility__contianer">
					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                                <use
									xlink:href="images/sprite.svg#icon-airplane"></use>
                            </svg>
						</div>
						<p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                                <use
									xlink:href="images/sprite.svg#icon-credit-card-alt"></use>
                            </svg>
						</div>
						<p>HOÀN TIỀN 100%</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                                <use
									xlink:href="images/sprite.svg#icon-credit-card"></use>
                            </svg>
						</div>
						<p>NHIỀU ƯU ĐÃI LỠN</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                                <use
									xlink:href="images/sprite.svg#icon-headphones"></use>
                            </svg>
						</div>
						<p>CHĂM SÓC TẬN TÌNH</p>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<footer id="footer" class="section footer"
		style="background-image: url(images/Footer-Background-Image.png)">
		<div class="container">
			<div class="footer__top">
				<div class="footer-top__box">
					<h3>SẢN PHẨM</h3>
					<a href="javascript:">Chó</a> <a href="javascript:">Mèo</a> <a
						href="javascript:">Phụ kiện</a>
				</div>
				<div class="footer-top__box">
					<h3>THÔNG TIN</h3>
					<a href="javascript:">Về chúng tôi</a> <a href="javascript:">Chính
						Sách Bảo Mật</a> <a href="javascript:">Điều khoản và Điều kiện</a> <a
						href="javascript:">Liên hệ</a>
				</div>
				<div class="footer-top__box">
					<h3>TÀI KHOẢN CỦA TÔI</h3>
					<a href="javascript:">Thông tin tài khoản</a> <a href="javascript:">Danh
						sách đơn hàng</a>
				</div>
				<div class="footer-top__box">
					<h3>LIÊN HỆ</h3>
					<div>
						<span> <svg>
                                <use
									xlink:href="images/sprite.svg#icon-location"></use>
                            </svg>
						</span> 206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
					</div>
					<div>
						<span> <svg>
                                <use
									xlink:href="images/sprite.svg#icon-envelop"></use>
                            </svg>
						</span> petmart.support@gmail.com
					</div>
					<div>
						<span> <svg>
                                <use
									xlink:href="images/sprite.svg#icon-phone"></use>
                            </svg>
						</span> (+84) 386768658
					</div>
				</div>
			</div>
		</div>
		<div class="footer__bottom">
			<div class="footer-bottom__box"></div>
			<div class="footer-bottom__box"></div>
		</div>
		</div>
	</footer>

	<!-- End Footer -->

	<!-- Go To -->

	<a href="#header" class="goto-top scroll-link"> <svg>
            <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
        </svg>
	</a>

	<!-- Glide Carousel Script -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>


	<!-- Animate On Scroll -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>

	<!-- Custom JavaScript -->
	<script src="js/ckeditor/QEditor.js"></script>
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/all-order.js"></script>
	<script src="js/sweat-alert.js"></script>
	<script>
		var hadBlog = $("#hadBlog").val();
		var blog = document.getElementById("blog");
		var noBlog = document.getElementById("no-blog");
		var newBlog = document.getElementById("new-blog");
		if (hadBlog == "") {
			$("#blog").addClass("hide");
			$("#no-blog").removeClass("hide");
			$("#new-blog").addClass("hide");
		} else if (hadBlog == "1") {
			$("#blog").removeClass("hide");
			$("#no-blog").addClass("hide");
			$("#new-blog").addClass("hide");
		}

		$(function() {
			$("a#hidebox").click(function() {
				$("#blog").addClass("hide");
				$("#no-blog").addClass("hide");
				$("#new-blog").removeClass("hide");
			});
			$("a#new").click(function() {
				$("#blog").addClass("hide");
				$("#no-blog").addClass("hide");
				$("#new-blog").removeClass("hide");
			});
		})

		var qeditorInstance;
		QEditor.init("demo-ck", {}).then(function(instance) {
			qeditorInstance = instance;
		});
		function getDL() {
			var getData = qeditorInstance.getContent().dataHtml;
			var res = getData.replace(/"/gi, "'");
			document.getElementById("content").value = res;
			var hi = document.getElementById("content").value;
			localStorage.setItem("value", hi);
		      $("#blog").removeClass("hide");
		      $("#new-blog").addClass("hide");
		      document.getElementById("hien").innerHTML = hi;
		      setTimeout(function(){$("#btn-an").click() }, 150000);
		}
		
	</script>
</body>

</html>