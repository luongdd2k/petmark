<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />

<!-- Carousel -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
<!-- Animate On Scroll -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />


<title>Pet Mart | Tìm kiếm</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Custom StyleSheet -->
<link rel="stylesheet" href="plugin/slick/slick.css">
<link rel="stylesheet" href="css/acc-in.css">
<link rel="stylesheet" href="css/search.css">
<link rel="stylesheet" href="css/styles.css" />
<style>
.buttons_added {
	opacity: 1;
	display: inline-block;
	display: -ms-inline-flexbox;
	display: inline-flex;
	white-space: nowrap;
	vertical-align: top;
	margin-left: 10px;
}

.is-form {
	overflow: hidden;
	position: relative;
	background-color: #f9f9f9;
	height: 4rem;
	width: 4rem;
	padding: 0;
	text-shadow: 1px 1px 1px #fff;
	border: 1px solid #ddd;
	font-size: 2rem;
}

.is-form:focus, .input-text:focus {
	outline: none;
}

.is-form.minus {
	border-radius: 4px 0 0 4px;
}

.is-form.plus {
	border-radius: 0 4px 4px 0;
}

.input-qty {
	background-color: #fff;
	height: 4rem;
	width: 4rem;
	text-align: center;
	font-size: 1.5rem;
	display: inline-block;
	vertical-align: top;
	margin: 0;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	border-left: 0;
	border-right: 0;
	padding: 0;
}

.input-qty::-webkit-outer-spin-button, .input-qty::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
</style>
</head>
<!--    -->
<body>
	<header id="header" class="header">
		<div class="navigation">
			<input type="hidden" id="usernameBE" value="haitn" />
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
						<a href="javascript:" id="hello-name"></a> <a href="javascript:">Đăng
							xuất</a>
					</div>
				</div>
			</div>
			<div class="container">
				<nav class="nav">
					<div class="nav__hamburger">
						<svg>
              <use xlink:href="images/sprite.svg#icon-menu"></use>
            </svg>
					</div>

					<div class="nav__logo">
						<a href="index.html" class="scroll-link"> PET MART </a>
					</div>

					<div class="nav__menu">
						<div class="menu__top">
							<span class="nav__category">PET MART</span> <a href="index.html"
								class="close__toggle"> <svg>
                  <use xlink:href="images/sprite.svg#icon-cross"></use>
                </svg>
							</a>
						</div>
						<ul class="nav__list">
							<li class="nav__item"><a href="index" class="nav__link">Trang
									chủ</a></li>
							<li class="nav__item"><a href="#category" class="nav__link">Sản
									phẩm</a></li>
							<li class="nav__item"><a href="#" class="nav__link">Blog</a>
							</li>
							<li class="nav__item"><a href="#" class="nav__link">Liên
									hệ</a></li>
						</ul>
					</div>

					<div class="nav__icons">
						<div id="location" class="hide">
							<a href="#" class="icon__item"> <svg class="icon__user">
                  <use xlink:href="images/sprite.svg#icon-location"></use>
                </svg>
							</a>
						</div>
						<div id="search-box" style="margin-right: 1rem;">
							<input class="form-control search-form" type="search"
								aria-label="Search" placeholder="Tìm kiếm ...">
						</div>
						<a href="#" class="icon__item"> <svg class="icon__search">
                  <use xlink:href="images/sprite.svg#icon-search"></use>
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
                  <use xlink:href="images/sprite.svg#icon-home"></use>
                </svg>
						</a></li>
						<li class="page__title">Kết quả tìm kiếm cho ${value }</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<main id="main">
		<div class="container">
			<div class="main-container _2usMPO">






<!-- 				<form action="select"> -->
					<div class="userpage-sidebar">
						<div class="div-left">
						<form action="select">
							<div class="block">
								<h4 class="title">Danh Mục Sản Phẩm</h4>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="check box 1"
										id="defaultCheck1" name="checkbox"> <label class="form-check-label"
										for="defaultCheck1"> check box 1 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="check box 2"
										id="defaultCheck1" name="checkbox"> <label class="form-check-label"
										for="defaultCheck1"> check box 2 </label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="check box 3"
										id="defaultCheck1" name="checkbox"> <label class="form-check-label"
										for="defaultCheck1"> check box 3 </label>
								</div>
							</div>
							<button type="submit">chọn</button>
							</form>
							<div class="block">
								<h4 class="title">Giá</h4>
								<div class="price-small-text">Chọn khoảng giá</div>
								<div class="input-group">
									<input pattern="[0-9]*" placeholder="Giá từ" value="0">
									<span>-</span> <input pattern="[0-9]*" placeholder="Giá đến"
										value="0">
								</div>
								<button>OK</button>
							</div>
							<div class="block">
								<h4 class="title">Màu sắc</h4>
								<div class="list collapsed">
									<a class="item item--option_color " href="javascript:"
										style="padding-left: 0px;">Đen</a>

								</div>
							</div>
							<div class="block">
								<h4 class="title">Kích cỡ</h4>
								<div class="list collapsed">
								<c:forEach var="size" items="${size }">
									<a class="item item--option_size " href="javascript:"
										style="padding-left: 0px;">${size }</a>
										</c:forEach>
								</div>
							</div>
						</div>
					</div>
