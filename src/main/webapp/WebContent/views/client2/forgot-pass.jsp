<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>Quên mật khẩu</title>
	<base href="${pageContext.servletContext.contextPath}/">
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
			<img src="images/login/questions.svg">
		</div>
		<div class="login-content">
			<form action="">
				<img src="images/login/avatar.svg">
                <h2 class="title1">Quên mật khẩu ?</h2>
                <h3 class="title_des">
                    Vui lòng cung cấp Email để lấy lại mật khẩu
                </h3>
           		<div class="input-div email">
           		   <div class="i">
                    <i class="far fa-envelope"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Email</h5>
           		   		<input type="text" class="input">
           		   </div>
           		</div>
            	<a href="login.html">Trở lại đăng nhập</a>
            	<input type="submit" class="btn" value="Gửi">
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
