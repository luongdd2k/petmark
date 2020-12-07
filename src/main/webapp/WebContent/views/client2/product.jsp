<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

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


<title>Pet Mart | Tên thú cưng, phụ kiện được xem chi tiết</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="css/product.css" />
<link rel="stylesheet" href="css/styles.css" />
	<style>
		.buttons_added {
			opacity:1;
			display:inline-block;
			display:-ms-inline-flexbox;
			display:inline-flex;
			white-space:nowrap;
			vertical-align:top;
			margin-left: 10px;
		}
		.is-form {
			overflow:hidden;
			position:relative;
			background-color:#f9f9f9;
			height:4rem;
			width:4rem;
			padding:0;
			text-shadow:1px 1px 1px #fff;
			border:1px solid #ddd;
			font-size: 2rem ;
		}
		.is-form:focus,.input-text:focus {
			outline:none;
		}
		.is-form.minus {
			border-radius:4px 0 0 4px;
		}
		.is-form.plus {
			border-radius:0 4px 4px 0;
		}
		.input-qty {
			background-color:#fff;
			height:4rem;
			width: 4rem;
			text-align:center;
			font-size:1.5rem;
			display:inline-block;
			vertical-align:top;
			margin:0;
			border-top:1px solid #ddd;
			border-bottom:1px solid #ddd;
			border-left:0;
			border-right:0;
			padding:0;
		}
		.input-qty::-webkit-outer-spin-button,.input-qty::-webkit-inner-spin-button {
			-webkit-appearance:none;
			margin:0;
		}
	</style>
</head>

