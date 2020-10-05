<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Chúng tôi</title>
	<meta name="keywords" content="About">
	<meta name="description" content="About - PetMart">
	<meta name="author" content="TopShoe">
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
			<li>CỬA HÀNG</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-fluid">
		<div class="tt-slick-slider arrow-slick-main">
			<div class="tt-slick-main-item">
				<img src="images/banners/banner_1.jpg" alt="">
				<div class="tt-description tt-point-h-r">
					<div class="tt-description-wrapper">
						<div class="tt-title-small"><span class="tt-base-color">Ready To</span></div>
						<div class="tt-title-large"><span class="tt-white-color">PetMart<br></span></div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			
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