<!-- 				</form> -->





				<div class="lm_m-4 fYDhGF">
					<div class="inner">
						<div class="search-summary">
							<div class="title">
								<h1>Kết quả tìm kiếm cho ${value}:</h1>
								<h4>10k+ kết quả</h4>
							</div>
							<div class="Sorter__Root-sc-1u1tc3w-0 jdfxzb">
								<div class="Sorter__Top-sc-1u1tc3w-1 ftKDwW">
									<div class="Sorter__Tabs-sc-1u1tc3w-3 ehYkVZ">
										<span>Ưu tiên xem: </span>
										<div class="sort-list">
											<a class="active" href="javascript:">Chọn lọc</a> <a class=""
												href="javascript:">Hàng mới</a> <a class=""
												href="javascript:">Bán chạy</a> <a class=""
												href="javascript:">Giảm giá nhiều</a> <a class=""
												href="javascript:">Giá thấp</a> <a class=""
												href="javascript:">Giá cao</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="ProductList__Wrapper-sc-1dl80l2-0 healEa">
							<a class="product-item" href="javascript:"> <span
								class="style__StyledItem-sc-18svp8n-0 bHrHjw">
									<div>
										<div class="thumbnail">
											<img
												src="https://salt.tikicdn.com/cache/200x200/ts/product/d3/e7/93/2fab1cf3c4497f66fbb8268b5a317a90.jpg"
												alt="Vòng cổ đệm cho chó (Chọn 4 màu) - Vòng cổ chó mèo 5 size thích hợp mọi loại chó">
										</div>
										<div class="info">
											<div class="badge-service"></div>
											<div class="name">
												<span>Vòng cổ đệm cho chó (Chọn 4 màu) - Vòng cổ chó
													mèo 5 size thích hợp mọi loại chó</span>
											</div>
											<div class="rating-review">
												<div class="rating">
													<div class="rating__total">
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
													</div>
												</div>
												<div class="review">(70)</div>
											</div>
											<div class="price-discount">
												<div class="price-discount__price">34.999 ₫</div>
											</div>
											<div class="badge-under-price"></div>
										</div>
									</div>
							</span>
							</a> <a class="product-item" href="javascript:"> <span
								class="style__StyledItem-sc-18svp8n-0 bHrHjw">
									<div>
										<div class="thumbnail">
											<img
												src="https://salt.tikicdn.com/cache/200x200/ts/product/d3/e7/93/2fab1cf3c4497f66fbb8268b5a317a90.jpg"
												alt="Vòng cổ đệm cho chó (Chọn 4 màu) - Vòng cổ chó mèo 5 size thích hợp mọi loại chó">
										</div>
										<div class="info">
											<div class="badge-service"></div>
											<div class="name">
												<span>Vòng cổ đệm cho chó (Chọn 4 màu) - Vòng cổ chó
													mèo 5 size thích hợp mọi loại chó</span>
											</div>
											<div class="rating-review">
												<div class="rating">
													<div class="rating__total">
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
														<svg stroke="currentColor" fill="currentColor"
															stroke-width="0" viewBox="0 0 24 24" size="12"
															color="#c7c7c7" height="12" width="12"
															xmlns="http://www.w3.org/2000/svg"
															style="color: rgb(199, 199, 199);">
                                <path
																d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"></path>
                              </svg>
													</div>
												</div>
												<div class="review">(70)</div>
											</div>
											<div class="price-discount">
												<div class="price-discount__price">34.999 ₫</div>
											</div>
											<div class="badge-under-price"></div>
										</div>
									</div>
							</span>
							</a>

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
                <use xlink:href="images/sprite.svg#icon-airplane"></use>
              </svg>
						</div>
						<p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-credit-card-alt"></use>
              </svg>
						</div>
						<p>HOÀN TIỀN 100%</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-credit-card"></use>
              </svg>
						</div>
						<p>NHIỀU ƯU ĐÃI LỠN</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-headphones"></use>
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
					<a href="#">Chó</a> <a href="#">Mèo</a> <a href="#">Phụ kiện</a>
				</div>
				<div class="footer-top__box">
					<h3>THÔNG TIN</h3>
					<a href="#">Về chúng tôi</a> <a href="#">Chính Sách Bảo Mật</a> <a
						href="#">Điều khoản và Điều kiện</a> <a href="#">Liên hệ</a>
				</div>
				<div class="footer-top__box">
					<h3>TÀI KHOẢN CỦA TÔI</h3>
					<a href="#">Thông tin tài khoản</a> <a href="#">Danh sách đơn
						hàng</a>
				</div>
				<div class="footer-top__box">
					<h3>LIÊN HỆ</h3>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-location"></use>
              </svg>
						</span> 206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
					</div>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-envelop"></use>
              </svg>
						</span> petmart.support@gmail.com
					</div>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-phone"></use>
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

	<!-- Custom JavaScript -->
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/custom.js"></script>
	<script>
		function getUrl(url) {
			document.getElementById("pic").src = url;
		};

		$('input.input-qty')
				.each(
						function() {
							var $this = $(this), qty = $this.parent().find(
									'.is-form'), min = Number($this.attr('min')), max = Number($this
									.attr('max'))
							if (min == 0) {
								var d = 0
							} else
								d = min
							$(qty).on('click', function() {
								if ($(this).hasClass('minus')) {
									if (d > min)
										d += -1
								} else if ($(this).hasClass('plus')) {
									var x = Number($this.val()) + 1
									if (x <= max)
										d += 1
								}
								$this.attr('value', d).val(d)
							})
						});
	</script>
</body>

</html>