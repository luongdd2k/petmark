<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Admin || Quản lý Blog</title>
<base href="${pageContext.servletContext.contextPath}/">
	<!-- Tell the browser to be responsive to screen width -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css">
	<!-- Ionicons -->
	<link rel="stylesheet" type="text/css"    href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- overlayScrollbars -->
	<link rel="stylesheet" type="text/css"    href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">

	<link rel="stylesheet" type="text/css"     href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<link rel="stylesheet" type="text/css"    href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
	<!-- Theme style -->
	<link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css" />
	<link rel="stylesheet" type="text/css"    href="plugins/Semantic-UI-CSS-master/semantic.min.css" />
	<!-- Google Font: Source Sans Pro -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />
	<link rel="stylesheet" type="text/css"    href="dist/css/custom.css" />
	<link rel="stylesheet" type="text/css"    href="css/employee.css">
	<link rel="stylesheet" type="text/css"    href="css/blog-admin.css"/>
	<style>

	</style>
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
							<h1>BLOG</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="index.html">Trang
										chủ</a></li>
								<li class="breadcrumb-item active">Danh sách Blog</li>
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
										<i class="fab fa-blogger-b"></i> Danh sách Blog
									</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="row">
										<c:forEach var="blog" items="${blog }">
											<div class="col-lg-3 col-md-6 col-sm-12 card" style="position: relative;">
												<div name="image" id="image" style="    text-align: center;">
													<img class="img-fluid img-thumbnail" alt="" src="${blog.getImg() }" />
												</div>
												<div id="ha" style="margin : 10px 0px 50px 5px;">
													<h3>${blog.getContent() }</h3>
													<p> Trạng thái: <strong class="blog-status">${blog.displayStt() }</strong></p>
												</div>

												<div class="button-card" style="display: flex;position: absolute;bottom: 8px;right: 12px;">
													<form action="admin/blog/confirm/${blog.getId()}">
														<button class="ui green basic button" type="submit" style="margin-right: 10px;">Duyệt bài</button>
													</form>
														<button class="ui yellow basic button" data-toggle="modal" data-target="#reasonBlock" onclick="abc(${blog.getId()})">Hủy bài</button>
												</div>
											</div>
										</c:forEach>
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
			<input type="hidden" id="active" value="Danh sách Blog">
		</footer>

		<!-- Modal -->
		<div class="modal fade" id="reasonBlock" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
			<form action="admin/blog/cancel">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Lý do hủy bài</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<input type="hidden" id="id_card_model" value="" name="blog-id">
					<div class="modal-body">
						<div class="form-check">
							<input class="form-check-input" name="liDo" type="checkbox" value="Spam nội dung"  id="defaultCheck4">
							<label class="form-check-label" for="defaultCheck4"> Spam nội dung </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" name="liDo" type="checkbox" value="Nội dung chứa ngôn từ không phù hợp với thuần phong mỹ tục Việt Nam" id="defaultCheck1">
							<label class="form-check-label" for="defaultCheck1"> Nội dung chứa ngôn từ không phù hợp với thuần phong mỹ tục Việt Nam </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" name="liDo" type="checkbox" value="Nội dung mang tính chất phản động" id="defaultCheck2">
							<label class="form-check-label" for="defaultCheck2"> Nội dung mang tính chất phản động </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" name="liDo" type="checkbox" value="Nội dung, hình ảnh mang tính bạo lực, ngược đãi động vật"  id="defaultCheck5">
							<label class="form-check-label" for="defaultCheck5"> Nội dung, hình ảnh mang tính bạo lực, ngược đãi động vật </label>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Đóng</button>
						<button type="submit" class="btn btn-primary">Gửi</button>
					</div>
				</div>
				</form>
			</div>
		</div>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="plugins/jquery/jquery.min.js"></script>
	<script src="plugins/Semantic-UI-CSS-master/semantic.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	<!-- jsGrid -->
<%--	<script src="plugins/jsgrid/demos/db.js"></script>--%>
	<script src="plugins/jsgrid/jsgrid.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="js/active.js"></script>
	<!-- page script -->
	<script>
		a();
		function a(){
			let stt = document.getElementsByClassName("blog-status");
			let btn = document.getElementsByClassName("button-card");
			console.log(stt);
			console.log(btn);
			for (let i=0; i<stt.length; i++){
				if(stt[i].innerHTML=="Chưa xét duyệt"){
					stt[i].style.color = '#fdb827';
					btn[i].classList.remove ="hide";
				}
				if(stt[i].innerHTML=="Đã duyệt"){
					stt[i].style.color = '#54e346';
					btn[i].classList.add("hide");
				}
				if(stt[i].innerHTML=="Đã huỷ"){
					stt[i].style.color = '#ec524b';
					btn[i].classList.add("hide");
				}
			}
		}
		function abc(id){
			let i = document.getElementById("id_card_model");
			i.value = id;
		}
	</script>
</body>
</html>
