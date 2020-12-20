<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin || Pet Manger</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="stylesheet" href="dist/css/custom.css">
	<link rel="stylesheet" href="css/employee.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Navbar -->
		<%@ include file="/WebContent/views/header_nav_admin.jsp"%>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="/WebContent/views/aside_nav_admin.jsp"%>
		<!-- End aside -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>THÚ CƯNG</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item">
									<a href="index.html">Trang chủ</a>
								</li>
								<li class="breadcrumb-item active">Thú cưng</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">
										<i class="fas fa-paw"></i> Quản lý thú cưng
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<!-- Default box -->

									<!--Div Form New-->
									<div id="form-disable-new"
										style="display: none; max-width: 95%; margin: auto;">
										<form id="formAddProduct"
											action="admin/ProductManagement/AddProduct" method="POST" onsubmit="return validateForm()">
											<div class="form-disable-p1 float-left"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="petName">Tên thú cưng</label>
													<input type="text" class="form-control" id="petName" name="tenThu">
													<p id="error1" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
												<div class="form-group">
													<label for="pet-bread">Giống thú cưng</label>
													<select name="giongThu" class="form-control" id="pet-bread">
														<option value="none" selected>--- Chọn giống thú ---</option>
														<c:forEach var="category" items="${listCategory }">
															<option value="${ category.id}">${ category.name}</option>
														</c:forEach>
													</select>
													<p id="error2" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
												<div class="form-group">
													<label for="petAge">Tuổi</label>
													<input type="text" class="form-control" id="petAge" name="tuoiThu">
													<p id="error3" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
											</div>
											<div class="form-disable-p1"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="petPrice">Giá</label>
													<input type="text" class="form-control" id="petPrice" name="giaThu">
													<p id="error4" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
												<div class="form-group">
													<label for="pet-status">Trạng thái</label>
													<select name="trangThai" id="pet-status" class="form-control">
														<option value="none" selected>--- Chọn trạng thái ---</option>
														<c:forEach var="status" items="${listStatus }">
															<option value="${status }">${status }</option>
														</c:forEach>
													</select>
													<p id="error5" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
												<div class="form-group">
													<label for="petAmount">Số lượng</label>
													<input type="text" class="form-control" id="petAmount" name="soLuong">
													<p id="error6" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
											</div>
											<div class="form-disable-p1" style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="petInformation">Mô tả</label>
													<textarea class="form-control" id="petInformation" rows="6" name="moTaThu"></textarea>
													<p id="error7" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
												</div>
												<div>
													<button type="submit"
														class="btn btn-custon-rounded-three btn-success btn-css">
														<i class="fas fa-save"></i> <span> Lưu</span>
													</button>
													<button type="reset" class="btn btn-custon-rounded-three btn-warning btn-css">
														<i class="fas fa-backspace"></i> <span> Xóa</span>
													</button>
													<button type="button"
														class="btn btn-custon-rounded-three btn-danger btn-css"
														onclick="hienThiFormNew(false)">
														<i class="fas fa-slash"></i> <span> Hủy</span>
													</button>
												</div>
											</div>
										</form>
										<div class="clear"></div>
									</div>
									<!-- End Form New-->
									<div id="new-pet">
										<div class="row">
											<div class="col-12">
												<form action="">
													<div class="row">
														<div class="form-group col-lg-4 col-md-6 col-sm-6">
															<label>Tên</label>
															<input class="form-control" type="search" placeholder="Tìm kiếm theo tên" aria-label="Search">
														</div>
														<div class="form-group col-lg-4 col-md-6 col-sm-6">
															<label for="cbo_sort_product2">Lọc</label> <select
																class="form-control" id="cbo_sort_product2" style="">
																<option value="-1">ID:&nbsp thấp ⟶ cao</option>
																<option value="0">ID:&nbsp cao ⟶ thấp</option>
																<option value="1">Giá:&nbsp từ thấp ⟶ cao</option>
																<option value="2">Giá:&nbsp từ cao ⟶ thấp</option>
																<option value="4">Giống: chó</option>
																<option value="5">Giống: mèo</option>
																<option value="3" style="background: #ffe6e6">Dừng
																	kinh doanh</option>
															</select> <span id="sortValue2" style="display: none;">${sortValue }</span>
														</div>
													</div>
												</form>
											</div>
										</div>
										<div class="btn-new-css">
											<button type="button"
												class="btn btn-custon-rounded-three btn-primary"
												style="display: block;" onclick="hienThiFormNew(true)">
												<i class="fas fa-plus-circle"></i> <span> Thêm mới</span>
											</button>
										</div>
										<!-- End Thêm mới-->
									</div>

									<div class="table-responsive-xl main-table ">
										<table class="table table-hover" style="margin-bottom: -1%;" id="table-js">
											<thead>
												<tr class="bg-info">
													<th scope="col">#</th>
													<th scope="col">Ảnh</th>
													<th scope="col">Tên thú cưng</th>
													<th scope="col">Giống thú</th>
													<th scope="col">Tuổi</th>
													<th scope="col">Giá</th>
													<th scope="col">Giá cọc</th>
													<th scope="col">Số lượng</th>
													<th scope="col">Ngày nhập</th>
													<th scope="col">Trạng thái</th>
													<th scope="col" hidden="true">Mô tả</th>
													<th scope="col">Hành động</th>
												</tr>
											</thead>
											<c:forEach var="product" items="${listProduct}">

												<tbody>
													<tr class="tr-js">
														<th scope="row">
															<div class="td__center">${product.id }</div>
														</th>
														<td>
															<img class="img-fluid" src="${product.getImgs().get(0).getImgAvartar() }" alt="" style="max-width: 90px; max-height: 90px;">
														</td>
														<td>
															<a href="admin/ProductManagement/show-edit/${product.getId() }">
																<div class="td__center">${product.petName }</div>
															</a>
														</td>
														<td>
															<span hidden="true" >${product.getSpecies().getId() }</span>
															<div class="td__center">${product.getSpecies().getName() }</div>
														</td>
														<td>
															<div class="td__center">${product.age } tháng</div>
														</td>
														<td>
															<div class="td__center">${product.getDisplayPrice(1) }</div>
														</td>
														<td>
															<div class="td__center">${product.getDisplayDeposit() }</div>
														</td>
														<td>
															<div class="td__center sl-js">${product.amount}</div>
														</td>
														<td>
															<div class="td__center">${product.getDate() }</div>
														</td>
														<td>
															<div class="td__center">${product.status}</div>
														</td>
														<td hidden="true">${product.description}</td>
														<td>
															<div class="td__center">
																<form action="admin/ProductManagement/${action }"
																	method="post">
																	<input type='hidden' name='idthu' value='${product.id }'>
																	<button type="submit"
																		class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
																</form>
															</div>
														</td>
													</tr>
												</tbody>
											</c:forEach>
										</table>
										<hr>
									</div>
									<!--End Table-->
									<div class="row">
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3">
											<div class="pagination-main">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<c:forEach begin="1" end="${totalPage }" var="i">
															<li class="page-item"><a class="page-link"
																href="admin/ProductManagement?targetPage=${i }">${i }</a>
														</c:forEach>
													</ul>
												</nav>
											</div>
											<!-- End Page Navigation -->
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- End container-fluid-->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart
			</a>.
			</strong> All rights reserved.
			<input type="hidden" id="active" value="Thú cưng">
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="dist/js/pages/custom.js"></script>
	<script src="plugins/Semantic-UI-CSS-master/semantic.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/active.js"></script>
	<script type="text/javascript" src="Script/QLSP.js"></script>
	<script>
				function hienThiFormNew(visible) {
					var hienFormNew = document.getElementById("form-disable-new");
					hienFormNew.style.display = visible ? "" : "none";
					var timKiem = document.getElementById("new-pet");
					timKiem.style.display = visible ? "none" : "block";
				}
				let tr = document.getElementsByClassName("tr-js");
				let sl = document.getElementsByClassName("sl-js");
				abc();
				function abc(){
					for (let i= 0; i<sl.length; i++){
						if(parseInt(sl[i].innerHTML) <= 3){
							tr[i].classList.add('table-danger');
							sl[i].style.color='#b71c1c';
							sl[i].style.fontWeight='600';
						}
						else if(4 < parseInt(sl[i].innerHTML) && parseInt(sl[i].innerHTML) < 10){
							// tr[i].classList.add('do');
							sl[i].style.color='#fbc02d';
							sl[i].style.fontWeight='600';
						}
					}
				}

				function validateForm(){
					let check = true;
					let namePet = document.getElementById("petName");
					let pricePet = document.getElementById("petPrice");
					let petBread = document.getElementById("pet-bread");
					let petStatus = document.getElementById("pet-status");
					let agePet = document.getElementById("petAge");
					let amountPet = document.getElementById("petAmount");
					let inforPet = document.getElementById("petInformation");

					let breadPet = petBread.options[petBread.selectedIndex].value;
					let statusPet = petStatus.options[petStatus.selectedIndex].value;

					let errorName = document.getElementById("error1");
					let errorPrice = document.getElementById("error4");
					let errorBread = document.getElementById("error2");
					let errorStatus = document.getElementById("error5");
					let errorAge = document.getElementById("error3");
					let errorAmount = document.getElementById("error6");
					let errorInfor = document.getElementById("error7");

					if(namePet.value.trim()==""){
						errorName.classList.remove("hide");
						namePet.style.borderColor="red";
						errorName.innerHTML="Không để trống tên thú cưng!";
						check =  false;
					}else if(namePet.value.trim().length > 25){
						errorName.classList.remove("hide");
						namePet.style.borderColor="red";
						errorName.innerHTML="Tên thú cưng không quá 25 ký tự!";
						check = false;
					}else{
						errorName.classList.add("hide");
						namePet.style.borderColor="green";
					}
					if(breadPet == "none"){
						errorBread.classList.remove("hide");
						petBread.style.borderColor="red";
						errorBread.innerHTML="Vui lòng chọn giống thú cưng!";
						check = false;
					}else{
						errorBread.classList.add("hide");
						petBread.style.borderColor="green";
					}
					if(agePet.value.trim()==""){
						errorAge.classList.remove("hide");
						agePet.style.borderColor="red";
						errorAge.innerHTML="Không để trống tuổi thú cưng!";
						check = false;
					}else if(isNaN(agePet.value.trim())){
						errorAge.classList.remove("hide");
						agePet.style.borderColor="red";
						errorAge.innerHTML="Tuổi thú cưng phải là số!";
						check = false;
					}else{
						errorAge.classList.add("hide");
						agePet.style.borderColor="green";
					}
					if(pricePet.value.trim()==""){
						errorPrice.classList.remove("hide");
						pricePet.style.borderColor="red";
						errorPrice.innerHTML="Không để trống giá thú cưng!";
						check = false;
					}else if(isNaN(pricePet.value.trim())){
						errorPrice.classList.remove("hide");
						pricePet.style.borderColor="red";
						errorPrice.innerHTML="Giá thú cưng phải là số!";
						check = false;
					}else{
						errorPrice.classList.add("hide");
						pricePet.style.borderColor="green";
					}
					if(statusPet=="none"){
						errorStatus.classList.remove("hide");
						petStatus.style.borderColor="red";
						errorStatus.innerHTML="Vui lòng chọn trạng thái thú cưng!";
						check = false;
					}else{
						errorStatus.classList.add("hide");
						petStatus.style.borderColor="green";
					}
					if(amountPet.value.trim()==""){
						errorAmount.classList.remove("hide");
						amountPet.style.borderColor="red";
						errorAmount.innerHTML="Số lượng thú cưng không được để trống!";
						check = false;
					}else if(isNaN(amountPet.value.trim())){
						errorAmount.classList.remove("hide");
						amountPet.style.borderColor="red";
						errorAmount.innerHTML="Số lượng thú cưng phải là số!";
						check = false;
					}else{
						errorAmount.classList.add("hide");
						amountPet.style.borderColor="green";
					}
					if(inforPet.value.trim()==""){
						errorInfor.classList.remove("hide");
						inforPet.style.borderColor="red";
						errorInfor.innerHTML="Không để trống mô tả thú cưng!";
						check = false;
					}else if(inforPet.value.trim().length > 900){
						errorInfor.classList.remove("hide");
						inforPet.style.borderColor="red";
						errorInfor.innerHTML="Mô tả thú cưng không quá 900 ký tự! Số ký tự của bạn đang là "+inforPet.value.trim().length;
						check = false;
					}else{
						errorInfor.classList.add("hide");
						inforPet.style.borderColor="green";
					}
					return check;
				}
	</script>

</body>

</html>
