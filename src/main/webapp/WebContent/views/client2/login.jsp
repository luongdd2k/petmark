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
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="images/login/wave.png">
	<div class="container">
		<div class="img">
			<img src="images/login/bg.svg">
		</div>
		<div class="login-content">
			<form action="">
				<img src="images/login/avatar.svg">
				<h2 class="title">Xin chào</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Tên tài khoản</h5>
           		   		<input type="text" class="input" required>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Mật khẩu</h5>
           		    	<input type="password" class="input" required>
            	   </div>
				</div>
				<div class="row">
					<div class="col-4"><a href="register.html" style="text-align: left;">Tạo tài khoản mới</a></div>
					<div class="col-4"><a href="index.html" style="text-align: center;">Trang chủ</a></div>
					<div class="col-4"><a href="forgot-pass.html">Quên mật khẩu?</a></div>
				</div>
            	<input type="submit" class="btn" value="Đăng nhập">
            </form>
        </div>
    </div>
	<script type="text/javascript" src="js/main.js"></script>
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
</body>
</html>
