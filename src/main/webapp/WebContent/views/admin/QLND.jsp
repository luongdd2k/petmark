<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Quản lý người dùng</TITLE>
		<base href="${pageContext.servletContext.contextPath}/">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<link rel="stylesheet" type="text/css"    type="text/css" href="CSS/css">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/QLND.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="/WebContent/views/header_nav.jsp" %>
		<div id="bgf4"><div id="bgbg" style="background-image: none;"><div id="all" style="min-height: 970px;">
			<div class="menu_title">QUẢN LÝ NGƯỜI DÙNG</div>
			
			<div id="product_QL">
				
				
				<div class="p_title_2">Tìm kiếm người dùng</div>
				<table class="add_p">
					<thead>
						<tr>
							<td class="t_image">Tìm</td>
							<td class="t_username">Username</td>
							<td class="t_name">Họ tên</td>
							<td class="t_gender">Giới tính</td>
							<td class="t_email">Email</td>
							<td class="t_phone">Số điện thoại</td>
							<td class="t_role" style="padding-left: 9px;">Phân quyền</td>

							<td class="t_action_1"></td>
							<td class="t_action_3"></td>
						</tr>
					</thead>
				</table>
				<form id="formAddProduct" method="GET" class="add_f"><tr><table class="add_p">
					<tbody>
						<tr>
							<td class="t_image" id="add_img_header" style="position:relative; height: 110px; overflow: hidden">
								<img src="Image/other/search.svg">
							</td>	
							<td class="t_username"><input type="text" id="find_username" name="find_username" placeholder="Tất cả" autocomplete="off"></td>
							<td class="t_name"><input type="text" id="find_fullname" name="find_fullname" placeholder="Tất cả" autocomplete="off"></td>
							<td class="t_gender">
								<select id="find_gender" name="find_gender">
									<option value="-1">Tất cả</option>
									<option value="0">Nam</option>
									<option value="1">Nữ</option>
								</select>
							</td>
							<td class="t_email"><input type="text" id="find_email" name="find_email" placeholder="Tất cả" autocomplete="off"></td>
							<td class='t_phone'><input type="text" id="find_phone" name="find_phone" placeholder="Tất cả" autocomplete="off"></td>
							<td class='t_role'>
								<select id="find_role" name="find_role">
									<option value="-1">Tất cả</option>
									<option value="ROLE_MEMBER">Thành viên</option>
									<option value="ROLE_STAFF">Nhân viên</option>
									<option value="ROLE_ADMIN">Quản trị viên</option>
								</select>
							</td>
							
							<td class="t_action_1"><button type="submit" class="btn_find"><i class="fas fa-search"></i>Tìm</button></td>
							<td class="t_action_3"><button type="reset" class="btn_delete"><i class="fas fa-trash-alt"></i>Hủy bỏ</button></td>
						</tr>
					</tbody>
				</table>
				</form>
				

				<div style="height: 70px;"></div>



				<div class="p_title_2" style="display: inline-block; float:left;">Danh sách người dùng</div>
				<div id="qlsp_control"><div id="qlsp_form" style="left: 240px;">
					<button id="qlsp_back" class="qlsp_direct"><<</button>
						&nbsp;Page: <input type="text" min="1" max="${totalPage }" id="qlsp_current_page" value="${targetPage }">&nbsp;/&nbsp;<span id="qlsp_total_page">${totalPage }</span> &nbsp;
						<button id="qlsp_go">Go</button>
					<button id="qlsp_forward" class="qlsp_direct">>></button>
					<b style="display: none;">&nbsp;&nbsp;&nbsp;Tìm kiếm nhanh:</b>
					<input style="display: none;" type="text" id="qlsp_search" name="id="qlsp_search">
				</div></div>
				<select id="cbo_role" style="">
					<option value="searchResult" id="searchResult" style="display: ${search_display };">Kết quả tìm kiếm</option>
					<option value="1">Tất cả người dùng</option>
					<option value="2">Thành viên</option>
					<option value="3" title="Nhân viên & Quản trị viên">Nhân viên & QTV</option>
					<option value="4" style="background: #ff4d4d; color: #fff;">Bị chặn</option>
				</select>
					<span id="sortValue2" style="display: none;">${sortValue }</span>  
				<table class="show_p" style="margin-top: 30px;">
					<thead>
						<tr>
							<td class="t_image">Ảnh</td>
							<td class="t_username">Username</td>
							<td class="t_name">Họ Tên</td>
							<td class="t_gender">Giới tính</td>
							<td class="t_email">Email</td>
							<td class="t_phone">Số điện thoại</td>
							<td class="t_address">Địa chỉ</td>
							<td class="t_role" style="padding-left: 9px;">Phân quyền</td>

							<td class="t_action_1"></td>
							<td class="t_action_3"></td>

						</tr>
					</thead>
				</table>
					
					<c:set var="count" value="-1" scope="page" />
					<c:forEach var="user" items="${listAccount }">
						<c:set var="count" value="${count + 1}" scope="page"/>
						<form action='#' method='POST' class='show_f' ><table class='show_p' style="">
						<tbody>
								<tr>
									<td class='t_image' style="position:relative; height: 110px; overflow: hidden">
										<img id="addProDuctIMGtag" src="${user.getImagePath() }" style="width:100%;">

									</td>
									<td class='t_username'>
										<div class="u_username">${user.getUsername() }</div>
									</td>
									<td class='t_name'>
										<input type='hidden' name='formIndex' class='formIndex' value='${count }'>
										<div class="u_fullname">${user.getFullName() }</div>
										
									</td>
									<td class='t_gender'>
										<div class="u_genger">${user.getGender()=='false'?'Nam':'Nữ' }</div>
											
									</td>
									<td class='t_email'>
										<div class="u_email">${user.getEmail() }</div>
									</td>
									<td class='t_phone'>
										<div class="u_phone">${user.getPhone() }</div>
									</td>
									<td class='t_address'>
										<div class="u_address">${user.getAddress() }</div>
									</td>
									<td class='t_role'>
										<select class="u_role">
											<c:if test = "${user.getRole().getId() == 'ROLE_MEMBER'}">
												<option value="ROLE_MEMBER" selected>Thành viên</option>
									        </c:if>
									       	<c:if test = "${user.getRole().getId() ne 'ROLE_MEMBER'}">
												<option value="ROLE_MEMBER">Thành viên</option>
									       </c:if>
									       <c:if test = "${user.getRole().getId() == 'ROLE_STAFF'}">
												<option value="ROLE_STAFF" selected>Nhân viên</option>
									        </c:if>
									       	<c:if test = "${user.getRole().getId() ne 'ROLE_STAFF'}">
												<option value="ROLE_STAFF">Nhân viên</option>
									       </c:if>
									       <c:if test = "${user.getRole().getId() == 'ROLE_ADMIN'}">
												<option value="ROLE_ADMIN" selected>Quản trị viên</option>
									        </c:if>
									       	<c:if test = "${user.getRole().getId() ne 'ROLE_ADMIN'}">
												<option value="ROLE_ADMIN">Quản trị viên</option>
									       </c:if>
										</select>
									</td>
									
									<td class='t_action_1'>
										<button type='button' class='${classButton3 }'><i class='fas fa-edit'></i>${nameButton3 }</button>		
									</td>
									<td class='t_action_3'>
										<button type='button' class='btn_delete ${classButtonDelete3 }' title="${titleButtonDelete3 }"><i class="fas fa-times"></i>${nameButtonDelete3 }</button>
									</td>
								</tr>
						</tbody></table></form>
					</c:forEach>
				
				
				
				
				
			</div>
			<div id="zzz" style=""></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="/WebContent/views/footer.jsp" %>
		<div class="msg_container">
			<div class="msg_text">✔</div>
			<div class="msg_close">✖</div>
		</div>
	</BODY>
</HTML>
	
	
