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
													<label for="nameBread">Tên giống thú
														cưng</label> <input type="text" class="form-control"
														id="nameBread" name="nameBread">
												</div>
												<div class="form-group">
													<label for="infomation">Thông tin
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
										<label for="cbo_sort_species2">Lọc</label> <select
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
										<table class="table table-hover" style="margin-bottom: -1%">
											<thead>
												<tr class="bg-info">
													<th scope="col">STT</th>
													<th scope="col">Giống thú cưng</th>
													<th scope="col" style="width: 695px;">Thông tin</th>
													<th scope="col">Trạng thái</th>
													<th scope="col">Hành động</th>
												</tr>
											</thead>
											<c:forEach var="species" items="${listSpecies }">
												<tbody>
													<tr>
														<th scope="row">${species.getId() }</th>
														<td>
															<a href="javascript:" onclick="hienThi(true)">${species.getName()}</a>
														</td>
														<td>${species.getInformation() }</td>
														<td>${species.getDisplayStatus() }</td>
														<td>
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
														<c:forEach begin="1" end="${totalPage }" var="i">
															<li class="page-item"><a class="page-link"
																href="admin/SpeciesManagement?targetPage=${i }">${i }</a>
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
			<strong>Copyright &copy; 2020 <a
				href="http://adminlte.io">Petmart </a>.
			</strong> All rights reserved.
			<input type="hidden" id="active" value="Giống thú cưng">
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
	<script src="js/active.js"></script>
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
