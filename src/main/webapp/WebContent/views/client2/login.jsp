<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pet Mart | Đăng nhập</title>
	<link href="https://fonts.googleapis.com/css2?family=Lemonada:wght@500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" 
			integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<link rel="stylesheet" type="text/css" href="css-new/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="images-new/login/wave.png">
	<div class="container">
		<div class="img">
			<img src="images-new/login/bg.svg">
		</div>
		<div class="login-content">
<<<<<<< HEAD
			<form action="">
				<img src="images-new/login/avatar.svg">
=======
			<form action="CheckLogin" id="sl_form_login" method="post">
				<img src="images/login/avatar.svg">
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
				<h2 class="title">Xin chào</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Tên tài khoản</h5>
           		   		<input type="text" class="input input_text" name="sl_login_username"
									id="username" required="required">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Mật khẩu</h5>
           		    	<input type="password" class="input input_text" id="password" name="sl_login_password"
									required="required">
            	   </div>
				</div>
				<p>${thongBao }</p>
				<input type="hidden" name="cart_hidden_id" id="cart_hidden_id"
								value="${id}"> <input type="hidden" name="urlPage"
								id="urlPage" value="">
				<div class="row">
					<div class="col-4"><a href="showregister" style="text-align: left;">Tạo tài khoản mới</a></div>
					<div class="col-4"><a href="/tkwbh/" style="text-align: center;">Trang chủ</a></div>
					<div class="col-4"><a href="showforgotpw">Quên mật khẩu?</a></div>
				</div>
            	<input type="submit" class="btn" value="Đăng nhập">
            </form>
        </div>
    </div>
	<script type="text/javascript" src="js-new/main.js"></script>
	<script>
		const inputs = document.querySelectorAll(".input");
  
		function addcl() {
		  let parent = this.parentNode.parentNode;
		  parent.classList.add("focus");
		}
  
		function remcl() {
		  let parent = this.parentNode.parentNode;
		  if (this.value == "") {
			parent.classList.remove("focus");
		  }
		}
  
		inputs.forEach((input) => {
		  input.addEventListener("focus", addcl);
		  input.addEventListener("blur", remcl);
		});
	  </script>
	  <script type="text/javascript" src="Script/index.js"></script>
</body>
</html>
