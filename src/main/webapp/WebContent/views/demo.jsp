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
    <link rel="stylesheet" src="css/demo.css">
    <style>
        .container{
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container">
<form action="">
    <div class="row">
        <div class="col-12">
            <div id="rating">
                <input type="radio" id="star5" name="rating" value="5" />
                <label class = "full" for="star5" title="Awesome - 5 stars"></label>

                <input type="radio" id="star4" name="rating" value="4" />
                <label class = "full" for="star4" title="Pretty good - 4 stars"></label>

                <input type="radio" id="star3" name="rating" value="3" />
                <label class = "full" for="star3" title="Meh - 3 stars"></label>

                <input type="radio" id="star2" name="rating" value="2" />
                <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>

                <input type="radio" id="star1" name="rating" value="1" />
                <label class = "full" for="star1" title="Sucks big time - 1 star"></label>
            </div>
        </div>
        <div class="col-4" style="margin-top: 30px;">
        </div>
    </div>
    </form>
</div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="js/demo.js"></script>
</html>
