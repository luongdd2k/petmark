<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Shop Ban Hang</TITLE>
		<base href="${pageContext.servletContext.contextPath}/">
		<link rel="stylesheet" type="text/css" href="CSS/header.css">
		<link rel="stylesheet" type="text/css" href="CSS/nnav.css">
		<link rel="stylesheet" type="text/css" href="CSS/index.css">
		<link rel="stylesheet" type="text/css" href="CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="CSS/home.css">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/id.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="header_nav.jsp" %>
		<div id="bgf4"><div id="bgbg"><div id="all">
			<div id="all_top_banner_x3">
				<img src="https://png.pngtree.com/thumb_back/fw800/back_our/20190620/ourmid/pngtree-pet-shop-adoption-cartoon-hand-painted-white-banner-image_170656.jpg" class="large">
				<img src="" class="small">
				<img src="" class="small" style="margin-top: 5px;">
			</div>

			<div id="all_top_banner_x4">
				<img src="https://cdn.shopify.com/s/files/1/0265/0744/4323/products/MIFFY048PRINT_0aa89f05-66be-4eca-887c-a881745ac60a_1024x1024.jpg?v=1569410408" class="f-grid-col">
				<img src="https://cdn.webshopapp.com/shops/70489/files/303501282/image.jpg" class="f-grid-col">
				<img src="https://image.winudf.com/v2/image/Y29tLmJvYmdhbWVzT3BlbmluZ1BldHNhbmREb2xscy5uZXdiYWxsc2NvbWxvbHBldHNzdXJwcmlzZV9zY3JlZW5fMF8xNTIxOTIzOTQ0XzAyNg/screen-0.jpg?fakeurl=1&type=.jpg" class="f-grid-col">
				<img src="https://cdn.shopify.com/s/files/1/0006/0158/7777/products/Rather_be_a_unicorn_1200x1200.png?v=1554963526" class="f-grid-col">
			</div>

			<div class="menu_title">THÚ CƯNG GIẢM GIÁ</div>
			<div id="hot_keywords">
				<div class="hot_keywords_f bg-blue-dark hover:bg-blue"><a href="SearchProduct?form_search=Samsung">Chó Husky</a></div>
				<div class="hot_keywords_f bg-teal-darkest hover:bg-teal-darker"><a href="SearchProduct?form_search=Apple">Chó Corgi</a></div>
				<div class="hot_keywords_f bg-indigo-dark hover:bg-indigo"><a href="#">Mèo Anh</a></div>
				<div class="hot_keywords_f bg-orange-dark hover:bg-orange"><a href="#">Chó Phốc</a></div>
				<div class="hot_keywords_f bg-red-dark hover:bg-red"><a href="#">Mèo Scottish </a></div>
				<div class="hot_keywords_f bg-green-dark hover:bg-green"><a href="#">Mèo Munchkin</a></div>
				<div class="hot_keywords_f bg-blue-darker hover:bg-blue-dark"><a href="#">Mèo Ba Tư</a></div>
				<div class="hot_keywords_f bg-pink-darkest hover:bg-pink-darker"><a href="#">Chó Pug</a></div>
			</div>
		
			<div class="menu_title">KHUYẾN MÃI</div>
			<select id="cbo_sort_product">
				<option value="1">Giá:&nbsp từ cao ⟶  thấp</option>
				<option value="2">Giá:&nbsp từ thấp  ⟶  cao</option>
				<option value="3">Bán chạy nhất</option>
				<option value="4">Được yêu thích nhất</option>
				<option value="5">Được xem nhiều nhất</option>
			</select>
				<span id="sortValue" style="display: none;">${sortValue }</span> 
			

			<div class="shop">
					<!--<a href="shop_item.jsp" class="item_shop">
						<img src="Image/item_shop/Apple/7_32gb.jpg" class="center">
						<div class="item_title center">Apple iPhone 7 32GB - Hàng test</div>
						<div class="price center">
							<span class="p_sale">11.990.000 ₫</span>
							<span class="p_ori">15.990.000</span>
							<span class="p_per">-25%</span>
						</div>
					</a>-->
					
					<c:forEach var="listPet" items="${listPet}">
						<a href="ViewProduct/${listPet.id }" class="item_shop">
<%-- 							<img src="${listPet.imagePath }" class="center"> --%>
							<div class="item_title center">${listPet.petName }</div>
							<div class="price center">
								<span class="p_sale">${listPet.age}</span>
								<span class="p_ori">${listPet.price }</span>
								<span class="p_per">${listPet.deposit}</span>
								<span>${listPet.status}</span>
								<p>${listPet.description}</p>
							</div>
						</a>
					</c:forEach>
			
				<div class="more_bar">
					<div class="more_text center ">Xem thêm</div>
				</div>
			</div>

			<div class="menu_title">PHỤ KIỆN</div>

			<div class="shop">
					<c:forEach var="listAccessory" items="${listAccessory}">
						<a href="ViewProduct/${listAccessory.id }" class="item_shop">
							<img src="${listAccessory.imagePath }" class="center">
							<div class="item_title center">${listAccessory.name }</div>
							<div class="price center">
								<span class="p_sale">${listAccessory.getDisplayPriceSale() }</span>
								<span class="p_ori">${listAccessory.getDisplayPrice(0) }</span>
								<span class="p_per">${listAccessory.getPer() }</span>
							</div>
						</a>
					</c:forEach>
				
				<div class="more_bar">
					<div class="more_text center ">Xem thêm</div>
				</div>
			</div>

			<div id="zzz" style=""></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="footer.jsp" %>
	</BODY>
</HTML>


