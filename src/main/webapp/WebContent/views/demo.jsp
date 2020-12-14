<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <base href="${pageContext.servletContext.contextPath}/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
          crossorigin="anonymous">
    <style>
        .container{
            margin-top: 50px;
        }
        input{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
<form action="">
    <div class="row">
        <div class="col-4">
            <label for="city">Tỉnh / Thành phố</label>
            <select class="form-select" aria-label="Default select example" id="city" onchange="city(this)">
                <option value="none">---- Chọn Tỉnh / Thành phố ----</option>
                <c:forEach var="list" items="${list }">
                    <option value="${list.getMatp() }">${list.getName() }</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-4">
            <label for="district">Quận / Huyện    </label>
            <select class="form-select" aria-label="Default select example" id="district" onchange="district(this)">
                <option value="none">---- Chọn Quận / Huyện ----</option>
            </select>
        </div>
        <div class="col-4">
            <label for="village">Xã / Phường / Thị trấn</label>
            <select class="form-select" aria-label="Default select example" id="village" onchange="village(this)">
                <option value="none">---- Chọn Xã / Phường / Thị trấn ----</option>
            </select>
        </div>

        <div class="col-12" style="margin-top: 30px;text-align: center;">
            <button type="button" class="btn btn-outline-primary" onclick="a()">Primary</button>
        </div>
        <div class="col-4" style="margin-top: 30px;">
            <input type="hidden" class="form-control" id="city-id" value="">
            <input type="hidden" class="form-control" id="district-id" value="">
            <input type="hidden" class="form-control" id="village-id" value="">
        </div>
    </div>
    </form>
</div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="js/city.js"></script>
<script>
    function a(){
       let city = document.getElementById("city");
       let cityValue = city.options[city.selectedIndex].value;
       console.log(cityValue);
    };
</script>
</html>
