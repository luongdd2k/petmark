<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin || Oder Manager</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jsGrid -->
<link rel="stylesheet" href="plugins/jsgrid/jsgrid.min.css">
<link rel="stylesheet" href="plugins/jsgrid/jsgrid-theme.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
<link rel="stylesheet" href="dist/css/custom.css">
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
							<h1>Đơn hàng</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Đơn hàng</li>
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
										<i class="fas fa-table"></i> Danh sách đơn hàng
									</h3>
								</div>
								<div class="form-group col-2">
													<label>Lọc</label> <select
														class="form-control" id="cbo_sort_Accessories2" style="">
														<option value="-2">Tất cả đơn đặt hàng</option>
														<option value="-1">Đơn đặt qua Web</option>
														<option value="0">Đơn đặt qua App</option>
														<option value="1">Đơn chưa xét duyệt</option>
														<option value="2">Đơn đang giao lần 1</option>
														<option value="3">Đơn đang giao lần 2</option>
														<option value="4">Đơn giao thành công</option>
														<option value="5" style="background: #ffe6e6">Đơn đã huỷ</option>
													</select> <span id="sortValue2" style="display: none;">${sortValue }</span>
												</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="table-responsive-xl main-table"
										style="max-width: 1000px;">
										<table class="table table-hover" style="margin-bottom: -1%;">
											<thead>
												<tr class="bg-info">
													<th scope="col" style="width: 125px">Mã đơn hàng</th>
													<th scope="col">Người mua</th>
													<th scope="col">Ngày đặt</th>
													<th scope="col">Trạng thái thanh toán</th>
													<th scope="col">Trạng thái giao hàng</th>
													<th scope="col">Tổng tiền</th>
													<th scope="col">Thiết bị</th>
												</tr>
											</thead>
											<c:forEach var="list" items="${list }">
											<tbody>
													<tr class="tr-js">
														<td>
															<a href="admin/orders/detail/${list.id}">${list.id }</a>
														</td>
														<td>${list.getAccount().getFullName() }</td>
														<td>${list.getDate() }</td>
														<td class="td-js">${list.getPaymentStatus() }</td>
														<td class="td_js">${list.getDeliveryStatus() }</td>
														<td style="color: #f44336;font-weight: 600;">${list.getDisplayTotalAmount() }</td>
														<td >Web</td>
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
											<div class="pagination-main" style="padding-left: 70px;">
												<nav aria-label="Page navigation example">
													<ul class="pagination">
														<li class="page-item"><a class="page-link" href="javascript:"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a></li>
														<li class="page-item"><a class="page-link" href="javascript:">1</a></li>
														<li class="page-item"><a class="page-link" href="javascript:">2</a></li>
														<li class="page-item"><a class="page-link" href="javascript:"
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
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart
			</a>.
			</strong> All rights reserved.
			<input type="hidden" id="active" value="Quản lý đơn hàng">
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
	<!-- jsGrid -->
	<script src="plugins/jsgrid/demos/db.js"></script>
	<script src="plugins/jsgrid/jsgrid.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/active.js"></script>
	<script type="text/javascript" src="Script/QLOrder.js"></script>
	<!-- page script -->
	<script>
		let tr = document.getElementsByClassName('tr-js');
		let td = document.getElementsByClassName('td-js');
		let td1 = document.getElementsByClassName('td_js');
		abc();
		function abc(){
			for (let i = 0; i< td.length; i++){
				if(td[i].innerHTML == 'Chưa thanh toán'){
					td[i].style.color="#ff6f00";
					td[i].style.fontWeight="600";
				}
				if(td[i].innerHTML == 'Đã thanh toán'){
					td[i].style.color="#64dd17";
					td[i].style.fontWeight="600";
				}
				if(td[i].innerHTML == 'Chờ thanh toán ATM'){
					td[i].style.color="#0288d1";
					td[i].style.fontWeight="600";
				}
				if(td[i].innerHTML == 'Đã hoàn tiền'){
					td[i].style.color="#c0ca33";
					td[i].style.fontWeight="600";
				}
				if(td[i].innerHTML == 'Đã hủy bỏ'){
					td[i].style.color="#b71c1c";
					td[i].style.fontWeight="600";
				}
				//Trạng thái giao hàng
				if(td1[i].innerHTML == 'Chưa xét duyệt'){
					td1[i].style.color="#ed9f66";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Chờ giao hàng'){
					td1[i].style.color="#f4ce74";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Chờ giao hàng lần 2'){
					td1[i].style.color="#fdd835";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Đang giao hàng'){
					td1[i].style.color="#81c784";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Đang giao hàng lần 2'){
					td1[i].style.color="#1b5e20";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Giao hàng thành công'){
					td1[i].style.color="#64dd17";
					td1[i].style.fontWeight="600";
				}
				if(td1[i].innerHTML == 'Đã hủy'){
					td1[i].style.color="#b71c1c";
					td1[i].style.fontWeight="600";
				}
			}
		}
	</script>
</body>

</html>