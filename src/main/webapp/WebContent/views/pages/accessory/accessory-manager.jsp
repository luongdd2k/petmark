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
							<!--Div Form Update-->
							<div id="form-disable-update"
								style="display: none; max-width: 95%; margin: auto; margin-top: 10px;">
								<form action="admin/AccessoriesManagement/UpdateAccessories" method="post">
								<input type="hidden" name="id" id="id">
									<div class="form-disable-p1 float-left"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label >Tên phụ kiện</label> <input
												name="tenPhuKien" type="text" class="form-control"
												id="tenUpdate" />
										</div>
										<div class="form-group">
											<label >Hãng</label> <select
												name="hangPhuKien" id="hangUpdate"
												style="height: 30px; width: 100%">
												<c:forEach var="category" items="${listCategory }">
													<option value="${ category.id}" selected>${ category.name}</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group">
											<label >Màu sắc</label> <input
												name="mauPhuKien" type="text" class="form-control"
												id="accessoriColor" />
										</div>
									</div>
									<div class="form-disable-p1"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label >Giá</label> <input
												name="giaPhuKien" type="text" class="form-control"
												id="giaUpdate" />
										</div>
										<div class="form-group">
											<label >Trạng thái</label> <select
												name="trangThaiPhuKien" id="trangThaiUpdate"
												style="height: 30px; width: 100%">
												<c:forEach var="status" items="${listStatus }">
													<option value="${status }" selected>${status }</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group">
											<label >Số lượng</label> <input
												name="soLuongPhuKien" type="text" class="form-control"
												id="soLuongUpdate" />
										</div>
									</div>
									<div class="form-disable-p1"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label>Mô tả</label>
											<textarea name="moTaPhuKien" class="form-control"
												id="moTaUpdate" rows="2"></textarea>
										</div>
										<div class="custom-file mb-3">
											<label class="custom-file-label" for="customFile">Hình
												ảnh</label> <input type="file" class="custom-file-input"
												id="customFile" name="filename" />
										</div>
										 <input type="hidden" class="form-control" id="ngayUpdate"
														name="ngayUpdate">
										<div>
											<button type="submit"
												class="btn btn-custon-rounded-three btn-success btn-css">
												<i class="fas fa-save"></i> <span> Lưu</span>
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
							<!--End Form Update-->



							<div id="form-disable-new"
								style="display: none; max-width: 95%; margin: auto; margin-top: 10px;">
								<form id="formAddAccessories"
									action="admin/AccessoriesManagement/AddAccessories"
									method="POST">
									<div class="form-disable-p1 float-left"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label>Tên phụ kiện</label> <input
												name="tenPhuKien" type="text" class="form-control"
												id="accessoriName" />
										</div>
										<div class="form-group">
											<label>Hãng</label> <select
												name="hangPhuKien" id="category"
												style="height: 30px; width: 100%">
												<c:forEach var="category" items="${listCategory }">
													<option value="${ category.id}" selected>${ category.name}</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group">
											<label>Giá</label> <input
												name="giaPhuKien" type="text" class="form-control"
												id="accessoriPrice" />
										</div>
									</div>
									<div class="form-disable-p1"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label>Trạng thái</label> <select
												name="trangThaiPhuKien" id="accessori-status"
												style="height: 30px; width: 100%">
												<c:forEach var="status" items="${listStatus }">
													<option value="${status }" selected>${status }</option>
												</c:forEach>
											</select>
										</div>
										<div class="form-group">
											<label>Số lượng</label> <input
												name="soLuongPhuKien" type="text" class="form-control"
												id="accessoriAmount" />
										</div>
									</div>
									<div class="form-disable-p1"
										style="width: 330px; margin-left: 30px; float: left">
										<div class="form-group">
											<label>Mô tả</label>
											<textarea name="moTaPhuKien" class="form-control"
												id="accessoriInformation" rows="2"></textarea>
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
							<!-- End new Form -->
							<div id="new-pet">
								<div class="row">
									<div class="col-12">
										<form action="">
											<div class="form-row">
												<div class="form-group col-2">
													<label>Tên</label> <input
														class="form-control" type="search"
														placeholder="Tìm kiếm theo tên" aria-label="Search">
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
								<table class="table" style="margin-bottom: -1%" id="table-js">
									<thead class="thead-light">
										<tr>
											<th scope="col">STT</th>
											<th scope="col">Ảnh</th>
											<th scope="col">Tên phụ kiện</th>
											<th scope="col">Hãng</th>
											<!-- <th scope="col">Màu</th> -->
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
												<th scope="row" class="td-center idthu"
													style="padding-top: 2.5%;">${Accessories.id }</th>
												<td><img class="img-fluid"
													src="${Accessories.getImgs().get(0).getImgAvartar() }"
													alt="" style="max-width: 70px; max-height: 70px;"></td>
												<td class="td-center tenthucung" style="padding-top: 2.5%;"><div
														onclick="showFormUpdate(true, ${Accessories.id})" class="alert-link">${Accessories.name }</div></td>
												<td class="td-center" style="padding-top: 2.5%;"><span
													hidden="true">${Accessories.getCategory().getId() }</span>
													${Accessories.getCategory().getName() }</td>
												<!-- <td class="td-center" style="padding-top: 2.5%;">Đỏ</td> -->
												<td class="td-center" style="padding-top: 2.5%;">${Accessories.getDisplayPrice(1) }</td>
												<td class="td-center" style="padding-top: 2.5%;">${Accessories.getAmount() }</td>
												<td class="td-center" style="padding-top: 2.5%;">${Accessories.getDate() }</td>
												<td class="td-center" style="padding-top: 2.5%;">${Accessories.getStatus() }</td>
												<td class="td-center" hidden="true" style="padding-top: 2.5%;">${Accessories.getDescription()}</td>
												<td class="td-center" style="padding-top: 2%;">
													<form action="admin/AccessoriesManagement/${action }"
														method="post">
														<input type="hidden" value="${Accessories.id }"
															name="AccessoriesId">
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
							<div class="pagination-main" style="padding-left: 85%">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="javascript:"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
										<li class="page-item"><a class="page-link" href="javascript:">1</a>
										</li>
										<li class="page-item"><a class="page-link" href="javascript:">2</a>
										</li>
										<li class="page-item"><a class="page-link" href="javascript:"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
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
	<script type="text/javascript" src="Script/QLPK.js"></script>
	<script type="text/javascript">
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
			$('#tenUpdate').val(pet.ten);
			$('#giaUpdate').val(pet.gia);
			$('#soLuongUpdate').val(pet.soLuong);
			$('#trangThaiUpdate').val(pet.stt);
			$('#hangUpdate').val(pet.hang);
			$('#moTaUpdate').val(pet.mota);
			$('#ngayUpdate').val(pet.date);
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
