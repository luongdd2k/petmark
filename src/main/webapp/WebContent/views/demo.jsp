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
        h1, h2 {
            color: #888;
            margin:0;
            font-weight:normal;
        }
        h1{ padding-top: 1.5em; padding-bottom: 2em; }
        h2 {
            clear:both;
            color: #aaa;
            padding: 2em 0 0.3em
        }
        em {
            display: block;
            margin: .5em auto 2em;
            color: #bbb;
        }

        p, p a {
            color: #aaa;
            text-decoration: none;
        }
        p a:hover,
        p a:focus {
            text-decoration: underline;
        }
        p + p { color: #bbb; margin-top: 2em;}
        .detail {position: absolute; text-align: right; right: 5px; bottom: 5px; width: 50%;}

        a[href*="intent"] {
            display:inline-block;
            margin-top: 0.4em;
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
        .rating2 {
            direction: rtl;
        }
        .rating2 a {
            float:none
        }
    </style>
</head>
<body>
<div class="container">
<form action="">
    <div class="row">
        <div class="col-12">
<%--            <div id="rating">--%>
<%--                <input type="radio" id="star5" name="rating" value="5" />--%>
<%--                <label class = "full" for="star5" title="Awesome - 5 stars"></label>--%>

<%--                <input type="radio" id="star4" name="rating" value="4" />--%>
<%--                <label class = "full" for="star4" title="Pretty good - 4 stars"></label>--%>

<%--                <input type="radio" id="star3" name="rating" value="3" />--%>
<%--                <label class = "full" for="star3" title="Meh - 3 stars"></label>--%>

<%--                <input type="radio" id="star2" name="rating" value="2" />--%>
<%--                <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>--%>

<%--                <input type="radio" id="star1" name="rating" value="1" />--%>
<%--                <label class = "full" for="star1" title="Sucks big time - 1 star"></label>--%>
<%--            </div>--%>
                <div class="rating">
                    <div class="rating rating2">
                        <input name="stars" id="e5" type="radio">
                        <label for="e5">★</label>
                        <input name="stars" id="e4" type="radio">
                        <label for="e4">★</label>
                        <input name="stars" id="e3" type="radio">
                        <label for="e3">★</label>
                        <input name="stars" id="e2" type="radio">
                        <label for="e2">★</label>
                        <input name="stars" id="e1" type="radio">
                        <label for="e1">★</label>
                    </div>
                </div>
            </div>
        <div class="col-4" style="margin-top: 30px;">
        </div>
    </div>
    </form>
</div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script>
    function calcRate(r) {
        const f = ~~r,//Tương tự Math.floor(r)
            id = 'star' + f + (r % f ? 'half' : '')
        id && (document.getElementById(id).checked = !0)
    }

</script>
</html>
