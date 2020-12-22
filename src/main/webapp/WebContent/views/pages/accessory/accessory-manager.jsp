<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Admin || Accessori Manager</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Bootstrap 4 -->

<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css" />
<!-- Ionicons -->
<link rel="stylesheet" type="text/css"   
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<!-- Theme style -->
<link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css" />
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"    href="dist/css/custom.css" />
	<link rel="stylesheet" type="text/css"    href="css/employee.css">
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<%@ include file="/WebContent/views/header_nav_admin.jsp" %>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<%@ include file="/WebContent/views/aside_nav_admin.jsp" %>
		<!-- End aside -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>PHỤ KIỆN</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index4.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Phụ kiện</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- COLOR PALETTE -->
					<div class="card card-default color-palette-box">
						<div class="card-header">
							<h3 class="card-title">
								<i class="fab fa-simplybuilt"></i> Quản lý phụ kiện
							</h3>
						</div>


						<div class="card-body">
							<form id="formAddAccessories" action="admin/AccessoriesManagement/AddAccessories" method="POST" onsubmit="return validateForm()">
								<div id="form-disable-new" class="row" style="display: none; max-width: 80%; margin: auto; margin-top: 10px;">
										<div class="form-group col-lg-3">
											<label>Tên phụ kiện</label>
											<input name="tenPhuKien" type="text" class="form-control" id="accessoriName" />
											<p id="error1" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-lg-3">
											<label for="category">Hãng</label>
											<select name="hangPhuKien" id="category" class="form-control">
													<option value="none" selected>---- Chọn hãng phụ kiện ----</option>
												<c:forEach var="category" items="${listCategory }">
													<option value="${ category.id}" selected>${ category.name}</option>
												</c:forEach>
											</select>
											<p id="error2" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-lg-2">
											<label>Giá</label>
											<input name="giaPhuKien" type="text" class="form-control" id="accessoriPrice" />
											<p id="error3" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-lg-2">
											<label>Trạng thái</label>
											<select name="trangThaiPhuKien" id="accessoriStatus" class="form-control">
												<option value="none" selected>---- Chọn trạng thái ----</option>
												<c:forEach var="status" items="${listStatus }">
													<option value="${status }" selected>${status }</option>
												</c:forEach>
											</select>
											<p id="error4" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-lg-2">
											<label>Số lượng</label>
											<input name="soLuongPhuKien" type="text" class="form-control" id="accessoriAmount" />
											<p id="error5" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-12">
											<label>Mô tả</label>
											<textarea name="moTaPhuKien" class="form-control" id="accessoriInformation" rows="2"></textarea>
											<p id="error6" class="hide" style="color: red;font-weight: 400;font-size: 14px;" ></p>
										</div>
										<div class="form-group col-lg-12" style="text-align: center;">
											<button type="submit" class="btn btn-custon-rounded-three btn-success btn-css">
												<i class="fas fa-save"></i> <span> Save</span>
											</button>
											<button type="reset" class="btn btn-custon-rounded-three btn-warning btn-css">
												<i class="fas fa-backspace"></i> <span> Clear</span>
											</button>
											<button type="button" class="btn btn-custon-rounded-three btn-danger btn-css" onclick="hienThiFormNew(false)">
												<i class="fas fa-slash"></i> <span> Cancel</span>
											</button>
										</div>
								</div>
							</form>
							<!-- End new Form -->

							<div id="new-pet">
								<div class="row">
									<div class="col-12">
										<form action="">
											<div class="form-row">
												<div class="form-group col-2">
													<label>Tên</label>
													<input class="form-control" type="search" placeholder="Tìm kiếm theo tên" aria-label="Search">
												</div>
												<div class="form-group col-2">
													<label>Lọc</label> <select
														class="form-control" id="cbo_sort_Accessories2" style="">
														<option value="-1">ID:&nbsp thấp ⟶ cao</option>
														<option value="0">ID:&nbsp cao ⟶ thấp</option>
														<option value="1">Giá:&nbsp từ thấp ⟶ cao</option>
														<option value="2">Giá:&nbsp từ cao ⟶ thấp</option>
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

							<div class="table-responsive-xl main-table">
								<table class="table table-hover" style="margin-bottom: -1%" id="table-js">
									<thead>
										<tr class="bg-info">
											<th scope="col">STT</th>
											<th scope="col">Ảnh</th>
											<th scope="col">Tên phụ kiện</th>
											<th scope="col">Hãng</th>
											<th scope="col">Giá</th>
											<th scope="col">Số lượng</th>
											<th scope="col">Ngày nhập</th>
											<th scope="col">Trạng thái</th>
											<th scope="col" hidden="true">Mô tả</th>
											<th scope="col">Hành động</th>
										</tr>
									</thead>
									<c:forEach var="Accessories" items="${listAccessories}">
										<tbody>
											<tr>
												<th scope="row" class="idthu">
													<div class="td__center">${Accessories.id }</div>
												</th>
												<td>
													<img class="img-fluid" src="${Accessories.getImgs().get(0).getImgAvartar() }" alt="" style="max-width: 90px; max-height: 90px;">
												</td>
												<td class="tenthucung">
													<a href="admin/AccessoriesManagement/show-edit/${Accessories.getId() }">
														<div class="td__center">${Accessories.name }</div>
													</a>
												</td>
												<td>
													<span hidden="true">${Accessories.getCategory().getId() }</span>
													<div class="td__center">${Accessories.getCategory().getName() }</div>
												</td>
												<td>
													<div class="td__center">${Accessories.getDisplayPrice(1) } <span> đ</span></div>
												</td>
												<td>
													<div class="td__center">${Accessories.getAmount() }</div>
												</td>
												<td>
													<div class="td__center">${Accessories.getDate() }</div>
												</td>
												<td>
													<div class="td__center">${Accessories.getStatus() }</div>
												</td>
												<td hidden="true">${Accessories.getDescription()}</td>
												<td>
													<div class="td__center">
														<form action="admin/AccessoriesManagement/${action }"
															method="post">
															<input type="hidden" value="${Accessories.id }"
																name="AccessoriesId">
															<button type="submit"
																class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
														</form>
													</div>
												</td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
								<hr />
							</div>
							<!--End Table-->
							<div class="pagination-main" style="padding-left: 85%">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
									<c:forEach begin="1" end="${totalPage }" var="i">
									<li class="page-item"><a class="page-link" href="admin/AccessoriesManagement?targetPage=${i }">${i }</a>
									</c:forEach>
									</ul>
								</nav>
							</div>
							<!-- End Page Navigation -->
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Start modal-->
		<div class="modal fade" id="modelMessage" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Bạn vừa ngừng
							kinh doanh ... !!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">ID của ... mà bạn vừa dừng kinh doanh
						là :</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Đóng</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Modal-->
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart
			</a>.
			</strong> All rights reserved.
			<input type="hidden" id="active" value="Phụ kiện">
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
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/active.js"></script>
	<script type="text/javascript" src="Script/QLPK.js"></script>
	<script type="text/javascript">
		b();
	var x = [];
    $("#table-js tr").each(function () {
      var id = $(this).find("th").eq(0).html();
      var ten = $(this).find("div").eq(0).html();
      var hang = $(this).find("span").eq(0).html();
      var gia = $(this).find("td").eq(3).html();
      var soLuong = $(this).find("td").eq(4).html();
      var date = $(this).find("td").eq(5).html();
      var stt = $(this).find("td").eq(6).html();
      var mota = $(this).find("td").eq(7).html();
		  x.push({
			id: id,
			ten: ten,
			hang: hang,
			gia: gia,
			soLuong: soLuong,
			date: date,
			stt: stt,
			mota: mota
		  });
      });
		function hienThiFormNew(visible) {
			var hienFormNew = document.getElementById("form-disable-new");
			hienFormNew.style.display = visible ? "" : "none";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "none" : "block";
		}

		function validateForm(){
			let check = true;
			let accName = document.getElementById("accessoriName");
			let categoryAcc = document.getElementById("category");
			let accPrice = document.getElementById("accessoriPrice");
			let statusAcc = document.getElementById("accessoriStatus");
			let accAmount = document.getElementById("accessoriAmount");
			let accInfor = document.getElementById("accessoriInformation");

			let accCategory = categoryAcc.options[categoryAcc.selectedIndex].value;
			let accStatus = statusAcc.options[statusAcc.selectedIndex].value;

			let errorName = document.getElementById("error1");
			let errorCategory = document.getElementById("error2");
			let errorPrice = document.getElementById("error3");
			let errorStatus = document.getElementById("error4");
			let errorAmount = document.getElementById("error5");
			let errorInfor = document.getElementById("error6");

			if(accName.value.trim()==""){
				errorName.classList.remove("hide");
				accName.style.borderColor="red";
				errorName.innerHTML="Không để trống tên phụ kiện!";
				check = false;
			}else if(accName.value.trim().lenth >25){
				errorName.classList.remove("hide");
				accName.style.borderColor="red";
				errorName.innerHTML="Tên phụ kiện không quá 25 ký tự!";
				check = false;
			}else{
				errorName.classList.add("hide");
				accName.style.borderColor="green";
			}
			if(accCategory=="none"){
				errorCategory.classList.remove("hide");
				categoryAcc.style.borderColor="red";
				errorCategory.innerHTML="Vui lòng chọn hãng phụ kiện!";
				check=false;
			}else{
				errorCategory.classList.add("hide");
				categoryAcc.style.borderColor="green";
			}
			if(accPrice.value.trim()==""){
				errorPrice.classList.remove("hide");
				accPrice.style.borderColor="red";
				errorPrice.innerHTML ="Không để trống giá phụ kiện!";
				check = false;
			}else if(isNaN(accPrice.value.trim())){
				errorPrice.classList.remove("hide");
				accPrice.style.borderColor="red";
				errorPrice.innerHTML="Giá phụ kiện phải là số!";
				check = false;
			}else if(parseInt(accPrice.value.trim()) < 0){
				errorPrice.classList.remove("hide");
				accPrice.style.borderColor="red";
				errorPrice.innerHTML="Giá phụ kiện phải là số nguyên dương!";
				check = false;
			}else{
				errorPrice.classList.add("hide");
				accPrice.style.borderColor="green";
			}
			if(accStatus=="none"){
				errorStatus.classList.remove("hide");
				statusAcc.style.borderColor="red";
				errorStatus.innerHTML="Vui lòng chọn trạng thái!";
				check=false;
			}else{
				errorStatus.classList.add("hide");
				statusAcc.style.borderColor="green";
			}
			if (accAmount.value.trim()==""){
				errorAmount.classList.remove("hide");
				accAmount.style.borderColor="red";
				errorAmount.innerHTML ="Không để trống số lượng phụ kiện!";
				check = false;
			}else if(isNaN(accAmount.value.trim())){
				errorAmount.classList.remove("hide");
				accAmount.style.borderColor="red";
				errorAmount.innerHTML="Số lượng phụ kiện phải là số!";
				check = false;
			}else if(parseInt(accAmount.value.trim()) < 0){
				errorAmount.classList.remove("hide");
				accAmount.style.borderColor="red";
				errorAmount.innerHTML="Giá phụ kiện phải là số nguyên dương!";
				check = false;
			}else{
				errorAmount.classList.add("hide");
				accAmount.style.borderColor="green";
			}
			if(accInfor.value.trim()==""){
				errorInfor.classList.remove("hide");
				accInfor.style.borderColor="red";
				errorInfor.innerHTML ="Không để trống mô tả phụ kiện!";
				check = false;
			}else if(accInfor.value.trim().lenth > 900){
				errorInfor.classList.remove("hide");
				accInfor.style.borderColor="red";
				errorInfor.innerHTML="Mô tả phụ kiện không quá 900 ký tự!";
				check = false;
			}else{
				errorInfor.classList.add("hide");
				accInfor.style.borderColor="green";
			}
			return check;
		}


	</script>
</body>
</html>
