<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pet Mart | Đăng nhập</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
	<style>
		body{
			background-image: url(https://wallpaperaccess.com/full/1567666.png);
		}
		.container{
			max-width: 600px;
			display: flex;
			align-items: center;
			height: 100vh;
		}
		.form-content{
			padding: 30px 50px 0px 50px;
		}
		.form-div{
			background-color: white;
		}
	</style>
</head>
<body>
<div class="container">
	<form class="border border-light form-div" action="CheckLogin" id="sl_form_login" method="post">
		<div class="row form-content">
			<div class="col-12">
				<p class="h3 mb-4 text-center">XIN CHÀO</p>
			</div>
			<div class="form-group col-12">
				<label for="username">Tên đăng nhập</label>
				<input type="text" name="sl_login_username" class="form-control" id="username" placeholder="Tên đăng nhập" required="required">
			</div>
			<div class="form-group col-12">
				<label for="pass">Mật khẩu</label>
				<input type="password" name="sl_login_password" class="form-control" id="pass" placeholder="Mật khẩu" required="required">
			</div>
			<p>${thongBao }</p>
			<input type="hidden" name="cart_hidden_id" id="cart_hidden_id" value="${id}">
			<input type="hidden" name="urlPage" id="urlPage" value="">
			<div class="form-check col-6">
				<input class="form-group-input" type="checkbox" value="" id="defaultCheck1">
				<label class="form-group-label" for="defaultCheck1">
					Nhớ mật khẩu
				</label>
			</div>
			<div class="form-check col-6" style="text-align: right;">
				<a href="showforgotpw">Quên mật khẩu</a>
			</div>
			<div class="form-group col-12">
				<button class="btn btn-info btn-block" type="submit">Đăng nhập</button>
			</div>
			<div class="form-group col-8">
				<p>
					Bạn chưa có tài khoản? <a href="showregister">Đăng ký</a>
				</p>
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
