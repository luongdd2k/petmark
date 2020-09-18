<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Admin || Pet Bread Manager</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Bootstrap 4 -->
<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css" />
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet" />
<link rel="stylesheet" href="dist/css/custom.css" />
</head>

<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a>
				</li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index.html" class="nav-link">Trang chủ</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Tìm kiếm ..." aria-label="Search" />
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
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
						<a href="#" class="dropdown-item dropdown-footer">Xem
							tất cả thông báo</a>
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
				class="brand-image img-circle elevation-3" style="opacity: 0.8" />
				<span class="brand-text font-weight-light">Pet Mart</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="dist/img/user2-160x160.jpg"
							class="img-circle elevation-2" alt="User Image" />
					</div>
					<div class="info">
						<a href="examples/profile.html" class="d-block">Trần
							Ngọc Hải</a>
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
						<li class="nav-item has-treeview"><a
							href="admin/ProductManagement" class="nav-link"> <i
								class="nav-icon fas fa-copy"></i>
								<p>Thú cưng</p>
						</a></li>
						<li class="nav-item has-treeview"><a href="javascript:"
							class="nav-link active"> <i class="nav-icon fas fa-chart-pie"></i>
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
							href="order/order-manager.html" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>Quản ý đơn hàng</p>
						</a></li>
						<li class="nav-item"><a href="deposit/deposit-manager.html"
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
							<h1>GIỐNG THÚ CƯNG</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Giống thú cưng</li>
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
										<i class="fas fa-dog"></i> Quản lý giống thú cưng
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div id="form-disable" class="form-disable-css"
										style="display: none; max-width: 100%; margin-top: 10px">
										<div class="form-disable-p1">
											<form id="formAddSpecies"
												action="admin/SpeciesManagement/AddSpecies" method="POST">
												<div class="form-group">
													<label for="exampleFormControlInput1">Tên giống thú
														cưng</label> <input type="text" class="form-control"
														id="nameBread" name="nameBread">
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Thông tin
														thêm</label> <input type="text" class="form-control"
														id="infomation" name="information">
												</div>
												<!-- 												<div class="form-group"> -->
												<!-- 													<label for="exampleFormControlSelect1">Trạng thái</label> <select -->
												<!-- 														class="form-control quyen" id="exampleFormControlSelect1" name="status"> -->
												<!-- 														<option value="stocking" selected>Còn kinh doanh</option> -->
												<!-- 													</select> -->
												<!-- 												</div> -->
												<div style="margin-top: 30px;">
													<button type="submit"
														class="btn btn-custon-rounded-three btn-success btn-css">Lưu</button>
													<button type="button"
														class="btn btn-custon-rounded-three btn-danger btn-css"
														onclick="hienThi(false)">Huỷ</button>
												</div>
											</form>
										</div>
										<div class="clear"></div>
									</div>
									<!-- End Form -->
									<div class="form-group col-2">
										<label for="exampleFormControlSelect1">Lọc</label> <select
											class="form-control" id="cbo_sort_species2" style="">
											<option value="-1">ID:&nbsp thấp ⟶ cao</option>
											<option value="0">ID:&nbsp cao ⟶ thấp</option>
											<option value="1" style="background: #ffe6e6">Dừng
												kinh doanh</option>
										</select> <span id="sortValue2" style="display: none;">${sortValue }</span>
									</div>
									<div class="btn-new-css">
										<button id="new-pet" type="button"
											class="btn btn-custon-rounded-three btn-primary"
											style="display: block" onclick="hienThi(true)">
											<i class="fas fa-plus-circle"></i> <span> Thêm mới</span>
										</button>
									</div>
									<!-- End Thêm mới-->

									<div class="table-responsive-xl main-table">
										<table class="table" style="margin-bottom: -1%">
											<thead class="thead-light">
												<tr>
													<th scope="col">STT</th>
													<th scope="col">Giống thú cưng</th>
													<th scope="col">Thông tin</th>
													<th scope="col">Trạng thái</th>
													<th scope="col">Hành động</th>
												</tr>
											</thead>
											<c:forEach var="species" items="${listSpecies }">
												<tbody>
													<tr>
														<th scope="row" class="td-center"
															style="padding-top: 2.5%;">${species.getId() }</th>
														<td class="td-center" style="padding-top: 2.5%;"><a
															href="javascript:" onclick="hienThi(true)">${species.getName() }</a></td>
														<td class="td-center" style="padding-top: 2.5%;">${species.getInformation() }</td>
														<td class="td-center" style="padding-top: 2.5%;">${species.getDisplayStatus() }</td>
														<td class="td-center" style="padding-top: 2%;">
														<form action="admin/SpeciesManagement/${action }" method="post">
														<input type="hidden" value="${species.getId() }" name="speciesId">
															<button type="submit"
																class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
																</form>
														</td>
												</tbody>
											</c:forEach>
										</table>
										<hr />
									</div>
									<!--End Table-->
									<div class="row">
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3"></div>
										<div class="col-12 col-sm-6 col-md-3">
											<div class="pagination-main" style="padding-left: 70px">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<li class="page-item"><a class="page-link" href="#"
															aria-label="Previous">
																<span aria-hidden="true">&laquo;</span>
														</a></li>
														<li class="page-item"><a class="page-link" href="#">1</a>
														</li>
														<li class="page-item"><a class="page-link" href="#">2</a>
														</li>
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
			<strong>Copyright &copy; 2020 <a
				href="http://adminlte.io">Petmart </a>.
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
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<!-- jQuery Knob -->
	<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- page script -->
	<script type="text/javascript" src="Script/QLG.js"></script>
	<script type="text/javascript">
		function hienThi(visible) {
			var hienForm = document.getElementById("form-disable");
			hienForm.style.display = visible ? "" : "none";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "none" : "block";
		}
	</script>
</body>
</html>
