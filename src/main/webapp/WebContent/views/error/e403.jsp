<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			#e404content{
				margin-top: 20px;
				font-size: 160%;
				text-align: center;
			}
			#e404back{text-decoration: none; color: 593a92;}
			#e404back:hover{text-decoration: underline;}
		</style>
	</HEAD>
	
	<BODY>
		<div id="bgf4"><div id="bgbg" style="background-size: 102%;"><div id="all" style="min-height: 600px;">
			
			<div class="menu_title" style="margin-top: 10px; font-size: 300%; -webkit-text-stroke-width: 1px;
			-webkit-text-stroke-color: #f4f4f4;">
				Error 403 - Forbidden
			</div><hr>

			<div class="shop" style="height: 730px; background-color:rgba(24, 158, 255, 0.15);">
				<div id="e404content">
					&nbsp;&nbsp;⚠️ Thông báo: Bạn không đủ quyền để truy cập chức năng này! &nbsp;
					<a id="e404back" href="index">↪ Quay lại trang chủ sau <span id="desc_403">10</span>s</a>
				</div><br>
					
				<a href="index"><img src="Image/other/e403.png" width="100%"></a>
	
	
	
	
	
	
	
	
	
			</div>

			<div id="zzz" style=""></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="/WebContent/views/footer.jsp" %>
		<script type="text/javascript">

			var s10 = setInterval(function(){
				var desc_403 = $('#desc_403').text();
				desc_403 -= 1;
				$('#desc_403').text(desc_403);
				if(desc_403==0){
					clearInterval(s10);
					$(location).attr('href', 'index');
				}
			},1000);

			$('#f7_container').click(function(event) {
				clearInterval(s10);
			});

		</script>
	</BODY>
</HTML>


