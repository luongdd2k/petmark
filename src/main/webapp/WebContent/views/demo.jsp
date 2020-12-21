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
    <link rel="stylesheet" src="css/fontawesome-free-5.15.1/css/fontawesome.css">
    <style>
        .container{
            margin-top: 50px;
        }
        body {
            background: #FDFDFD;
            font-family: "Segoe WP","Segoe UI", Helvetica, Arial, sans-serif;
            text-align:center;
        }
        /*
         * Rating styles
         */
        .rating {
            width: 226px;
            margin: 0 auto 1em;
            font-size: 45px;
            overflow:hidden;
        }
        .rating input {
            float: right;
            opacity: 0;
            position: absolute;
        }
        .rating a,
        .rating label {
            float:right;
            color: #aaa;
            text-decoration: none;
            -webkit-transition: color .4s;
            -moz-transition: color .4s;
            -o-transition: color .4s;
            transition: color .4s;
        }
        .rating label:hover ~ label,
        .rating input:focus ~ label,
        .rating label:hover,
        .rating a:hover,
        .rating a:hover ~ a,
        .rating a:focus,
        .rating a:focus ~ a		{
            color: orange;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="">
            <div class="row">
                <div class="col-12">
                    <div class="rating">
                        <div class="rating">
                            <input class="star" name="rating" id="e5" type="radio" value="5">
                            <label for="e5">★</label>
                            <input class="star" name="rating" id="e4" type="radio" value="4">
                            <label for="e4">★</label>
                            <input class="star" name="rating" id="e3" type="radio" value="3">
                            <label for="e3">★</label>
                            <input class="star" name="rating" id="e2" type="radio" value="2">
                            <label for="e2">★</label>
                            <input class="star" name="rating" id="e1" type="radio" value="1">
                            <label for="e1">★</label>
                        </div>
                    </div>
                </div>
                <div class="col-4" style="margin-top: 30px;">
                </div>
            </div>
            <input type="hidden" name="username" value="${account.getUsername() }">
            <input type="hidden" name="id" value="${pet.getId() }">
            <!-- phụ kiệ thì lấy cái dưới: -->
            <%-- <input type="hidden" name="id" value="${acc.getId() }"> --%>
        </form>
    </div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script>

</script>
</html>
