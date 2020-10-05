<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<title>PetMart - Order Result</title>
	<meta charset="utf-8">
	<meta name="keywords" content="PetMart">
	<meta name="description" content="PetMart - 404">
	<meta name="author" content="wokiee">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/theme.css">
	<link rel="stylesheet" href="css/custom.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/toastr.min.css">
</head>
<body>

<!-- header -->
<header th:replace="shopper/fragments/header"></header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang chủ</a></li>
			<li>Kết quả thanh toán</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="tt-offset-0 container-indent">
		<div class="tt-page404">
			<h1 class="tt-title" th:text="${result}"></h1>
			<p>
				<span th:text="${note}"></span>
				<th:block th:if="${isSuccess}">
					, mã đơn hàng của bạn: <span class="order_id" th:text="${'#' + orderWeb.getFormatId()}"></span>
				</th:block>
			</p>

			<a th:href="${'/my-account/order/' + orderWeb.id}" class="btn btn-show-detail">Xem đơn hàng của tôi</a>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
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