<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Thông tin cá nhân</TITLE>
		<base href="${pageContext.servletContext.contextPath}/">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/id.js"></script>
		<script type="text/javascript" src="Script/profile.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="/WebContent/views/header_nav.jsp" %>	
		<div id="bgf4"><div id="bgbg" style="background-size: 107%;"><div id="all" style="min-height: 690px;">
			
<!-- 			<div class="menu_title" style="margin-top: 10px; font-size: 200%; -webkit-text-stroke-width: 1px; -->
<!-- 			-webkit-text-stroke-color: #f4f4f4;"> -->
<!-- 				Thông tin cá nhân -->
<!-- 			</div><hr> -->

			<div class="shop" style="height: 630px; padding: 20px; font-size: 135%; margin-bottom: 0px; text-align: center; background-color:rgba(255, 255, 255, 0.9);">
				<div id="colume_menu">
					<a href="Profile"><div class="row_menu_item">Thông tin cá nhân</div></a>
					<a href="Changepw"><div class="row_menu_item">Thay đổi mật khẩu</div></a>
					<a href="CheckLogout"><div class="row_menu_item">Đăng xuất</div></a>
				</div>
				<div id="column_info">
					<div id="row_info_title">
						Thông tin cá nhân
						<a href="EditProfile"><div id="update_info"><i class='fas fa-edit' style="font-size: 99%; font-weight: lighter;"></i>  CẬP NHẬT THÔNG TIN</div></a>
						<input type='hidden' id="edited" name='edited' value='${edit }'>
					</div>
					<table id="table_info">
						<tr>
							<td class="col_1">Họ và tên</td>
							<td class="col_2">${profile.getFullName() }</td>
						</tr>
						<tr>
							<td class="col_1">Tên đăng nhập</td>
							<td class="col_2">${profile.getUsername() }</td>
						</tr>
						<tr>
							<td class="col_1">Ảnh đại diện</td>
							<td class="col_2">
								<div id="img_container">
									<img alt="avatar" src="${profile.getImagePath() }" style="width: 100%; height: 100%;">
								</div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Email</td>
							<td class="col_2">${profile.getEmail() }</td>
						</tr>
						<tr>
							<td class="col_1">Giới tính</td>
							<td class="col_2">${profile.getGender()=='false'?'Nam':'Nữ' }</td>
						</tr>
						<tr>
							<td class="col_1">Số điện thoại</td>
							<td class="col_2">${profile.getPhone() }</td>
						</tr>
					</table>
				</div>






				
				
				
				
				
				
				
				
				
	
	
	
			</div>

			<div id="zzz" style="display:none;"></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="/WebContent/views/footer.jsp" %>
		<script type="text/javascript">



		</script>
		<div class="msg_container">
			<div class="msg_text">✔</div>
			<div class="msg_close">✖</div>
		</div>
	</BODY>
</HTML>


