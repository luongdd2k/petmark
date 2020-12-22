<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Hoangnq Shop</TITLE>
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/id.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="header_nav.jsp" %>
		<div id="bgf4"><div id="bgbg"><div id="all">
			
			<div class="menu_title" style="margin-top: 15px;">KẾT QUẢ TÌM KIẾM</div>

			<div class="shop">

					<c:forEach var="itemSearch" items="${searchResult}">
						<a href="ViewProduct/${itemSearch.id }" class="item_shop">
							<img src="${itemSearch.imagePath }"
							class="center">
							<div class="item_title center">${itemSearch.name }</div>
							<div class="price center">
								<span class="p_sale">${itemSearch.getDisplayPriceSale() }</span>
								<span class="p_ori">${itemSearch.getDisplayPrice(0) }</span>
								<span class="p_per">${itemSearch.getPer() }</span>
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


