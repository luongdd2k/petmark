<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Quên mật khẩu</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	<style>
		body {
			background-image: url(https://wallpaperaccess.com/full/1567666.png);
		}

		.container {
			max-width: 600px;
			display: flex;
			align-items: center;
			height: 100vh;
		}

		.form-content {
			padding: 30px 50px 0px 50px;
		}

		.form-div {
			background-color: white;
		}
	</style>
</head>
<body>
<div class="container">
	<form class="border border-light form-div" action="forgot-pass" method="post">
		<div class="row form-content">
			<div class="col-12">
				<p class="h3 text-center">QUÊN MẬT KHẨU</p>
				<p class="text-center">Vui lòng cung cấp Email để lấy lại mật khẩu</p>
			</div>
			<div class="form-group col-12">
				<label for="username">Tên đăng nhập</label>
				<input type="text" name="username" class="form-control" id="username" placeholder="Tên đăng nhập" required="required">
			</div>
			<div class="form-group col-12">
				<label for="email">Email</label>
				<input type="email" name="email" class="form-control" id="email" placeholder="Nhập Email bạn đã đăng ký để lấy lại mật khẩu" required="required">
			</div>
			<div class="col-12" style="margin-bottom: 5px;">
				<button class="btn btn-info btn-block" type="submit">Gửi</button>
			</div>
			<div class="form-group col-8">
				<a href="showLogin">Trở lại đăng nhập</a>
			</div>
		</div>
	</form>
</div>
</body>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</html>
