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
		<link rel="stylesheet" type="text/css" href="CSS/header.css">
		<link rel="stylesheet" type="text/css" href="CSS/nnav.css">
		<link rel="stylesheet" type="text/css" href="CSS/index.css">
		<link rel="stylesheet" type="text/css" href="CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="CSS/home.css">
		<link rel="stylesheet" type="text/css" href="CSS/profile.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/id.js"></script>
		<script type="text/javascript" src="Script/profile.js"></script>
		<style type="text/css">
			#table_info>tbody>tr{
				border-bottom: none;
			}
		</style>
		
	</HEAD>
	
	<BODY>
		<%@ include file="/WebContent/views/header_nav.jsp" %>	
		<div id="bgf4"><div id="bgbg" style="background-size: 107%;"><div id="all" style="min-height: 590px;">
			
<!-- 			<div class="menu_title" style="margin-top: 10px; font-size: 200%; -webkit-text-stroke-width: 1px; -->
<!-- 			-webkit-text-stroke-color: #f4f4f4;"> -->
<!-- 				Thông tin cá nhân -->
<!-- 			</div><hr> -->

			<div class="shop" style="height: 530px; padding: 20px; font-size: 135%; margin-bottom: 0px; text-align: center; background-color:rgba(255, 255, 255, 0.9);">
				<div id="colume_menu">
					<a href="Profile"><div class="row_menu_item">Thông tin cá nhân</div></a>
					<a href="Changepw"><div class="row_menu_item">Thay đổi mật khẩu</div></a>
					<a href="CheckLogout"><div class="row_menu_item">Đăng xuất</div></a>
				</div>
				<div id="column_info">
					<div id="row_info_title">
						Thay đổi mật khẩu
					</div>
					<form id="form_edit_pw" method="post" action="SubmitPw"><table id="table_info">		
						<tr>
							<td class="col_1">Mật khẩu cũ<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="password" id="sl_current_pw" name="sl_current_pw" autocomplete="off" required>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Mật khẩu mới<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="password" id="sl_new_pw" name="sl_new_pw"  autocomplete="off" required>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Nhập lại mật khẩu mới<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="password" id="sl_new_pw2" name="sl_new_pw2"  autocomplete="off" required>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td></td>
							<td>
								<button id="btn_submit" type="submit">CẬP NHẬT</button>
								<div class='hh'></div>
							</td>
						</tr>
					</table></form>
				</div>






				
				
				
				
				
				
				
				
				
	
	
	
			</div>

			<div id="zzz" style="display:none;"></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="/WebContent/views/footer.jsp" %>

		<script type="text/javascript">
			if($('#sl_hiddedn_gt').val()=='false'){
				$('.sl_edit_gt:eq(0)').attr('checked', 'checked');
			} else {
				$('.sl_edit_gt:eq(1)').attr('checked', 'checked');
			}
		</script>
	</BODY>
</HTML>


