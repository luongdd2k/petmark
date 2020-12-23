<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Petmart || 500</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <!-- Tell the browser to be responsive to screen width -->

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" type="text/css"    href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
    body{
      background-image: url("https://webartdevelopers.com/blog/wp-content/uploads/2018/10/HTML-500-Internal-Error.png") ;
      background-size: cover;
    }
    .hide{
      display: none;
      visibility: hidden;
    }
  </style>
</head>
<body>
<div class="container" style="margin-top: 1%;">
  <input  type="hidden" id="role" value="${account.getRole().getName()}" name="role">
  <div class="row">
    <div class="col-12" style="text-align: center;">
      <a href="" id="show-member">
        <p style="font-size: 40px;color: red;"> Trở lại trang chủ</p>
      </a>
      <a href="LoggedInSuccessfully" id="show-admin">
        <p style="font-size: 40px;color: red;"> Trở lại trang chủ</p>
      </a>
    </div>
  </div>
</div>

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script>
  abc();
  function abc(){
    let role  = document.getElementById("role");
    if(role.value == "" || role.value == "Member"){
      document.getElementById("show-admin").classList.add("hide");
    }else if(role.value == "Admin" || role.value == "Staff"){
      document.getElementById("show-member").classList.add("hide");
    }
  }
</script>
</body>
</html>
