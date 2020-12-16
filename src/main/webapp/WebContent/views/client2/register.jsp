<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Petmart | Đăng ký tài khoản mới</title>
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
	max-width: 900px;
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
.hide{
	display: none;
	visibility: hidden;
}
</style>
</head>
<body>
	<div class="container">
		<form class="border border-light form-div" action="CheckSignup" name="myForm" method="post" onsubmit="return validateForm()">
			<div class="row form-content">
				<div class="col-12">
					<p class="h3 mb-4 text-center">TẠO TÀI KHOẢN</p>
				</div>
				<div class="form-group col-4">
					<label for="username">Tên đăng nhập</label>
					<input type="text" class="form-control" name="username" id="username" placeholder="Tên đăng nhập" value="">
					<p id="error1" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="pass">Mật khẩu</label>
					<input type="password" class="form-control" name="password" id="pass" placeholder="Mật khẩu">
					<p id="error2" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="passCon">Nhập lại mật khẩu</label>
					<input type="password" class="form-control" name="password_2" id="passCon" placeholder="Xác nhận mật khẩu">
					<p id="error3" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="full-name">Họ và tên</label>
					<input type="text" class="form-control" name="name" id="full-name" placeholder="Họ và tên">
					<p id="error4" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="mail">Email</label>
					<input type="text" class="form-control" name="email" id="mail" placeholder="Email">
					<p id="error5" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-3">
					<label for="gender">Giới tính</label>
					<br/>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="nam" value="male" checked>
						<label class="form-check-label" for="nam">Nam</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="nu" value="female">
						<label class="form-check-label" for="nu">Nữ</label>
					</div>
				</div>
				<div class="form-group col-4">
					<label for="city2">Tỉnh / Thành phố</label>
					<select class="form-control" aria-label="Default select example" id="city2" onchange="city(this)">
						<option value="none">Tỉnh / Thành phố</option>
						<c:forEach var="tp" items="${tp }">
							<option value="${tp.getMatp() }">${tp.getName() }</option>
						</c:forEach>
					</select>
					<p id="error6" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="district2">Quận / Huyện    </label>
					<select class="form-control" aria-label="Default select example" id="district2" onchange="district(this)">
						<option value="none">Quận / Huyện</option>
						<option value="${list.getMatp() }">${list.getName() }</option>
					</select>
					<p id="error7" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="village2">Xã / Phường / Thị trấn</label>
					<select class="form-control" aria-label="Default select example" id="village2" onchange="village(this)">
						<option value="none">Xã / Phường / Thị trấn</option>
						<option value="${list.getMatp() }">${list.getName() }</option>
					</select>
					<p id="error8" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-4">
					<label for="phone">Số điện thoại</label>
					<input type="tel" class="form-control" name="phone" id="phone" placeholder="123-456-789">
					<p id="error9" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-8">
					<label for="address">Địa chỉ</label>
					<input type="text" class="form-control" name="address" id="address" placeholder="Nhập số nhà, thôn/xóm">
					<p id="error10" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
				</div>
				<div class="form-group col-12">
					<button class="btn btn-info btn-block" type="submit">Đăng ký</button>
				</div>
				<div class="form-group col-6">
					<p>
						Đã có tài khoản! <a href="">Đăng nhập</a>
					</p>
				</div>
			</div>
		</form>
	</div>
</body>
<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
<script src="js/city.js"></script>
<script src="js/register-validate.js"></script>
</html>
