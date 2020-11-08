<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<nav>
	<div id="nav_bar">
		<div id="nav_bar_left">
			<a href="javascript:">Phiếu quà tặng</a> | <a href="javascript:">Khuyến mãi </a> | <span
				id="connect" class="cursor-default">Kết nối </span>

			<ul class="soc">
				<li><a class="icon-10 facebook" href="javascript:"
					title="Kết nối Facebook" preserveAspectRatio="xMidYMid meet"> <svg
							viewBox="0 0 512 512">
							<path
								d="M211.9 197.4h-36.7v59.9h36.7V433.1h70.5V256.5h49.2l5.2-59.1h-54.4c0 0 0-22.1 0-33.7 0-13.9 2.8-19.5 16.3-19.5 10.9 0 38.2 0 38.2 0V82.9c0 0-40.2 0-48.8 0 -52.5 0-76.1 23.1-76.1 67.3C211.9 188.8 211.9 197.4 211.9 197.4z"></path>
					 	</svg>
				</a></li>
			</ul>

			<ul class="soc">
				<li><a class="icon-15 instagram" href="javascript:"
					title="Kết nối Instagram" preserveAspectRatio="xMidYMid meet">
						<svg viewbox="-6 -4 212 212">
				      		<defs>
				      			<linearGradient id="gradient11" x1=".8" y1=".8" x2="0">
					                <stop offset="0" stop-color="#fff" />
					            </linearGradient>
								<linearGradient id="gradient1" x1=".8" y1=".8" x2="0">
					                <stop offset="0" stop-color="#c92bb7" />
					                <stop offset="1" stop-color="#3051f1" />
					            </linearGradient>
					            <radialGradient id="gradient2" cx=".2" cy="1" r="1.2">
					                <stop offset="0" stop-color="#fcdf8f" />
					                <stop offset=".1" stop-color="#fbd377" />
					                <stop offset=".25" stop-color="#fa8e37" />
					                <stop offset=".35" stop-color="#f73344" />
					                <stop offset=".65" stop-color="#f73344"
								stop-opacity="0" />
					            </radialGradient>
								<rect id="logoContainer" x="0" y="0" width="200" height="200"
								rx="50" ry="50" />
					        </defs>
					        <use id="use15_1" xlink:href="#logoContainer"
								fill="url(#gradient11)" />
					        <use id="use15_2" xlink:href="#logoContainer"
								fill="url(#gradient22)" />
					        
					        <rect x="35" y="35" width="130" height="130" rx="30"
								ry="30" fill="none" stroke="#fff" stroke-width="13" />
					        <circle id="circle_1" cx="100" cy="100" r="40" fill="none"
								stroke="#623FA2" stroke-width="25" />
					        <circle id="circle_2" cx="155" cy="47" r="12"
								fill="#623FA2" />

					        
				      	</svg>
				</a></li>
			</ul>

			<ul class="soc">
				<li><a class="icon-26 twitter" href="javascript:" title="Kết nối Twitter"
					preserveAspectRatio="xMidYMid meet"> <svg viewbox="0 0 512 512">
        					<path
								d="M419.6 168.6c-11.7 5.2-24.2 8.7-37.4 10.2 13.4-8.1 23.8-20.8 28.6-36 -12.6 7.5-26.5 12.9-41.3 15.8 -11.9-12.6-28.8-20.6-47.5-20.6 -42 0-72.9 39.2-63.4 79.9 -54.1-2.7-102.1-28.6-134.2-68 -17 29.2-8.8 67.5 20.1 86.9 -10.7-0.3-20.7-3.3-29.5-8.1 -0.7 30.2 20.9 58.4 52.2 64.6 -9.2 2.5-19.2 3.1-29.4 1.1 8.3 25.9 32.3 44.7 60.8 45.2 -27.4 21.4-61.8 31-96.4 27 28.8 18.5 63 29.2 99.8 29.2 120.8 0 189.1-102.1 185-193.6C399.9 193.1 410.9 181.7 419.6 168.6z"></path>
      					</svg>
				</a></li>
			</ul>

			<ul class="soc">
				<li><a class="icon-28 youtube" href="javascript:" title="Kết nối YouTube"
					preserveAspectRatio="xMidYMid meet"> <svg viewbox="0 0 512 512">
      						<circle id="circle_1" cx="259" cy="259" r="60" fill="#fff"
								stroke="#fff" stroke-width="25" />
        					<path
								d="M422.6 193.6c-5.3-45.3-23.3-51.6-59-54 -50.8-3.5-164.3-3.5-215.1 0 -35.7 2.4-53.7 8.7-59 54 -4 33.6-4 91.1 0 124.8 5.3 45.3 23.3 51.6 59 54 50.9 3.5 164.3 3.5 215.1 0 35.7-2.4 53.7-8.7 59-54C426.6 284.8 426.6 227.3 422.6 193.6zM222.2 303.4v-94.6l90.7 47.3L222.2 303.4z"></path>
      					</svg>
				</a></li>
			</ul>
		</div>

		<div id="nav_bar_right" class="select-none">
			<span class="cursor-pointer noti_help"> <svg
					viewBox="0 -3 17.5 17.5">
						    <path
						d="m17 15.6-.6-1.2-.6-1.2v-7.3c0-.2 0-.4-.1-.6-.3-1.2-1.4-2.2-2.7-2.2h-1c-.3-.7-1.1-1.2-2.1-1.2s-1.8.5-2.1 1.3h-.8c-1.5 0-2.8 1.2-2.8 2.7v7.2l-1.2 2.5-.2.4h14.4zm-12.2-.8.1-.2.5-1v-.1-7.6c0-.8.7-1.5 1.5-1.5h6.1c.8 0 1.5.7 1.5 1.5v7.5.1l.6 1.2h-10.3z"></path>
						    <path d="m10 18c1 0 1.9-.6 2.3-1.4h-4.6c.4.9 1.3 1.4 2.3 1.4z"></path>
						</svg> Thông báo
			</span> <span class="cursor-help noti_help"> <svg
					viewBox="0 -3.5 15.5 15.5">
						    <g fill="none" fill-rule="evenodd" transform="translate(1)">
							    <circle cx="7" cy="8" r="7" stroke="currentColor"></circle>
							    <path fill="currentColor"
						d="m6.871 3.992c-.814 0-1.452.231-1.914.704-.462.462-.693 1.089-.693 1.892h1.155c0-.484.099-.858.297-1.122.22-.319.583-.473 1.078-.473.396 0 .715.11.935.33.209.22.319.517.319.902 0 .286-.11.55-.308.803l-.187.209c-.682.605-1.1 1.056-1.243 1.364-.154.286-.22.638-.22 1.045v.187h1.177v-.187c0-.264.055-.506.176-.726.099-.198.253-.396.462-.572.517-.451.825-.737.924-.858.275-.352.418-.803.418-1.342 0-.66-.22-1.188-.66-1.573-.44-.396-1.012-.583-1.716-.583zm-.198 6.435c-.22 0-.418.066-.572.22-.154.143-.231.33-.231.561 0 .22.077.407.231.561s.352.231.572.231.418-.077.572-.22c.154-.154.242-.341.242-.572s-.077-.418-.231-.561c-.154-.154-.352-.22-.583-.22z"></path>
							</g>
						</svg> Trợ giúp
			</span> <span class="right_span_1 cursor-pointer signup"> <span>Đăng
					ký</span>
				<div class="ush user_menu_tab">
					<div class="arrow-up"></div>
					<div class="tab_container">
						<div class="menu_row" id="qlsp_admin">
							<a href="admin/ProductManagement">Quản lý thú cưng&nbsp;&nbsp;&nbsp; <i class="far fa-star"></i>
							</a>
						</div>
						<div class="menu_row" id="qlsp_admin">
							<a href="admin/AccessoriesManagement">Quản lý phụ kiện&nbsp;&nbsp;&nbsp; <i class="far fa-star"></i>
							</a>
						</div>
						<div class="menu_row" id="qlsp_admin">
							<a href="admin/SpeciesManagement">Quản lý giống&nbsp;&nbsp;&nbsp; <i class="far fa-star"></i>
							</a>
						</div>
						<div class="menu_row" id="qlsp_admin">
							<a href="admin/CategoryManagement">Quản lý hãng phụ kiện&nbsp;&nbsp;&nbsp; <i class="far fa-star"></i>
							</a>
						</div>
						<div class="menu_row" id="qlsp_admin_2">
							<a href="admin/UserManagement">Quản lý người dùng&nbsp;&nbsp;&nbsp; <i class="far fa-star"></i>
							</a>
						</div>
						<div class="menu_row">
							<a href="CartItem/ViewCart">Xem giỏ hàng</a>
						</div>
						<div class="menu_row">Xem thông báo</div>
						<div class="menu_row">Sản phẩm yêu thích</div>
						<div class="menu_row">
							<a href="Profile">Xem thông tin cá nhân</a>
						</div>
						<div class="menu_row">Thông tin liên hệ</div>
					</div>
				</div>

			</span> | <span class="right_span_2 cursor-pointer login">Đăng nhập</span>
		</div>
	</div>

	<div id="nav_main">
		<a id="hlogo" href="index"></a>
		<div id="search_bar">
			<form action="SearchProduct" method="GET" autocomplete="off">
				<input type="text" name="form_search" id="form_search"
					placeholder="Tìm kiếm sản phẩm...">
				<button type="submit" name="form_search_submit"
					id="form_search_submit" title="Tìm kiếm">
					<svg height="19" viewBox="0 -3 19 19" width="16"
						class="overflow-visible">
								<g fill-rule="evenodd" fill="#fff" stroke="none"
							stroke-width="1">
						<g transform="translate(-1016 -32)">
						<g>
						<g transform="translate(405 21)">
						<g transform="translate(611 11)">
									<path
							d="m8 16c4.418278 0 8-3.581722 8-8s-3.581722-8-8-8-8 3.581722-8 8 3.581722 8 8 8zm0-2c-3.3137085 0-6-2.6862915-6-6s2.6862915-6 6-6 6 2.6862915 6 6-2.6862915 6-6 6z"></path>
									<path
							d="m12.2972351 13.7114222 4.9799555 4.919354c.3929077.3881263 1.0260608.3842503 1.4141871-.0086574.3881263-.3929076.3842503-1.0260607-.0086574-1.414187l-4.9799554-4.919354c-.3929077-.3881263-1.0260608-.3842503-1.4141871.0086573-.3881263.3929077-.3842503 1.0260608.0086573 1.4141871z"></path>
								</g></g></g></g></g>
							</svg>
				</button>
			</form>
		</div>

		<a href="CartItem/ViewCart" id="cart" title="Xem giỏ hàng"> <svg
				viewBox="-3 -4 33 33">
						<polyline fill="none" stroke="#fff"
					points="2 1.7 5.5 1.7 9.6 18.3 21.2 18.3 24.6 6.1 7 6.1"
					stroke-linecap="round" stroke-linejoin="round"
					stroke-miterlimit="10" stroke-width="2.5"></polyline>
						<circle cx="10.7" cy="23" r="2.2" stroke="none" fill="#fff"></circle>
						<circle cx="19.7" cy="23" r="2.2" stroke="none" fill="#fff"></circle>
					</svg> <span style="margin: 9px 7px 0px 6px; float: left;">Giỏ
				hàng</span> <span id="cart_count">${sessionScope.totalQuantity}</span>
		</a>
	</div>