<body>
	<%@ include file="/WebContent/views/header_nav.jsp" %>
	<div class="page__title-area">
			<div class="container">
				<div class="page__title-container">
					<ul class="page__titles">
						<li><a href="/"> <svg>
                  <use xlink:href="images/sprite.svg#icon-home"></use>
                </svg>
						</a></li>
						<li class="page__title">${pet.getPetName() }</li>
					</ul>
				</div>
			</div>
		</div>

	<main id="main">
		<div class="container">
			<!-- Products Details -->
			<section class="section product-details__section">
				<form action="deposit/${pet.getId() }" method="post">
					<div class="product-detail__container">
						<div class="product-detail__left">
							<div class="details__container--left">
								<div class="product__pictures">
									<div class="pictures__container">
										<img onclick="getUrl(this.src)" class="picture" src="${img.getImg1() }" id="pic1" />
									</div>
									<div class="pictures__container">
										<img onclick="getUrl(this.src)" class="picture" src="${img.getImg2() }" id="pic2" />
									</div>
									<div class="pictures__container">
										<img onclick="getUrl(this.src)" class="picture" src="${img.getImg3() }" id="pic3" />
									</div>
									<div class="pictures__container">
										<img onclick="getUrl(this.src)" class="picture" src="${img.getImg1() }" id="pic4" />
									</div>
									<div class="pictures__container">
										<img onclick="getUrl(this.src)" class="picture" src="${img.getImg3() }" id="pic5" />
									</div>
								</div>
								<div class="product__picture" id="product__picture">
									<!-- <div class="rect" id="rect"></div> -->
									<div class="picture__container">
										<img src="${img.getImgAvartar() }" id="pic" />
									</div>
								</div>
								<div class="zoom" id="zoom"></div>
							</div>
							<div class="product-details__btn product-details__btn_pet">
								<button id="cho" type="submit" class="product-details__btn product-details__btn_pet buy">
									<span>
										<svg>
											<use xlink:href="images/sprite.svg#icon-credit-card"></use>
										</svg>
									</span> ĐẶT CỌC NGAY
								</button>
							</div>
						</div>

						<div id="phu-kien" class="product-detail__right">
							<div class="product-detail__content">
								<h3>${pet.getPetName() }</h3>
								<div class="price">
									<span class="new__price">${pet.getDisplayPrice(1) }</span>
								</div>
								<div class="product__review">
									<div class="rating">
										<svg>
											<use xlink:href="images/sprite.svg#icon-star-full"></use>
									  	</svg>
										<svg>
                    						<use xlink:href="images/sprite.svg#icon-star-full"></use>
                  						</svg>
										<svg>
                    						<use xlink:href="images/sprite.svg#icon-star-full"></use>
                  						</svg>
										<svg>
                    						<use xlink:href="images/sprite.svg#icon-star-full"></use>
                  						</svg>
											<svg>
												<use xlink:href="images/sprite.svg#icon-star-empty"></use>
					  					</svg>
									</div>
									<a href="#description" class="rating__quatity">3 nhận xét</a>
								</div>
								<div class="product__info-container">
									<ul class="product__info">
										<li class="select">
											<div class="select__option">
												<label for="color">Màu lông - Màu mắt: </label>
												<select name="colors" id="color" class="select-box">
													<c:forEach var="color" items="${color}">
														<option value="${color.getId() }">${color.getFullColor() }
															- ${color.getEyeColor() }</option>
													</c:forEach>
												</select>
											</div>
										</li>
										<li>
											<div class="input-counter">
												<span>Số lượng: </span>
												<div class="buttons_added">
													<input onclick="changePrice()" class="minus is-form" type="button" value="-">
													<input id="so-luong"  aria-label="quantity" class="input-qty" max="10" min="1" name="soLuong" type="number" value="1">
													<input onclick="changePrice()" class="plus is-form" type="button" value="+">
												</div>
											</div>
										</li>

										<li>
											<span>Giá cọc :</span>
											<a href="javascript:" class="new__price">${pet.getDisplayDeposit() }</a>
										</li>
										<li>
											<span>Giống :</span>
											<a href="javascript:">${pet.getSpecies().getName() }</a>
										</li>
										<li>
											<span>Tuổi :</span>
											<a href="javascript:">${pet.getAge() } tháng</a>
										</li>
										<li>
											<span>Trạng thái :</span>
											<a href="javascript:" class="in-stock">${pet.getStatus() } (${pet.getAmount() } con)</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div class="product-detail__bottom">
					<div class="title__container tabs">
						<div class="section__titles category__titles ">
							<div class="section__title detail-btn active"
								data-id="description">
								<span class="dot"></span>
								<h1 class="primary__title">Mô tả sản phẩm</h1>
							</div>
						</div>

						<div class="section__titles">
							<div class="section__title detail-btn" data-id="reviews">
								<span class="dot"></span>
								<h1 class="primary__title">Nhận xét</h1>
							</div>
						</div>
					</div>

					<div class="detail__content">
						<div class="content active" id="description">
							<h2>Chi tiết về thú</h2>
							<p>${pet.getDescription() }</p>
						</div>
						<div class="content" id="reviews">
							<h1>Nhận xét của khách hàng</h1>
							<div class="rating">
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                				</svg>
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                				</svg>
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                				</svg>
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-star-full"></use>
                				</svg>
								<svg>
                  					<use xlink:href="images/sprite.svg#icon-star-empty"></use>
                				</svg>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Related Products -->
			<section class="section related__products">
				<div class="title__container">
					<div class="section__title filter-btn active">
						<span class=" dot"></span>
						<h1 class="primary__title">Sản phẩm liên quan</h1>
					</div>
				</div>
				<div class="container" data-aos="fade-up" data-aos-duration="1200">
					<div class="glide" id="glide_3">
						<div class="glide__track" data-glide-el="track">
							<ul class="glide__slides latest-center">
								<c:forEach var="list" items="${list }">
                					<li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="javascript:"><img src="${list.getImgs().get(0).getImgAvartar() }" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>${list.getPetName() }</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>${list.getDisplayPrice(1) } </h4>
                      </div>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="pet-detail/${list.getId() }">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="javascript:">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                				</c:forEach>
							</ul>
						</div>
						</ul>
					</div>
					<div class="glide__arrows" data-glide-el="controls">
						<button class="glide__arrow glide__arrow--left" data-glide-dir="<">
							<svg>
                  				<use xlink:href="images/sprite.svg#icon-arrow-left2"></use>
                			</svg>
						</button>
						<button class="glide__arrow glide__arrow--right" data-glide-dir=">">
							<svg>
                  				<use xlink:href="images/sprite.svg#icon-arrow-right2"></use>
                			</svg>
						</button>
					</div>
				</div>
			</section>
		</div>
		<!-- Facility Section -->
		<%@ include file="/WebContent/views/section-facility.jsp" %>
	</main>

	<!-- Footer -->
	<%@ include file="/WebContent/views/footer_client.jsp" %>
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
	<script type="text/javascript">
		function getUrl(url){
			document.getElementById("pic").src = url;
		};

		$('input.input-qty').each(function() {
			var $this = $(this),
					qty = $this.parent().find('.is-form'),
					min = Number($this.attr('min')),
					max = Number($this.attr('max'))
			if (min == 0) {
				var d = 0
			} else d = min
			$(qty).on('click', function() {
				if ($(this).hasClass('minus')) {
					if (d > min) d += -1
				} else if ($(this).hasClass('plus')) {
					var x = Number($this.val()) + 1
					if (x <= max) d += 1
				}
				$this.attr('value', d).val(d)
			})
		});
	</script>
</body>

</html>