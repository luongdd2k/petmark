
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

<link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet" type="text/css"   
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet" type="text/css"   
	href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Theme style -->
<link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"    href="dist/css/custom.css">
<link rel="stylesheet" type="text/css"    href="css/employee.css">
<style>
.card-content-form {
	max-width: 900px;
	margin: 0 auto;
}

.button-group-right {
	text-align: right;
	margin-bottom: 5px;
}

.button-group-left {
	text-align: left;
	margin-bottom: 5px;
}

.button-group-center {
	text-align: center;
}

.hide {
	display: none;
	visibility: hidden;
}
</style>


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
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
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
										<i class="fas fa-paw"></i> Thông tin chi tiết thú cưng
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="row">
										<div class="card-content-form">
											<form id="pet-detail" action="admin/ProductManagement/UpdateProduct">
												<input type="hidden" name="ngayNhap" value="${pet.getDate() }"> <input
													type="hidden" name="id" value="${pet.getId() }">
												<div class="row">
													<div class="form-group col-4">
														<label for="namePetDetail">Tên thú cưng</label> <input
															type="text" class="form-control" id="namePetDetail"
															name="tenThu" value="${pet.getPetName() }">
													</div>
													<div class="col-8">
														<div class="row">
															<div class="form-group col-4">
																<label for="agePet">Tuổi thú cưng</label> <input
																	type="text" class="form-control" id="agePet"
																	name="tuoiThu" value="${pet.getAge() }">
															</div>
															<div class="form-group col-4">
																<label for="pricePet">Giá thú cưng</label> <input
																	type="text" class="form-control" id="pricePet"
																	name="giaThu" value="${pet.getPrice() }">
															</div>
															<div class="form-group col-4">
																<label for="amountPet">Số lượng</label> <input
																	type="text" class="form-control" id="amountPet"
																	name="soLuong" value="${pet.getAmount() }">
															</div>
														</div>
													</div>
													<div class="form-group col-6">
														<label for="breadPet">Giống thú cưng</label> <select
															class="form-control" id="breadPet" name="giongThu">
															<c:forEach var="category" items="${listCategory }">
															<option value="${category.id }">${ category.getName()}</option>
														</c:forEach>
														</select>
													</div>
													<div class="form-group col-6">
														<label for="statusPet">Trạng thái</label> <select
															class="form-control" id="statusPet" name="trangThai">
															<c:forEach var="status" items="${listStatus }">
															<option value="${status }">${status }</option>
														</c:forEach>
														</select>
													</div>
													<div class="form-group col-12">
														<label for="desAcc">Mô tả</label>
														<textarea class="form-control" id="desAcc" rows="2"
															name="moTaThu">${pet.getDescription() }</textarea>
													</div>
													<div class="form-group col-12 button-group-center">
														<button type="submit" class="btn btn-success">
															<i class="fas fa-save"></i> Cập nhật
														</button>
														<button onclick="showImage()" type="button"
															class="btn btn-info">
															<i class="fas fa-save"></i> Hình ảnh
														</button>
														<button type="button" class="btn btn-danger">
															<i class="fas fa-window-close"></i> Hủy
														</button>
													</div>
												</div>
											</form>
											<form id="pet-color" class="hide" action="admin/ProductManagement/addColor" method="post">
												<input type="hidden" name="id" value="${pet.getId() }">
												<div class="row">
													<div class="form-group col-4">
														<label for="namePet">Tên thú cưng (<span style="color: red;">*</span>)</label> <input
															type="text" class="form-control" id="namePet" value="${pet.getPetName() }">
													</div>
													<div class="form-group col-4">
														<label for="colorPet">Màu lông (<span style="color: red;">*</span>)</label> <input
															type="text" class="form-control" id="colorPet" name="mauLong">
													</div>
													<div class="form-group col-4">
														<label for="colorPet">Màu mắt (<span style="color: red;">*</span>)</label> <input
															type="text" class="form-control" id="colorPet" name="mauMat">
													</div>
												</div>
												<div class="form-group col-12 button-group-center">
													<button type="submit" class="btn btn-success">
														<i class="fas fa-save"></i> Lưu
													</button>
													<button onclick="hideColor()" type="button"
														class="btn btn-danger">
														<i class="fas fa-window-close"></i> Hủy
													</button>
												</div>
											</form>
											<form id="form-image" class="hide" action="admin/ProductManagement/addImg"  method="post" enctype="multipart/form-data">
												<input type="hidden" name="id" value="${pet.getId() }">
												<div class="row">
													<div class="form-group col-3">
														<label class="custom-file-label" for="customFile">Chọn
															hình ảnh</label> <input type="file" class="custom-file-input"
															id="customFile" name="avatar">
													</div>
													<div class="form-group col-3">
														<label class="custom-file-label" for="customFile1">Chọn
															hình ảnh</label> <input type="file" class="custom-file-input"
															id="customFile1" name="img1">
													</div>
													<div class="form-group col-3">
														<label class="custom-file-label" for="customFile2">Chọn
															hình ảnh</label> <input type="file" class="custom-file-input"
															id="customFile2" name="img2">
													</div>
													<div class="form-group col-3">
														<label class="custom-file-label" for="customFile3">Chọn
															hình ảnh</label> <input type="file" class="custom-file-input"
															id="customFile3" name="img3">
													</div>
													<div class="form-group col-12 button-group-center">
														<button type="submit" class="btn btn-success">
															<i class="fas fa-save"></i> Lưu
														</button>
														<button onclick="hideImage()" type="button"
															class="btn btn-danger">
															<i class="fas fa-window-close"></i> Hủy
														</button>
													</div>
												</div>
											</form>
											<div class="col-12">
												<div class="table-responsive main-table ">
													<table class="table table-hover">
														<thead>
															<tr class="bg-info">
																<th scope="col">Tên thú cưng</th>
																<th scope="col">Màu lông </th>
																<th scope="col">Màu mắt </th>
															</tr>
														</thead>
														<tbody>
														<c:forEach var="color" items="${color }">
															<tr>
																<td>${color.getPet().getPetName() }</td>
																<td>${color.getFullColor() }</td>
																<td>${color.getEyeColor() }</td>
															</tr>
															</c:forEach>
														</tbody>
													</table>
													<hr>
												</div>
												<!--End Table-->
												<div class="button-group-right">
													<button onclick="showColor()" type="button"
														class="btn btn-primary" id="new-color">
														<i class="fas fa-plus-circle"></i> Thêm mới
													</button>
												</div>
											</div>
										</div>
									</div>
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
			</strong> All rights reserved. <input type="hidden" id="active"
				value="Thú cưng">
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
	<script src="js/active.js"></script>
	<script type="text/javascript" src="Script/QLSP.js"></script>
	<script>
		function hienThiFormNew(visible) {
			var hienFormNew = document.getElementById("form-disable-new");
			hienFormNew.style.display = visible ? "" : "none";
			var timKiem = document.getElementById("new-pet");
			timKiem.style.display = visible ? "none" : "block";
		}
		function hideColor() {
			let detail = document.getElementById("pet-detail");
			let btnNew = document.getElementById("new-color");
			let colorForm = document.getElementById("pet-color");

			detail.classList.remove("hide");
			btnNew.classList.remove("hide");
			colorForm.classList.add("hide");
		}
		function showColor() {
			let detail = document.getElementById("pet-detail");
			let btnNew = document.getElementById("new-color");
			let colorForm = document.getElementById("pet-color");

			detail.classList.add("hide");
			btnNew.classList.add("hide");
			colorForm.classList.remove("hide");
		}
		function showImage() {
			let formImage = document.getElementById("form-image");
			let detail = document.getElementById("pet-detail");

			detail.classList.add("hide");
			formImage.classList.remove("hide");
		}
		function hideImage() {
			let formImage = document.getElementById("form-image");
			let detail = document.getElementById("pet-detail");

			detail.classList.remove("hide");
			formImage.classList.add("hide");
		}
	</script>

</body>

</html>