</nav>

<div id="scrollTop" title="Lên đầu trang">
	<svg viewbox="-198 -80 712 712">
			    <path
			d="M177 159.7l136 136c9.4 9.4 9.4 24.6 0 33.9l-22.6 22.6c-9.4 9.4-24.6 9.4-33.9 0L160 255.9l-96.4 96.4c-9.4 9.4-24.6 9.4-33.9 0L7 329.7c-9.4-9.4-9.4-24.6 0-33.9l136-136c9.4-9.5 24.6-9.5 34-.1z"></path>
			</svg>
</div>

<input type="hidden" name="login_user" id="login_user"
	value="${username }">
<input type="hidden" name="login_role" id="login_role" value="${role }">
<input type="hidden" name="login_fullname" id="login_fullname"
	value="${fullname }">
<input type="hidden" name="login_profilePictureURL"
	id="login_profilePictureURL" value="${profilePictureURL }">

<div class="sl_overlay"></div>
<div class="sl_form">
	<div id="sl_tab">
		<button id="sl_tab_login">Đăng nhập</button>
		<button id="sl_tab_signup">Đăng ký</button>
	</div>

	<form action="CheckLogin" id="sl_form_login" method="post">
		<div class="sl_form_input">
			<div class="sl_form_login_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/man-user.svg" class="sl_form_input_svg">
				</div>
				<input type="text" name="sl_login_username" id="sl_login_username"
					class="input_text" placeholder="Tên đăng nhập" autocomplete="off"
					required spell check="false">
			</div>
			<div class="sl_form_login_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/lock.svg" class="sl_form_input_svg">
				</div>
				<input type="password" name="sl_login_password"
					id="sl_login_password" class="input_text" placeholder="Mật khẩu"
					autocomplete="off" required spellcheck="false">
				<%
					out.println("<input type='hidden' name='pageid' id='pageid' value='"
							+ this.getClass().getSimpleName().replaceAll("_", ".").replaceAll(".005f", "_") + "'>");
				%>
			</div>
			<input type="hidden" name="cart_hidden_id" id="cart_hidden_id"
				value="${id}"> <input type="hidden" name="urlPage"
				id="urlPage" value="">
			<div id="sl_lost_pw">Quên mật khẩu?</div>
		</div>
		<div class="sl_form_submit">
			<button type="submit" class="sl_submit">Đăng Nhập</button>
			<button type="reset" class="sl_back">QUAY LẠI</button>
		</div>
	</form>

	<form action="CheckSignup" id="sl_form_signup" method="post">
		<div class="sl_form_input">
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/man-user.svg" class="sl_form_input_svg">
				</div>
				<input type="text" name="sl_signup_username" id="sl_signup_username"
					class="input_text" placeholder="Tên đăng nhập" autocomplete="off"
					required spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/lock.svg" class="sl_form_input_svg">
				</div>
				<input type="password" name="sl_signup_password"
					id="sl_signup_password" class="input_text" placeholder="Mật khẩu"
					autocomplete="off" required spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/password.svg" class="sl_form_input_svg slp">
				</div>
				<input type="password" name="sl_signup_re_password"
					id="sl_signup_re_password" class="input_text"
					placeholder="Xác nhận mật khẩu" autocomplete="off" required
					spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/user-name.svg" class="sl_form_input_svg slp">
				</div>
				<input type="text" name="sl_signup_name" id="sl_signup_name"
					class="input_text" placeholder="Họ tên" autocomplete="off" required
					spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/gender.svg"
						class="sl_form_input_svg slg slmf">
				</div>
				<select id="sl_signup_gt" name="gt" required class="input_select">
					<option value="-1" style="color: #000;" id="gt_option">Giới
						tính</option>
					<option value="0" style="color: #000;">Nam</option>
					<option value="1" style="color: #000;">Nữ</option>
				</select> <input type="hidden" name="sl_signup_gt2" id="sl_signup_gt2"
					value=""> <input type="hidden" name="urlPage2"
					id="urlPage2" value="">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/message.svg" class="sl_form_input_svg slg">
				</div>
				<input type="email" name="sl_signup_email" id="sl_signup_email"
					class="input_text" placeholder="Địa chỉ email" autocomplete="off"
					required spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/smartphone.svg"
						class="sl_form_input_svg slp">
				</div>
				<input type="text" name="sl_signup_phone" id="sl_signup_phone"
					class="input_text" placeholder="Số điện thoại" autocomplete="off"
					required spellcheck="false">
			</div>
			<div class="sl_form_signup_row">
				<div class="sl_form_input_svg_container">
					<img src="Image/sl_con/message.svg" class="sl_form_input_svg slg">
				</div>
				<input type="text" name="sl_signup_address" id="sl_signup_address"
					class="input_text" placeholder="Địa chỉ" autocomplete="off"
					required spellcheck="false">
			</div>
		</div>
		<div class="sl_form_submit">
			<button type="button" class="sl_submit">Đăng ký</button>
			<button type="reset" class="sl_back">QUAY LẠI</button>
		</div>
	</form>

	<div id="sl_note">
		<img src="Image/other/sl_note.png"
			style="float: left; margin-right: 10px; width: 9%"> <b>Đăng
			nhập</b>
	</div>
</div>

