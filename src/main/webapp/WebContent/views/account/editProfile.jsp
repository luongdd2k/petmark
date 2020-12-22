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
		<style type="text/css">
			#table_info>tbody>tr{
				border-bottom: none;
			}
		</style>
		
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
						Cập nhật thông tin
					</div>
					<form id="form_edit_info" method="post" action="SubmitInfo" enctype='multipart/form-data'><table id="table_info">
						<tr>
							<td class="col_1">Ảnh đại diện</td>
							<td class="col_2">
								<div id="uploadAvatar"><i class="fas fa-plus"></i>&nbsp; UPLOAD ẢNH</div>
								<div id="img_container">
									<img id="addAvatarIMGtag" alt="avatar" src="${profile.getImagePath() }" style="width: 100%; height: 100%;">
									<input type="file" name="addAvatarIMG" id="add_img" style="display: none;">
									<img id="img_loading" src="Image/other/lding01.gif" width="100%" style="position:absolute; top:0; left:0; visibility: hidden; z-index:98; margin-top: 5px;">
									<input type="hidden" name="hiddenImgPath" id="hiddenImgPath" value="${profile.getImagePath() }">
								</div>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Họ và tên<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="text" id="sl_edit_name" name="sl_edit_name" value="${profile.getFullName() }" autocomplete="off" required>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Email<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="email" id="sl_edit_email" name="sl_edit_email" value="${profile.getEmail() }" autocomplete="off" required>
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Giới tính<div class='hh'></div></td>
							<td class="col_2" style="cursor: default;">
								<input class="sl_edit_gt" type="radio" name="sl_edit_gt" value="0"> Nam &nbsp;
								<input class="sl_edit_gt" type="radio" name="sl_edit_gt" value="1"> Nữ 
								<input id='sl_hiddedn_gt' type="hidden" id='sl_hiddedn_gt' name="sl_hiddedn_gt" value="${profile.getGender() }" autocomplete="off">
								<div class='hh'></div>
							</td>
						</tr>
						<tr>
							<td class="col_1">Số điện thoại<div class='hh'></div></td>
							<td class="col_2">
								<input class="row_input" type="text" id="sl_edit_phone" name="sl_edit_phone" value="${profile.getPhone() }" autocomplete="off" required>
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


