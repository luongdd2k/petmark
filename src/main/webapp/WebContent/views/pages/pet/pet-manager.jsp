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
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="stylesheet" href="dist/css/custom.css">



</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index.html" class="nav-link">Trang chủ</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Tìm kiếm ..." aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Right navbar links -->
			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15 Thông báo</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 tin nhắn mới <span
							class="float-right text-muted text-sm">3 phút</span>
						</a>
						<div class="dropdown-divider"></div>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 báo cáo mới <span class="float-right text-muted text-sm">2
								ngày</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">Xem tất cả
							thông báo</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					href="pages/examples/recover-password.html"> <i
						class="fas fa-unlock-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="pages/examples/login.html"> <i
						class="fas fa-sign-out-alt"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-light-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index.html" class="brand-link"> <img
				src="dist/img/AdminLTELogo.jpg" alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Pet Mart</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="examples/profile.html" class="d-block">Trần Ngọc Hải</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview"><a href="index.html"
							class="nav-link"> <i class="nav-icon fas fa-home"></i>
								<p>Trang chủ</p>
						</a></li>
						<li class="nav-header">CỬA HÀNG</li>
						<li class="nav-item"><a href="admin/UserManagement"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p>Nhân viên</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="javascript:"
							class="nav-link active"> <i class="nav-icon fas fa-copy"></i>
								<p>Thú cưng</p>
						</a></li>
						<li class="nav-item has-treeview"><a
							href="admin/SpeciesManagement" class="nav-link"> <i
								class="nav-icon fas fa-chart-pie"></i>
								<p>Giống thú cưng</p>
						</a></li>
						<li class="nav-item has-treeview"><a
							href="admin/AccessoriesManagement" class="nav-link"> <i
								class="nav-icon fas fa-tree"></i>
								<p>Phụ kiện</p>
						</a></li>
						<li class="nav-item has-treeview"><a
							href="admin/CategoryManagement" class="nav-link"> <i
								class="nav-icon fas fa-edit"></i>
								<p>Hãng phụ kiện</p>
						</a></li>
						<li class="nav-header">QUẢN LÝ</li>
						<li class="nav-item has-treeview"><a
							href="admin/orders" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>Quản lý đơn hàng</p>
						</a></li>
						<li class="nav-item"><a href="admin/deposit"
							class="nav-link"> <i class="nav-icon fas fa-receipt"></i>
								<p>Quản lý cọc</p>
						</a></li>
						<li class="nav-header">THỐNG KÊ</li>
						<li class="nav-item"><a href="statistical/statistical.html"
							class="nav-link"> <i class="nav-icon far fa-chart-bar"></i>
								<p>Thống kê</p>
						</a></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

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
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Thú cưng</a></li>
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

									<!--Div form Update-->
									<div id="form-disable-update"
										style="display: none; max-width: 95%; margin: auto;">
										<form action="admin/ProductManagement/UpdateProduct" method="post">
											<input type="hidden" name="id" id="id">
											<div class="form-disable-p1 float-left"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlInput1">Tên thú cưng</label>
													<input type="text" class="form-control" id="petNameUpdate"
														name="tenThu">
												</div>
												<div class="form-group">
													<label for="exampleFormControlSelect1">Giống thú
														cưng</label> <select name="giongThu" id="pet-bread-update"
														style="height: 30px; width: 100%;">
														<c:forEach var="category" items="${listCategory }">
																<option value="${category.id }">${ category.getName()}</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Màu lông</label> <input
														type="text" class="form-control" id="petColor"
														name="mauLong">
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Màu mắt</label> <input
														type="text" class="form-control" id="petEyeColor"
														name="mauMat">
												</div>
											</div>
											<div class="form-disable-p1"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlInput1">Tuổi</label> <input
														type="text" class="form-control" id="petAgeUpdate"
														name="tuoiThu">
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Giá</label> <input
														type="text" class="form-control" id="petPriceUpdate"
														name="giaThu">
												</div>
												<div class="form-group">
													<label for="exampleFormControlSelect1">Trạng thái</label> <select
														name="trangThai" id="pet-status-update"
														style="height: 30px; width: 100%;">
														<c:forEach var="status" items="${listStatus }">
															<option value="${status }">${status }</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Số lượng</label> <input
														type="text" class="form-control" id="petAmountUpdate"
														name="soLuong">
												</div>
											</div>
											<div class="form-disable-p1"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlTextarea1">Mô tả</label>
													<textarea class="form-control" id="petInformationUpdate"
														rows="2" name="moTaThu"></textarea>
												</div>
												<div class="custom-file mb-3">
													<label class="custom-file-label" for="customFile">Chọn
														hình ảnh</label> <input type="file" class="custom-file-input"
														id="customFile" name="filename">
												</div>
												
												 <input type="hidden" class="form-control" id="petDateUpdate"
														name="ngayNhap">
												
												<div>
													<button type="submit"
														class="btn btn-custon-rounded-three btn-success btn-css">
														<i class="fas fa-save"></i> <span> Save</span>
													</button>
													<button type="reset"
														class="btn btn-custon-rounded-three btn-warning btn-css">
														<i class="fas fa-backspace"></i> <span> Clear</span>
													</button>
													<button type="button"
														class="btn btn-custon-rounded-three btn-danger btn-css"
														onclick="hiddenFormUpdate(true)">
														<i class="fas fa-slash"></i> <span> Cancel</span>
													</button>
												</div>
											</div>
										</form>
										<div class="clear"></div>
									</div>
									<!--End Div Form Update-->





									<!--Div Form New-->
									<div id="form-disable-new"
										style="display: none; max-width: 95%; margin: auto;">
										<form id="formAddProduct"
											action="admin/ProductManagement/AddProduct" method="POST">
											<div class="form-disable-p1 float-left"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlInput1">Tên thú cưng</label>
													<input type="text" class="form-control" id="petName"
														name="tenThu">
												</div>
												<div class="form-group">
													<label for="exampleFormControlSelect1">Giống thú
														cưng</label> <select name="giongThu" id="pet-bread"
														style="height: 30px; width: 100%;">
														<c:forEach var="category" items="${listCategory }">
															<option value="${ category.id}">${ category.name}</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Tuổi</label> <input
														type="text" class="form-control" id="petAge"
														name="tuoiThu">
												</div>
											</div>
											<div class="form-disable-p1"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlInput1">Giá</label> <input
														type="text" class="form-control" id="petPrice"
														name="giaThu">
												</div>
												<div class="form-group">
													<label for="exampleFormControlSelect1">Trạng thái</label> <select
														name="trangThai" id="pet-status"
														style="height: 30px; width: 100%;">
														<c:forEach var="status" items="${listStatus }">
															<option value="${status }">${status }</option>
														</c:forEach>
													</select>
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Số lượng</label> <input
														type="text" class="form-control" id="petAmount"
														name="soLuong">
												</div>
											</div>
											<div class="form-disable-p1"
												style="width: 330px; margin-left: 30px; float: left;">
												<div class="form-group">
													<label for="exampleFormControlTextarea1">Mô tả</label>
													<textarea class="form-control" id="petInformation" rows="2"
														name="moTaThu"></textarea>
												</div>
												<div>
													<button type="submit"
														class="btn btn-custon-rounded-three btn-success btn-css">
														<i class="fas fa-save"></i> <span> Save</span>
													</button>
													<button type="reset"
														class="btn btn-custon-rounded-three btn-warning btn-css">
														<i class="fas fa-backspace"></i> <span> Clear</span>
													</button>
													<button type="button"
														class="btn btn-custon-rounded-three btn-danger btn-css"
														onclick="hienThiFormNew(false)">
														<i class="fas fa-slash"></i> <span> Cancel</span>
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
													<div class="form-row">
														<div class="form-group col-2">
															<label for="exampleFormControlSelect1">Tên</label> <input
																class="form-control" type="search"
																placeholder="Tìm kiếm theo tên" aria-label="Search">
														</div>
														<!-- 														<div class="form-group col-2"> -->
														<!-- 															<label for="exampleFormControlSelect1">Giống thú -->
														<!-- 																cưng</label> <select class="form-control" id="locGiong" -->
														<!-- 																style="max-width: 150px;"> -->
														<%-- 																<c:forEach var="category" items="${listCategory }"> --%>
														<%-- 																	<option value="${ category.id}">${ category.name}</option> --%>
														<%-- 																</c:forEach> --%>
														<!-- 															</select> -->
														<!-- 														</div> -->
														<!-- 														<div class="form-group col-2"> -->
														<!-- 															<label for="exampleFormControlSelect1">Màu lông</label> <select -->
														<!-- 																class="form-control" id="locMauLong" -->
														<!-- 																style="max-width: 150px;"> -->
														<!-- 																<option>Vàng</option> -->
														<!-- 																<option>Trắng</option> -->
														<!-- 																<option>Đen</option> -->
														<!-- 																<option>Nâu</option> -->
														<!-- 															</select> -->
														<!-- 														</div> -->
														<!-- 														<div class="form-group col-2"> -->
														<!-- 															<label for="exampleFormControlSelect1">Màu mắt</label> <select -->
														<!-- 																class="form-control" id="locMauMat" -->
														<!-- 																style="max-width: 150px;"> -->
														<!-- 																<option>Đen</option> -->
														<!-- 																<option>Xanh</option> -->
														<!-- 																<option>Vàng</option> -->
														<!-- 																<option>Nâu</option> -->
														<!-- 															</select> -->
														<!-- 														</div> -->
														<div class="form-group col-2">
															<label for="exampleFormControlSelect1">Lọc</label> <select
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
										<table class="table table-striped" style="margin-bottom: -1%;" id="table-js">
											<thead class="thead-light">
												<tr>
													<th scope="col">#</th>
													<th scope="col">Ảnh</th>
													<th scope="col">Tên thú cưng</th>
													<th scope="col">Giống thú</th>
													<!--                           <th scope="col">Màu lông</th> -->
													<!--                           <th scope="col">Màu mắt</th> -->
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
													<tr>
														<th scope="row" class="td-center"
															style="padding-top: 2.5%;">${product.id }</th>
														<td><img class="img-fluid"
															src="${product.getImgs().get(0).getImgAvartar() }"
															alt="" style="max-width: 70px; max-height: 70px;"></td>
														<td class="td-center" style="padding-top: 2.5%;">
															<div onclick="showFormUpdate(true, ${product.id})">${product.petName }</div>				
														</td>
														<td class="td-center" style="padding-top: 2.5%;">
														<span hidden="true" >${product.getSpecies().getId() }</span>
														${product.getSpecies().getName() }
														</td>
														<!--                           <td class="td-center" style="padding-top: 2.5%;">Xám trắng</td> -->
														<!--                           <td class="td-center" style="padding-top: 2.5%;">Xanh dương</td> -->
														<td class="td-center" style="padding-top: 2.5%;">${product.age }</td>
														<td class="td-center" style="padding-top: 2.5%;">${product.getDisplayPrice(1) }</td>
														<td class="td-center" style="padding-top: 2.5%;">${product.getDisplayDeposit() }</td>
														<td class="td-center" style="padding-top: 2.5%;">${product.amount}</td>
														<td class="td-center" style="padding-top: 2.5%;">${product.getDate() }</td>
														<td class="td-center" style="padding-top: 2.5%;">${product.status}</td>
														<td class="td-center" style="padding-top: 2.5%;" hidden="true">${product.description}</td>
														<td class="td-center" style="padding-top: 2%;">
															<form action="admin/ProductManagement/${action }"
																method="post">
																<input type='hidden' name='idthu' value='${product.id }'>
																<button type="submit"
																	class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
															</form>
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
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a></li>
														<li class="page-item"><a class="page-link" href="#">1</a></li>
														<li class="page-item"><a class="page-link" href="#">2</a></li>
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Next"> <span aria-hidden="true">&raquo;</span>
														</a></li>
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
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script type="text/javascript" src="Script/QLSP.js"></script>
	<script type="text/javascript">
	var x = [];
    $("#table-js tr").each(function () {
      var id = $(this).find("th").eq(0).html();
      var ten = $(this).find("div").eq(0).html();
      var hang = $(this).find("span").eq(0).html();
      var tuoi = $(this).find("td").eq(3).html();
      var gia = $(this).find("td").eq(4).html();
      var coc = $(this).find("td").eq(5).html();
      var soLuong = $(this).find("td").eq(6).html();
      var date = $(this).find("td").eq(7).html();
      var stt = $(this).find("td").eq(8).html();
      var mota = $(this).find("td").eq(9).html();
      x.push({
        id: id,
        ten: ten,
        hang: hang,
        tuoi: tuoi,
        gia: gia,
        coc: coc,
        soLuong: soLuong,
        date: date,
        stt: stt,
        mota: mota
      });
//       console.log(x);
      });
		function hienThiFormNew(visible) {
			var hienFormNew = document.getElementById("form-disable-new");
			hienFormNew.style.display = visible ? "" : "none";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "none" : "block";
		}
		function showFormUpdate(visible, id) {
			var hienFormUpdate = document.getElementById("form-disable-update");
			hienFormUpdate.style.display = visible ? "" : "none";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "none" : "block";
			var hienFormNew = document.getElementById("form-disable-new");
			hienFormNew.style.display = visible ? "none" : "block";
			var pet = x.find( item => item.id === id.toString() );
			console.log(pet.hang);
			console.log(x);
			$('#id').val(pet.id);
			$('#petNameUpdate').val(pet.ten);
			$('#petAgeUpdate').val(pet.tuoi);
			$('#petPriceUpdate').val(pet.gia);
			$('#petAmountUpdate').val(pet.soLuong);
			$('#pet-status-update').val(pet.stt);
			$('#pet-bread-update').val(pet.hang);
			$('#petInformationUpdate').val(pet.mota);
			$('#petDateUpdate').val(pet.date);
		}
		
		function hiddenFormUpdate(visible) {
			var hienFormUpdate = document.getElementById("form-disable-update");
			hienFormUpdate.style.display = visible ? "none" : "block";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "" : "none";
		}
	</script>
</body>

</html>
