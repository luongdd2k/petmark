<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Sign In | PetMart</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content="PetMart - Login">
	<meta name="author" content="PetMart">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/theme.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang Chủ</a></li>
			<li>ĐĂNG NHẬP</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<h1 class="tt-title-subpages noborder">ĐĂNG NHẬP ?</h1>
			<div class="tt-login-form">
				<div class="row">

							<h2 class="tt-title"></h2>
							<p>
								
							</p>
							<div class="form-group">
								<a href="/signup" class="btn btn-top btn-border .btn-danger">TẠO TÀI KHOẢN</a>
							</div>
	
					<div class="col-xs-12 col-md-6">
						<div class="tt-item">
							<h2 class="tt-title">ĐĂNG NHẬP</h2>
							<div class="form-default form-top">
								<form id="customer_login" method="POST" action="/customer/checkLogin">
									<div class="form-group">
										<label for="loginInputName">E-MAIL *</label>
										<div class="tt-required">* bắt buộc</div>
										<input type="email" name="email" class="form-control" id="email" placeholder="Nhập e-mail" required>
									</div>
									<div class="form-group">
										<label for="loginInputEmail">MẬT KHẨU *</label>
										<input type="password" name="password" class="form-control" id="password" placeholder="Nhập mật khẩu" required>
									</div>
									<div class="row">
										<div class="col-auto mr-auto">
											<div class="form-group">
												<button class="btn btn-border" type="submit">ĐĂNG NHẬP</button>
											</div>
										</div>
										<div class="col-auto align-self-end">
											<div class="form-group">
												<ul class="additional-links">
													<li><a href="#">Quên mật khẩu?</a></li>
												</ul>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<button id="test" style="display: none;">TEST</button>
<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="external/jquery/jquery.min.js"></script>
<script src="external/bootstrap/js/bootstrap.min.js"></script>
<script src="external/panelmenu/panelmenu.js"></script>
<script src="external/slick/slick.min.js"></script>
<script src="external/lazyLoad/lazyload.min.js"></script>
<script src="js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="external/form/jquery.form.js"></script>
<script src="external/form/jquery.validate.min.js"></script>
<script src="external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="js/toastr.min.js" type="text/javascript"></script>
<script src="js/header.js" type="text/javascript"></script>

<script>
	$('#test').click(function (e) { 
		e.preventDefault();
		console.log('begin test');

		$.ajax({
			url: '/test',
			type: 'POST',
			dataType: 'html',
			data: [
				{abc: 'abc'}
			],
		})
		.done(function() {
			console.log("success");
		})
		.fail(function() {
			console.log("error");
		})
		.always(function(res) {
			console.log("complete");
			console.log(res);
		});
	});
</script>
</body>
</html>