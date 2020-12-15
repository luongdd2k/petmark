<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Petmart | Đăng ký tài khoản mới</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <style>
      body{
        background-image: url(https://wallpaperaccess.com/full/1567666.png);
      }
      .container{
        max-width: 900px;
        display: flex;
        align-items: center;
        height: 100vh;
      }
      .form-content{
        padding: 30px 50px 0px 50px;
      }
      .form-div{
        background-color: white;
      }
    </style>
  </head>
  <body>
  <div class="container">
    <form class="border border-light form-div">
      <div class="row form-content">
        <div class="col-12">
          <p class="h3 mb-4 text-center">TẠO TÀI KHOẢN</p>
        </div>
        <div class="form-group col-4">
          <label for="username">Tên đăng nhập</label>
          <input type="text" class="form-control" id="username" placeholder="Tên đăng nhập">
        </div>
        <div class="form-group col-4">
          <label for="pass">Mật khẩu</label>
          <input type="password" class="form-control" id="pass" placeholder="Mật khẩu">
        </div>
        <div class="form-group col-4">
          <label for="passCon">Nhập lại mật khẩu</label>
          <input type="password" class="form-control" id="passCon" placeholder="Xác nhận mật khẩu">
        </div>
        <div class="form-group col-4">
          <label for="full-name">Họ và tên</label>
          <input type="text" class="form-control" id="full-name" placeholder="Họ và tên">
        </div>
        <div class="form-group col-4">
          <label for="mail">Email</label>
          <input type="email" class="form-control" id="mail" placeholder="Email">
        </div>
        <div class="form-group col-3">
          <label>Giới tính</label>
          <br/>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="nam" value="male" checked>
            <label class="form-check-label" for="nam">Nam</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="nu" value="female">
            <label class="form-check-label" for="nu">Nữ</label>
          </div>
        </div>
        <div class="form-group col-4">
          <label for="city2">Tỉnh / Thành phố</label>
          <select class="form-control" aria-label="Default select example" id="city2" onchange="city(this)">
            <option value="none">Tỉnh / Thành phố</option>
            <c:forEach var="list" items="${list }">
              <option value="${list.getMatp() }">${list.getName() }</option>
            </c:forEach>
          </select>
        </div>
        <div class="form-group col-4">
          <label for="district2">Quận / Huyện    </label>
          <select class="form-control" aria-label="Default select example" id="district2" onchange="district(this)">
            <option value="none">Quận / Huyện</option>
          </select>
        </div>
        <div class="form-group col-4">
          <label for="village2">Xã / Phường / Thị trấn</label>
          <select class="form-control" aria-label="Default select example" id="village2" onchange="village(this)">
            <option value="none">Xã / Phường / Thị trấn</option>
          </select>
        </div>
        <div class="form-group col-12">
          <label for="address">Địa chỉ</label>
          <input type="email" class="form-control" id="address" placeholder="Địa chỉ">
        </div>
        <div class="form-check col-12">
          <input class="form-group-input" type="checkbox" value="" id="defaultCheck1">
          <label class="form-group-label" for="defaultCheck1">
            Đã đọc hết nội quy về việc tạo tài khoản của Shop
          </label>
        </div>
        <div class="form-group col-12">
          <button class="btn btn-info btn-block" type="submit">Đăng ký</button>
        </div>
        <div class="form-group col-6">
          <p>
            Đã có tài khoản! <a href="">Đăng nhập</a>
          </p>
        </div>
      </div>

    </form>
  </div>
  </body>
  <!-- JQuery -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
  <script src="js/city.js"></script>
</html>
