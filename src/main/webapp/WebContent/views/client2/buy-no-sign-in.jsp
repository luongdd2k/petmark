<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />

<!-- Carousel -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
<!-- Animate On Scroll -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<link href="https://pay.vnpay.vn/lib/vnpay/vnpay.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Custom StyleSheet -->


<title>Pet Mart | Thanh toán</title>
<base href="${pageContext.servletContext.contextPath}/">

<link rel="stylesheet" href="css/check-out.css">
<link rel="stylesheet" href="css/styles.css" />
</head>

<body>
	<%@ include file="/WebContent/views/header_nav.jsp" %>
	<div class="page__title-area">
			<div class="container">
				<div class="page__title-container">
					<ul class="page__titles">
						<li><a href="/"> <svg>
                  <use xlink:href="images/sprite.svg#icon-home"></use>
                </svg>
						</a></li>
						<li class="page__title">Thanh toán</li>
					</ul>
				</div>
			</div>
		</div>

	<main id="main">
		<div class="container">
			<div class="ps-checkout pt-20 pb-20">
				<form action="buy-no-signin" method="post">
					<div class="row">
						<div class="ps-container page-checkout col-12">
							<div class="checkout-adress">
								<div class="border-delivery"></div>
								<div id="checkout-adress" class="checkout-adress__container">
									<div class="checkout-adress__section-header">
										<div class="checkout-adress__section-header-text">
											<svg height="16" viewBox="0 0 12 16" width="12" class="shopee-svg-icon icon-location-marker">
                        						<path d="M6 3.2c1.506 0 2.727 1.195 2.727 2.667 0 1.473-1.22 2.666-2.727 2.666S3.273 7.34 3.273 5.867C3.273 4.395 4.493 3.2 6 3.2zM0 6c0-3.315 2.686-6 6-6s6 2.685 6 6c0 2.498-1.964 5.742-6 9.933C1.613 11.743 0 8.498 0 6z" fill-rule="evenodd"></path>
                      						</svg>
											Địa chỉ nhận hàng
										</div>
									</div>
									<div class="checkout-adress__select-adress-summary">
										<div class="checkout-adress-row">
											<div class="checkout-adress-row__user-detail">
												<span>${name } </span> &nbsp;
												<span>  ${phone } </span>
											</div>
											<div class="checkout-address-row__address-summary"> ${adress }</div>
											<div id="adress-edit" class="checkout-address-row__address-summary checkout-address-row__address-summary--edit">
												<p onclick="doiDiaChi()" style="color: blue;">Thay đổi</p>
											</div>
										</div>
									</div>
								</div>
								<div id="edit-checkout-adress" class="edit-adress pt-20 pb-20 hide">
									<!--                     <form> -->
									<div class="row">
										<div class="col-6">
											<div class="form-group">
												<label for="nameRecive">Tên người nhận</label>
												<input type="text" class="form-control" id="nameRecive" name="name" value="${name }">
											</div>
											<div class="form-group">
												<label for="phoneRecive">Số điện thoại</label>
												<input type="text" class="form-control" id="phoneRecive" name="phone" value="${phone }">
											</div>
										</div>
										<div class="col-6">
											<div class="form-group">
												<label for="adressRecive">Địa chỉ nhận hàng</label>
												<textarea class="form-control" id="adressRecive" name="address" rows="3">${address }</textarea>
											</div>
										</div>
									</div>
									<div class="col-12" style="text-align: center;">
										<button onclick="anDoiDiaChi()" type="button"
											class="btn btn-outline-primary"
											style="font-size: 15px; width: 80px;">Lưu</button>
									</div>
									<!--                       </form> -->

								</div>
							</div>
							<div class="checkout-producrt-order-list">
								<div class="checkout-product-order-list__header-block">
									<div class="checkout-product-order-list__headers">
										<div
											class="checkout-product-ordered-list__header checkout-product-ordered-list__header--product">
											<div class="checkout-product-ordered-list__title">Sản
												phẩm</div>
										</div>
										<div
											class="checkout-product-ordered-list__header checkout-product-ordered-list__header--variation"></div>
										<div
											class="checkout-product-ordered-list__header checkout-product-ordered-list__header--price">Đơn
											giá</div>
										<div
											class="checkout-product-ordered-list__header checkout-product-ordered-list__header--amount">Số
											lượng</div>
										<div
											class="checkout-product-ordered-list__header checkout-product-ordered-list__header--subtotal">Thành
											tiền</div>
									</div>
								</div>


								<div class="checkout-product-order-list__content">
									<div class="checkout-order-group">
										<div class="chockout-order-group__orders">
											<div class="checkout-product-ordered-list-item">
												<div class="checkout-product-ordered0list-item__items">
													<div
														class="checkout-product-ordered-list-item__item checkout-product-ordered-list-item__item--non-add-on">
														<div
															class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--product">
															<img
																class="checkout-product-ordered-list-item__product-image img-fluid"
																src="${acc.getImgs().get(0).getImgAvartar() }"
																width="90" height="90"> <span
																class="checkout-product-ordered-list-item__product-info">
																<span
																class="checkout-product-ordered-list-item__product-name">${acc.getName() }</span>
																<div></div>
															</span>
														</div>
														<div
															class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--variation">
															<span
																class="checkout-product-ordered-list-item__variation">Loại:
																${acc.getCategory().getName() }</span>
														</div>
														<div
															class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--price price-js">${acc.getDisplayPrice(1) }
															đ</div>
														<div
															class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--amount amount-js">${amount}</div>
														<div
															class="checkout-product-ordered-list-item__header checkout-product-ordered-list-item__header--subtotal tong-js">${thanhTien}
															đ</div>
													</div>
												</div>
											</div>
										</div>
										<div class="_2iOh5B">
											<div class="_2hlLyg">Tổng số tiền ( <span id="tong-san-pham"></span> sản phẩm ) :</div>
											<div class="_7IQQY9"  id="tong-tien"></div>
										</div>
									</div>
								</div>


							</div>
							<div class="page-checkout__payment-order-wrapper">
								<div class="checkout-payment-method-view">
									<div
										class="checkout-payment-method-view__current checkout-payment-setting">
										<div
											class="checkout-payment-method-view__current-title checkout-payment-method-view__current-title--wide-block">Phương
											thức thanh toán</div>
									</div>
									<div class="styles__StyledPaymentMethods">
										<ul class="list">
											<li class="fTvtIP"><label
												class="RadioCheckout__StyledRadio-bkaeis-0 bqACGT">
													<input type="radio" name="payment-methods" value="COD"
													checked> <span class="radio-fake"
													onclick="amVNPay()"></span> <img
													src="https://png.pngtree.com/png-clipart/20200224/original/pngtree-pack-cash-icon-cartoon-style-png-image_5208194.jpg"
													alt="money" class="card-img" width="44"> <span
													class="label">Thanh toán tiền mặt khi nhận hàng</span>
											</label></li>
											<li class="fTvtIP"><label
												class="RadioCheckout__StyledRadio-bkaeis-0 bqACGT">
													<input type="radio" name="payment-methods" value="ATM">
													<span class="radio-fake" onclick="showVNPay()"></span> <img
													src="https://vnpayment.vnpay.vn/Resources/website/images/vnpayqr.png"
													alt="vnpay" class="card-img" width="44"> <span
													class="label">Thanh toán bằng VN Pay</span>
											</label></li>
										</ul>
									</div>
									<div class="checkout-payment-setting__payment-method-options">
										<div class="bank-transfer-category hide" id="form-vnpay">
											<div class="bank-transfer-category__body">
												<div class="form-flexs">
													<div class="form-group">
														<label for="ordertype">Loại dịch vụ </label> <select
															name="ordertype" id="ordertype"
															class="form-control form-vnpay">
															<option value="billpayment">Thanh toán hóa đơn</option>
															<option value="topup">Nạp tiền điện thoại</option>
															<option value="fashion">Thời trang</option>
														</select>
													</div>
													<div class="form-group">
														<label for="amount">Số tiền</label> <input
															class="form-control form-vnpay" data-val="true"
															data-val-number="The field Amount must be a number."
															data-val-required="The Amount field is required."
															id="amount" max="100000000" min="1" name="amount"
															type="number" value="${thanhTien}" />
													</div>
												</div>
												<div class="form-flexs">
													<div class="form-group">
														<label for="bankcode">Ngân hàng</label> <select
															name="bankcode" id="bankcode"
															class="form-control  form-vnpay">
															<option value="">Không chọn</option>
															<option value="NCB">Ngân hàng NCB</option>
															<option value="SACOMBANK">Ngân hàng SacomBank</option>
															<option value="EXIMBANK">Ngân hàng EximBank</option>
															<option value="MSBANK">Ngân hàng MSBANK</option>
															<option value="NAMABANK">Ngân hàng NamABank</option>
															<option value="VISA">Thanh toán qua VISA/MASTER</option>
															<option value="VNMART">Ví điện tử VnMart</option>
															<option value="VIETINBANK">Ngân hàng Vietinbank
															</option>
															<option value="VIETCOMBANK">Ngân hàng VCB</option>
															<option value="HDBANK">Ngân hàng HDBank</option>
															<option value="DONGABANK">Ngân hàng Dong A</option>
															<option value="TPBANK">Ngân hàng TPBank</option>
															<option value="OJB">Ngân hàng OceanBank</option>
															<option value="BIDV">Ngân hàng BIDV</option>
															<option value="TECHCOMBANK">Ngân hàng
																Techcombank</option>
															<option value="VPBANK">Ngân hàng VPBank</option>
															<option value="AGRIBANK">Ngân hàng Agribank</option>
															<option value="MBBANK">Ngân hàng MBBank</option>
															<option value="ACB">Ngân hàng ACB</option>
															<option value="OCB">Ngân hàng OCB</option>
														</select>
													</div>
													<div class="form-group">
														<label for="vnp_OrderInfo">Nội dung thanh toán</label>
														<textarea class="form-control form-vnpay" cols="20"
															id="vnp_OrderInfo" name="vnp_OrderInfo" rows="2">Thanh toán sản phẩm</textarea>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
									<input type="hidden" id="colors" name="colors" value="${color}" />
									<input type="hidden" id="size" name="size" value="${size }" />
									<input type="hidden" id="idacc" name="idacc" value="${acc.getId() }" />
								<div class="OR36Xx">
									<input type="hidden" id="soLuong" name="soLuong" value="${amount }" />
								<div class="OR36Xx">
									<div class="_38DBn- _1ylw6p _2ZumAb">Tổng tiền hàng:</div>
									<div class="_38DBn- _2wZvga _2ZumAb _2ghey"><span id="tong-tien-hang"> </span></div>
									<div class="_38DBn- _1ylw6p sfPrg9">Tổng thanh toán:</div>
									<div class="_38DBn- _34fUBg _2wZvga sfPrg9"><span id="tong-thanh-toan"> </span></div>

									<div class="_3S63c5 _1WpGLP" id="btn-dat-tien">
										<button type="submit"
											class="stardust-button stardust-button--primary stardust-button--large _22Ktrb">
											<span>Đặt hàng</span>
										</button>
									</div>
									<div class="_3S63c5 _1WpGLP hide" id="btn-dat-vnpay">
										<button type="submit" onclick="linkVNPay"
											class="stardust-button stardust-button--primary stardust-button--large _22Ktrb">
											<span>Đặt hàng</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						</div>
					</div>
				</form>
				<!--End row-->
			</div>
		</div>
		<!-- Facility Section -->
		<%@ include file="/WebContent/views/section-facility.jsp" %>
	</main>

	<!-- Footer -->
	<%@ include file="/WebContent/views/footer_client.jsp" %>
	<!-- End Footer -->

	<!-- Go To -->

	<a href="#header" class="goto-top scroll-link"> <svg>
      <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
    </svg>
	</a>

	<!-- Glide Carousel Script -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>


	<!-- Animate On Scroll -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>

	<!-- Custom JavaScript -->
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/check-out.js"></script>
	<script src="js/sweat-alert.js"></script>
	<script src="https://pay.vnpay.vn/lib/vnpay/vnpay.min.js"></script>
	<script type="text/javascript">
		$("#frmCreateOrder").submit(function() {
			var postData = $("#frmCreateOrder").serialize();
			var submitUrl = $("#frmCreateOrder").attr("action");
			$.ajax({
				type : "POST",
				url : submitUrl,
				data : postData,
				dataType : 'JSON',
				success : function(x) {
					if (x.code === '00') {
						if (window.vnpay) {
							vnpay.open({
								width : 768,
								height : 600,
								url : x.data
							});
						} else {
							location.href = x.data;
						}
						return false;
					} else {
						alert(x.Message);
					}
				}
			});
			return false;
		});

		tinhTong();
		function tinhTong(){
			let tien = document.getElementsByClassName("price-js");
			let amount = document.getElementsByClassName("amount-js");
			let tong =  document.getElementsByClassName("tong-js");

			for (let i = 0 ; i<tien.length; i++){
				let tong1 = parseInt(tien[i].innerHTML) * parseInt(amount[i].innerHTML);
				tong[i].innerHTML = tong1 +" đ";
			}
		}
		tongSP();
		function tongSP(){
			let amount = document.getElementsByClassName("amount-js");
			let tongSP = document.getElementById("tong-san-pham");
			let tong =  document.getElementsByClassName("tong-js");
			let tongTien = document.getElementById("tong-tien");
			let tongTienHang = document.getElementById("tong-tien-hang");
			let tongThanhToan = document.getElementById("tong-thanh-toan");
			let amount1 = 0;
			let tongTien1 = 0;
			for (let i=0; i<amount.length;i++){
				amount1 = parseInt(amount1) + parseInt(amount[i].innerHTML);
				tongSP.innerHTML = amount1;
				tongTien1 = parseInt(tongTien1) + parseInt(tong[i].innerHTML);
				tongTien.innerHTML = tongTien1 +" đ";

				tongTienHang.innerHTML =tongTien1 +" đ";
				tongThanhToan.innerHTML =tongTien1 +" đ";
			}
		}

		formartN();
		function formartN(){
			let tien = document.getElementsByClassName("price-js");
			let tong =  document.getElementsByClassName("tong-js");
			let tongTien = document.getElementById("tong-tien");
			let tongTienHang = document.getElementById("tong-tien-hang");
			let tongThanhToan = document.getElementById("tong-thanh-toan");
			for (let i=0; i<tien.length; i++){
				let tien1 = tien[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				tien[i].innerHTML = tien1;
				let tong1 = tong[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				tong[i].innerHTML = tong1;
				let tam1 = tongTien.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				tongTien.innerHTML = tam1;
				let thanh1 = tongTienHang.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				tongTienHang.innerHTML = thanh1;
				let thanhToan = tongThanhToan.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
				tongThanhToan.innerHTML = thanhToan;
			}
		}
	</script>
</body>

</html>