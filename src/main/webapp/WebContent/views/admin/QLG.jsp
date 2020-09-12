<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Quản lý sản phẩm</TITLE>
		<base href="${pageContext.servletContext.contextPath}/">
		<link rel="stylesheet" type="text/css" href="CSS/header.css">
		<link rel="stylesheet" type="text/css" href="CSS/nnav.css">
		<link rel="stylesheet" type="text/css" href="CSS/QLSP.css">
		<link rel="stylesheet" type="text/css" href="CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="CSS/home.css">
		<link rel="stylesheet" type="text/css" href="CSS/favor.css">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/QLG.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="/WebContent/views/header_nav.jsp" %>
		<div id="bgf4"><div id="bgbg" style="background-image: none;"><div id="all" style="min-height: 970px;">
			<div class="menu_title">QUẢN LÝ GIỐNG THÚ CƯNG</div>
			
			<div id="species_QL">
				
				<input type="hidden" id="imgPath" value="${imgPath}">
				<div class="p_title_2">Thêm sản phẩm mới</div>
				<table class="add_p">
					<thead>
						<tr>
							<td class="t_image">Ảnh</td>
							<td class="t_name">Tên Sản Phẩm</td>
							<td class="t_information">Thông tin</td>

							<td class="t_action_1"></td>
							<td class="t_action_2"></td>
							<td class="t_action_3"></td>
						</tr>
					</thead>
				</table>
				<form id="formAddSpecies" action="admin/SpeciesManagement/AddSpecies" method="POST" class="add_f" enctype='multipart/form-data'><tr><table class="add_p">
					<tbody>
						<tr>
							<td class="t_image" id="add_img_header" style="position:relative; height: 110px; overflow: hidden">
								<input type="hidden" name="hiddenImgPath" id="hiddenImgPath" value="Image/other/samplePhoneUpload.svg">
								<input type="file" name="addSpeciesIMG" id="add_img" style="display: none;">
								<input type='hidden' id="added" name='added' value='${add }'>
								<img id="addSpeciesIMGtag" src="Image/other/samplePhoneUpload.svg" style="width:100%;">
								<div id="img_fff" style="background-color: #fff; width: 100%; height: 100%; position:absolute; top:0; left:0; visibility: hidden;"></div>
								<img id="img_loading" src="Image/other/lg.dual-gear-loading-icon.gif" width="100%" style="position:absolute; top:0; left:0; visibility: hidden; z-index:98; margin-top: 5px;">
								
							</td>	
							<td class="t_name"><input type="text" class="p_name" id="p_add_name" name="p_add_name" autocomplete="off" required></td>
							<td class="t_information"><input type="text" class="p_information" id="p_add_information" name="p_add_information" autocomplete="off"></td>
							
							<td class="t_action_1"><button type="submit" class="btn_add"><i class="fas fa-plus"></i>Thêm</button></td>
							<td class="t_action_2">
								<input type='hidden' name='p_fix_image' value='none.png'>
								<button type="button" id="btn_upload"><i class="fas fa-upload"></i>Tải ảnh</button>
							</td>
							<td class="t_action_3"><button type="button" class="btn_delete"><i class="fas fa-trash-alt"></i>Hủy bỏ</button></td>
						</tr>
					</tbody>
				</table></form>
				


				<div style="height: 70px;"></div>



				<div class="p_title_2" style="display: inline-block; float:left;">Danh sách giống mới đang được bán</div>
				<div id="qlsp_control"><div id="qlsp_form" style="left: 175px;">
					<button id="qlsp_back" class="qlsp_direct"><<</button>
						&nbsp;Page: <input type="text" min="1" max="${totalPage }" id="qlsp_current_page" value="${targetPage }">&nbsp;/&nbsp;<span id="qlsp_total_page">${totalPage }</span> &nbsp;
						<button id="qlsp_go">Go</button>
					<button id="qlsp_forward" class="qlsp_direct">>></button>
					<b style="display: none;">&nbsp;&nbsp;&nbsp;Tìm kiếm nhanh:</b>
					<input style="display: none;" type="text" id="qlsp_search" name="id="qlsp_search">
					<input type="hidden" id="scrollT" name="scrollT" value="${scrollT }">
					<script type="text/javascript">if($('#scrollT').val() != "") $(window).scrollTop($('#scrollT').val()*1);</script>
				</div></div>
				<select id="cbo_sort_species2" style="">
					<option value="-1">ID:&nbsp thấp ⟶  cao</option>
					<option value="0">ID:&nbsp  cao  ⟶  thấp</option>
					<option value="1" style="background: #ffe6e6">Dừng kinh doanh</option>
				</select>
					<span id="sortValue2" style="display: none;">${sortValue }</span> 
				<table class="show_p" style="margin-top: 30px;">
					<thead>
						<tr>
							<td class="t_image">Ảnh</td>
							<td class="t_id">ID</td>
							<td class="t_name">Tên Sản Phẩm</td>
							<td class="t_information">Thông tin</td>

							<td class="t_action_1"></td>
							<td class="t_action_2"></td>
							<td class="t_action_3"></td>

						</tr>
					</thead>
				</table>
					
					<c:set var="count" value="-1" scope="page" />
					<c:forEach var="species" items="${listSpecies }">
						<c:set var="count" value="${count + 1}" scope="page"/>
						<form action='admin/SpeciesManagement/UpdateSpecies' method='POST' enctype='multipart/form-data' class='show_f' ><table class='show_p' >
						<tbody>
								<tr>
									<td class='t_image' style="position:relative; height: 110px; overflow: hidden">
										<img class="updateSpeciesIMGtag" src='${species.getImagePath() }'>
										<div class="img_fff2" style="background-color: #fff; width: 100%; height: 100%; position:absolute; top:0; left:0; visibility: hidden;"></div>
										<img class="img_loading2" src="Image/other/lg.dual-gear-loading-icon.gif" width="100%" style="position:absolute; top:0; left:0; visibility: hidden; z-index: 98; margin-top: 5px;">
									</td>
									<td><input class="p_fix_id" id="p_fix_id" name="p_fix_id" value="${species.getId() }" readonly='readonly'></td>
									<td class='t_name'>
										<input type='hidden' name='formIndex' class='formIndex' value='${count }'>
										<input type='hidden' name='p_fix_image' class='p_fix_image' value='${species.getImagePath() }'>
										<input type='hidden' name='p_fix_ori' value='${species.getInformation() }'>
										<input type='text' name='p_fix_name' class='p_fix_name' value='${species.getName() }' autocomplete='off' required>
										<a target='_blank' href='ViewSpecies/${species.getId() }' class='p_more'>Xem chi tiết</a>
										<div class="countVLC">
											<i class="far fa-eye"> 100</i>
											<i class="far fa-thumbs-up"> 100</i>
											<i class="far fa-comment-dots"> 100</i>
											<i class="fas fa-cart-arrow-down"> 100</i>
											
										</div>
									</td>

									<td class='t_quantity'><input type='text' name='p_fix_quantity' class='p_quantity' value='${species.getInformation() }' autocomplete='off'></td>
									
									<td class='t_action_1'>
										<button type='button' class='btn_save'><i class='fas fa-edit'></i>Lưu</button>
										<div class="changelog">
											<div class="isChangeQLSP noChangeQLSP">Các thay đổi: </div>
											
										</div>
									</td>
									<td class='t_action_2'>
										<input type='file' name='addSpeciesIMG' class='fix_img' style='display: none'>
										<button type='button' class='${classButton2 }'><i class='fas fa-upload'></i>${nameButton2 }</button>
									</td>
									<td class='t_action_3'>
									<button type='button' class='btn_delete ${classButtonDelete }'><i class='fas fa-trash-alt'></i>Xóa</button>
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
	
	
	