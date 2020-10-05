<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Sửa thông tin</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content="PetMart - Edit Info">
	<meta name="author" content="PetMart">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/theme.css">
	<link rel="stylesheet" href="css/toastr.min.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang Chủ</a></li>
			<li>Cập nhật tài khoản</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<h1 class="tt-title-subpages noborder">Cập nhật thông tin tài khoản</h1>
			<div class="tt-shopping-layout">
				<h2 class="tt-title d-none">YOUR ADDRESS</h2>
				<div class="tt-wrapper">
					<a href="#" class="btn d-none">ADD A NEW ADDRESS</a><br>
					<a href="/my-account" class="tt-link-back">
						<i class="icon-h-46"></i> Quay lại Tài khoản của tôi
					</a>
				</div>
				<div class="tt-wrapper">
					<h6 class="tt-title">Thông tin của tôi</h6>
					<div class="form-default">
						<form method="post" action="/my-account/edit">
							<div class="form-group">
								<label for="fullname" class="control-label">Họ tên *</label>
								<input type="text" class="form-control" th:value="${user.name}" name="fullname" id="fullname">
							</div>
							<div class="form-group">
								<input type="radio" id="male" name="gender" value="1" th:checked="${user.gender}">
								<label for="male" class="control-label">Nam</label>
								&nbsp;&nbsp;
								<input type="radio" id="female" name="gender" value="0" th:checked="${!user.gender}">
								<label for="female" class="control-label">Nữ</label>
							</div>
							<div class="form-group">
								<label for="dateOfBirth" class="control-label">Ngày sinh</label>
								<input type="date" class="form-control" th:value="${user.dateOfBirth}" name="dateOfBirth" id="dateOfBirth">
							</div>
							<div class="form-group">
								<label for="phone" class="control-label">Số điện thoại</label>
								<input type="text" class="form-control" th:value="${user.phone}" name="phone" id="phone">
							</div>
							<div class="form-group">
								<label for="phone" class="control-label">Địa chỉ</label>
								<input type="text" class="form-control" th:value="${user.address}" name="address" id="address">
							</div>
<!-- 							<div class="checkbox-group"> -->
<!-- 								<input type="checkbox" id="checkBox11" name="checkbox"> -->
<!-- 								<label for="checkBox11"> -->
<!-- 									<span class="check"></span> -->
<!-- 									<span class="box"></span> -->
<!-- 									Set as deafult address? -->
<!-- 								</label> -->
<!-- 							</div> -->
							<div class="row tt-offset-21">
								<div class="col-auto">
									<button type="submit" class="btn">Cập nhật</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: addToCart"></div>
<div th:replace="shopper/fragments/modal :: quickView"></div>
<div th:replace="shopper/fragments/modal :: videoProduct"></div>
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="external/jquery/jquery.min.js"></script>
<script src="external/bootstrap/js/bootstrap.min.js"></script>
<script src="external/slick/slick.min.js"></script>
<script src="external/panelmenu/panelmenu.js"></script>
<script src="external/lazyLoad/lazyload.min.js"></script>
<script src="js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="external/form/jquery.form.js"></script>
<script src="external/form/jquery.validate.min.js"></script>
<script src="external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="js/toastr.min.js" type="text/javascript"></script>
<script src="js/header.js" type="text/javascript"></script>
</body>
</html>