<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Contact</title>
	<meta name="keywords" content="PetMart">
	<meta name="description" content="Contact - PetMart">
	<meta name="author" content="wokiee">
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
			<li>LIÊN HỆ</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<div class="tt-contact02-col-list">
				<div class="row">
					<div class="col-sm-12 col-md-4 ml-sm-auto mr-sm-auto">
						<div class="tt-contact-info">
							<i class="tt-icon icon-f-93"></i>
							<h6 class="tt-title">HOTLINE!</h6>
							<address>
								+964856293:<br>
								+964856999
							</address>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="tt-contact-info">
							<i class="tt-icon icon-f-24"></i>
							<h6 class="tt-title">ĐỊA CHỈ</h6>
							<address>
								77 Xuân La, Tây Hồ, Hà nội
							</address>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="tt-contact-info">
							<i class="tt-icon icon-f-92"></i>
							<h6 class="tt-title">THỜI GIAN LÀM VIỆC</h6>
							<address>
								7 Ngày trong tuần<br>
								từ 8h - 20h Hàng ngày
							</address>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<form id="contactform" class="contact-form form-default" method="post" novalidate="novalidate" action="#">
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="inputName" placeholder="Nhập tên của bạn ">
						</div>
						<div class="form-group">
							<input type="text" name="email" class="form-control" id="inputEmail" placeholder="Nhập e-mail ">
						</div>
						<div class="form-group">
							<input type="text" name="subject" class="form-control" id="inputSubject" placeholder="Tiêu Đề">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<textarea  name="message" class="form-control" rows="7" placeholder="Nội Dung"  id="textareaMessage"></textarea>
						</div>
					</div>
				</div>
				<div class="text-center">
					<button type="submit" class="btn">GỬI</button>
				</div>
			</form>
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
<script src="js/header.js" type="text/javascript"></script>
</body>
</html>