<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Hoangnq Shop</TITLE>
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
		<style type="text/css">
			#f7_ny{
				background-image: none;
			}
			#tback{
				text-decoration: none;
				color: #6441A5;
			}
			#tback:hover{
				text-decoration: underline;
			}
			
		</style>
	</HEAD>
	
	<BODY>
		<%@ include file="header_nav.jsp" %>	
		<div id="bgf4"><div id="bgbg" style="background-size: 107%;"><div id="all" style="min-height: 760px;">
			
			<div class="menu_title" style="margin-top: 10px; font-size: 270%; -webkit-text-stroke-width: 1px;
			-webkit-text-stroke-color: #f4f4f4;">
				🛒Mua hàng thành công!
			</div><hr>

			<div class="shop" style="height: 630px; padding: 20px; font-size: 135%; margin-bottom: 0px; text-align: center;">
				<h2></h2>
				<div>Cám ơn bạn đã mua hàng! &nbsp;<a href="index" id="tback"> ↪ Click vào đây để quay lại trang chủ</a></div>
				<br>
				<a href="index"><img src="Image/other/thanks.png" width="75%" style="height: 500px;"></a>
			</div>

			<div id="zzz" style="display:none;"></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="footer.jsp" %>
		<script type="text/javascript">



		</script>
	</BODY>
</HTML>


