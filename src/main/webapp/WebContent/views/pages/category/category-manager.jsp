<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Admin || Category Manager</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<!-- daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet"
	href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
<!-- Bootstrap Color Picker -->
<link rel="stylesheet"
	href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" />
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" />
<!-- Select2 -->
<link rel="stylesheet" href="plugins/select2/css/select2.min.css" />
<link rel="stylesheet"
	href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css" />
<!-- Bootstrap4 Duallistbox -->
<link rel="stylesheet"
	href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css" />
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
							<h1>HÃNG PHỤ KIỆN</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Hãng phụ kiện</li>
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
										<i class="fab fa-bandcamp"></i> Quản lý hãng phụ kiện
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div id="form-disable"
										style="display: none; max-width: 100%; margin-top: 10px">
										<div class="form-disable-p1">
											<form id="formAddCategory"
												action="admin/CategoryManagement/AddCategory" method="POST">
												<div class="form-group">
													<label for="exampleFormControlInput1">Tên hãng</label> <input
														type="text" class="form-control" id="category" name="name">
												</div>
												<div class="form-group">
													<label for="exampleFormControlInput1">Thông tin
														thêm</label> <input type="text" class="form-control" id="category"
														name="thongtin">
												</div>
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
											class="form-control" id="cbo_sort_Category2" style="">
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
										<table class="table table-hover" style="margin-bottom: -1%">
											<thead>
												<tr class="bg-info">
													<th scope="col">ID</th>
													<th scope="col">Hãng phụ kiện</th>
													<th scope="col">Thông tin</th>
													<th scope="col">Trạng thái</th>
													<th scope="col">Hành động</th>
												</tr>
											</thead>
											<c:forEach var="Category" items="${listCategory }">
												<tbody>
													<tr>
														<th scope="row">${Category.getId() }</th>
														<td><a
															href="javascript:" onclick="hienThi(true)">${Category.getName() }</a></td>
														<td>${Category.getDescription() }</td>
														<td>${Category.getDisplayStatus() }</td>
														<td>
															<form action="admin/CategoryManagement/${action }"
																method="post">
																<input type="hidden" value="${Category.getId() }"
																	name="CategoryId">
																<button type="submit"
																	class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
															</form>
														</td>
													</tr>
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
														<c:forEach begin="1" end="${totalPage }" var="i">
															<li class="page-item"><a class="page-link"
																href="admin/CategoryManagement?targetPage=${i }">${i }</a>
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
	<!-- Select2 -->
	<script src="plugins/select2/js/select2.full.min.js"></script>
	<!-- Bootstrap4 Duallistbox -->
	<script
		src="plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
	<!-- InputMask -->
	<script src="plugins/moment/moment.min.js"></script>
	<script src="plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>
	<!-- date-range-picker -->
	<script src="plugins/daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Bootstrap Switch -->
	<script src="plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script type="text/javascript" src="Script/QLHPK.js"></script>
	<!-- Page script -->
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
