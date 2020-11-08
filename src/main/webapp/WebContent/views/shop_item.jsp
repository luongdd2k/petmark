<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<TITLE>Thông tin sản phẩm</TITLE>
		<base href="${pageContext.servletContext.contextPath}/">
		<link rel="stylesheet" type="text/css" href="CSS/header.css">
		<link rel="stylesheet" type="text/css" href="CSS/nnav.css">
		<link rel="stylesheet" type="text/css" href="CSS/shop_item.css">
		<link rel="stylesheet" type="text/css" href="CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="CSS/home.css">
		<link rel="stylesheet" type="text/css" href="CSS/favor.css">
		<link rel="stylesheet" type="text/css" href="CSS/jquery-comments.css">
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<script type="text/javascript" src="Script/shop.js"></script>
		<script type="text/javascript" src="data/comments-data.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.textcomplete/1.8.0/jquery.textcomplete.js"></script>
		<script type="text/javascript" src="Script/jquery-comments.js"></script>
		<script type="text/javascript" src="Script/index.js"></script>
		<script type="text/javascript" src="Script/house.js"></script>
		<script type="text/javascript" src="Script/shop_item.js"></script>
	</HEAD>
	
	<BODY>
		<%@ include file="header_nav.jsp" %>
		<div id="bgf4"><div id="bgbg"><div id="all" style="min-height: 1000px;">
			<div id="product">
				<div id="product_image">
					<img src="${product.getImagePath()}">
				</div>

				<div id="product_share">
					<button type="button" class="inlineBlock _2tga" title="Like Hoangnq Shop">
				        <span class="_3jn- inlineBlock">
				        	<span class="_3jn_"></span><span class="_49vg">
				        		<svg viewBox="0 0 16 16" class="_1pbq" color="#ffffff">
				        			<path fill="#ffffff" fill-rule="evenodd" 
				        				d="M4.55,7 C4.7984,7 5,7.23403636 5,7.52247273 L5,13.4775273C5,13.7659636 4.7984,14 4.55,14 L2.45,14 C2.2016,14 2,13.7659636 2,13.4775273 L2,7.52247273 C2,7.23403636 2.2016,7 2.45,7 L4.55,7 ZM6.54470232,13.2 C6.24016877,13.1641086 6.01734614,12.8982791 6,12.5737979 C6.01734614,12.5737979 6.01344187,9.66805666 6,8.14398693 C6.01344187,7.61903931 6.10849456,6.68623352 6.39801308,6.27384278 C7.10556287,5.26600749 7.60281698,4.6079584 7.89206808,4.22570082 C8.18126341,3.8435016 8.52813047,3.4708734 8.53777961,3.18572676 C8.55077527,2.80206854 8.53655255,2.79471518 8.53777961,2.35555666 C8.53900667,1.91639814 8.74565444,1.5 9.27139313,1.5 C9.52544997,1.5 9.7301456,1.55690094 9.91922413,1.80084547 C10.2223633,2.15596568 10.4343097,2.71884727 10.4343097,3.60971169 C10.4343097,4.50057612 9.50989975,6.1729303 9.50815961,6.18 C9.50815961,6.18 13.5457098,6.17908951 13.5464084,6.18 C14.1635544,6.17587601 14.5,6.72543196 14.5,7.29718426 C14.5,7.83263667 14.1341135,8.27897346 13.6539433,8.3540827 C13.9452023,8.49286263 14.1544715,8.82364675 14.1544715,9.20555417 C14.1544715,9.68159617 13.8293011,10.0782687 13.3983805,10.1458495 C13.6304619,10.2907572 13.7736931,10.5516845 13.7736931,10.847511 C13.7736931,11.2459343 13.5138356,11.5808619 13.1594388,11.6612236 C13.3701582,11.7991865 13.5063617,12.0543945 13.5063617,12.3429843 C13.5063617,12.7952155 13.1715421,13.1656844 12.7434661,13.2 L6.54470232,13.2 Z">
				          			</path>
				          		</svg>
				          	</span><span class="_5n2y">
				          		<svg viewBox="0 0 16 16" class="_1pbq" color="#ffffff">
				          			<path fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" d="M2.808 8.354l3.135 3.195 7.383-7.2"></path>
				          		</svg>
				        	</span>
				        </span><span class="_49vh">Thích</span><span class="_5n6h">${countProductLike }</span><span id="isLiked">${isLiked }</span>
				    </button>
					<span>${test_cart}Chia sẻ:</span>
					<img src="Image/other/z64_mess.png" title="Chia sẻ Messenger">
					<img src="Image/other/z64_you.png" title="Xem kênh YouTube">
					<img src="Image/other/z64_we.png" title="Chia sẻ WeChat">
					<img src="Image/other/z64_snap.png" title="Chia sẻ Snapchat">
					<img src="Image/other/z64_ins.png" title="Chia sẻ Instagram">
				</div>
				
				<div id="product_title">
					<div id="product_title_1">${product.getName()}</div>
					<div id="product_title_2">Thương hiệu: <a href="javascript:"></a></div>
					<div id="product_title_3">Xem <span>12 đánh giá</span></div>
					<div id="product_title_4"><span>${countProductView }</span> lượt xem</div>
					<input type="hidden" name="cart_hidden_id" id="cart_hidden_id" value="${id}">
					<input type="hidden" id="cart_product_id" value="${sessionScope.cart_product_id}">
					<input type="hidden" id="cart_product_quantity" value="${sessionScope.cart_product_quantity}">
					<input type="hidden" id="cart_count_total" value="${sessionScope.totalQuantity}">
					<input type="hidden" id="productID" value="${product.getId() }">
				</div>

				<div id="product_mid">
					<div id="product_mid_last_price">${product.getDisplayPriceSale()}</div>
					<div id="product_mid_ori">Giá niêm yết: <span>${product.getDisplayPrice(1)}</span><br>(Đã bao gồm VAT)</div>
					<div style="margin-top: 15px; font-size: 95%; font-weight: lighter;"><i>Miễn phí giao hàng thu tiền ( COD free )</i></div>
					<p style="margin-top: 5px;">* Giảm tới <span>1%</span> giá hóa đơn, <span>10%</span> giá phụ kiện cho thành viên</p>
					<p>* Trả góp <span>0%</span> với thẻ tín dụng ngân hàng (tối thiểu 3 triệu)</p>
					<p>* Miễn phí cà thẻ (ngoại trừ AMEX, UnionPay & JCB)</p>
					<div class="product_mid_dashed"></div>
					<div id="product_mid_pay">
						<div class="text-sm" style="color: #595959">Số lượng:</div>
						<button type="button">-</button>
							<input type="tel" name="product_mid_pay_quantity" id="product_mid_pay_quantity" min="1" max="100" value="1" autocomplete="off">
						<button type="button">+</button>
						<i class="product_mid_pay_available"><span>${product.getQuantityLeft()}</span> sản phẩm có sẵn</i>
						<div id="product_mid_pay_cart">
							<svg viewBox="200 -90 500 500">
								<path d="M528.12 301.319l47.273-208C578.806 78.301 567.391 64 551.99 64H159.208l-9.166-44.81C147.758 8.021 137.93 0 126.529 0H24C10.745 0 0 10.745 0 24v16c0 13.255 10.745 24 24 24h69.883l70.248 343.435C147.325 417.1 136 435.222 136 456c0 30.928 25.072 56 56 56s56-25.072 56-56c0-15.674-6.447-29.835-16.824-40h209.647C430.447 426.165 424 440.326 424 456c0 30.928 25.072 56 56 56s56-25.072 56-56c0-22.172-12.888-41.332-31.579-50.405l5.517-24.276c3.413-15.018-8.002-29.319-23.403-29.319H218.117l-6.545-32h293.145c11.206 0 20.92-7.754 23.403-18.681z"></path>
							</svg>
							THÊM VÀO GIỎ HÀNG
						</div>
						<div id="cart_susscess" style="height: 40px; width: 300px; background: none; position: absolute; top: 389px; left: 710px; color: green; display: none">
							Thêm thành công!
						</div>
						<div class="product_mid_dashed"></div>
						<div id="product_mid_when">THỜI GIAN DỰ KIẾN GIAO HÀNG</div>
						<div id="product_mid_where">Bạn muốn giao hàng tới đâu? <span>Chọn địa chỉ</span></div>
					</div>
				</div>
	
			</div>
			
			<h2 id="commentProduct" style="margin-bottom: 10px;">Bình luận: </h2>
			<div id="comments-container" style="width: 60%;"></div>


			<br>
			
			<div id="zzz" style=""></div>
			<div class="clearfix"></div>
		</div></div></div>
		<%@ include file="footer.jsp" %>
		<div class="msg_container" style="font-size: 100%;">
			<div class="msg_text">✔</div>
			<div class="msg_close">✖</div>
		</div>
	</BODY>
</HTML>

