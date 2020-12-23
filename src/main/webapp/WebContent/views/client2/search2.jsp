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
<link rel="stylesheet" type="text/css"   
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"   
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet" type="text/css"   
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
<!-- Animate On Scroll -->
<link rel="stylesheet" type="text/css"    href="https://unpkg.com/aos@next/dist/aos.css" />


<title>Pet Mart | Tìm kiếm</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Custom StyleSheet -->
<%--<link rel="stylesheet" type="text/css"    href="plugin/slick/slick.css">--%>
<link rel="stylesheet" type="text/css"    href="css/acc-in.css">
<link rel="stylesheet" type="text/css"    href="css/search.css">
<link rel="stylesheet" type="text/css"    href="css/styles.css" />
</head>
<!--    -->
<body>
	<%@ include file="/WebContent/views/header_nav.jsp"%>
	<div class="page__title-area">
		<div class="container">
			<div class="page__title-container">
				<ul class="page__titles">
					<li><a href="/"> <svg>
                  <use xlink:href="images/sprite.svg#icon-home"></use>
                </svg>
					</a></li>
					<li class="page__title">Kết quả tìm kiếm</li>
				</ul>
			</div>
		</div>
	</div>

	<main id="main">
		<div class="container">
			<div class="main-container _2usMPO">
				<form action="locPet" method="get">
					<div class="userpage-sidebar">
						<div class="div-left">
							<div class="block">
								<h4 class="title">Giống thú cưng</h4>

								<select id="hangTC" class="form-control" name="hang">
									<option selected value="">Tất cả giống thú cưng</option>
									<c:forEach var="category" items="${category }">
										<option value="${category.getId() }">${category.getName() }</option>
									</c:forEach>
								</select>

							</div>
							<div class="block">
								<h4 class="title">Giá</h4>
								<div class="price-small-text">Chọn khoảng giá</div>
								<div class="input-group">
									<input pattern="[0-9]*" placeholder="Giá từ" value="0" name="min">
									<span style="margin-left: 2px; margin-right: 2px;">-</span>
									<input pattern="[0-9]*" placeholder="Giá đến" value="0" name="max">
								</div>

							</div>
							<div class="block">
								<h4 class="title">Màu lông</h4>
								<select id="mau-long" class="form-control" name="mauLong">
									<option selected value="">Tất cả màu lông</option>
									<c:forEach var="color" items="${color }">
										<option value="${color }">${color }</option>
									</c:forEach>
								</select>
							</div>
							<div class="block">
								<h4 class="title">Màu mắt</h4>
								<select id="mau-mat" class="form-control" name="mauMat">
									<option selected value="">Tất cả màu mắt</option>
									<c:forEach var="size" items="${size }">
										<option value="${size }">${size }</option>
									</c:forEach>
								</select>
							</div>
							<div class="block">
								<button type="submit" class="btn btn-primary">Áp dụng</button>
							</div>
						</div>
					</div>
				</form>
				<div class="lm_m-4 fYDhGF">
					<div class="inner">
						<div class="search-summary">
							<div class="title">
								<h1>Kết quả tìm kiếm:</h1>
								<h4>${kqsearch } kết quả</h4>
							</div>
						</div>
						<div class="ProductList__Wrapper-sc-1dl80l2-0 healEa">
							<c:forEach var="list" items="${list }">
								<a class="product-item" href="pet-detail/${list.getId() }"> <span
									class="style__StyledItem-sc-18svp8n-0 bHrHjw">
										<div>
											<div class="thumbnail">
												<img
													src="${list.getImgs().get(0).getImgAvartar() }">
											</div>
											<div class="info">
												<div class="badge-service"></div>
												<div class="name">
													<span>${list.getPetName() }</span>
												</div>
												<div class="rating-review">
													<div class="rating1">
														<svg>
															<use xlink:href="images/sprite.svg#icon-star-full"></use>
														</svg>
														<svg>
															<use xlink:href="images/sprite.svg#icon-star-full"></use>
														</svg>
														<svg>
															<use xlink:href="images/sprite.svg#icon-star-empty"></use>
														</svg>
														<svg>
															<use xlink:href="images/sprite.svg#icon-star-empty"></use>
														</svg>
														<svg>
															<use xlink:href="images/sprite.svg#icon-star-empty"></use>
														</svg>
													</div>
<%--													<div class="review">(70)</div>--%>
												</div>
												<div class="price-discount"  style="justify-content: flex-end;">
													<div class="price-discount__price price-search" style="font-size: 20px;color: red;">${list.getDisplayPrice(1) }</div>
												</div>
												<div class="badge-under-price"></div>
											</div>
										</div>
								</span>
								</a>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
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
	<script>
		abc();
		function abc(){
			let money = document.getElementsByClassName("price-search");
			for(let i=0;i<money.length;i++){
				let moneyF = money[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				money[i].innerHTML = moneyF + " đ";
			}
		}
	</script>
</body>

</html>
