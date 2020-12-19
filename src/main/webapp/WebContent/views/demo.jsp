<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<base href="${pageContext.servletContext.contextPath}/">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<link rel="stylesheet" src="css/demo.css">
<style>
.container {
	margin-top: 50px;
}

@import
	url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
/*reset css*/
div, label {
	margin: 0;
	padding: 0;
}

body {
	margin: 20px;
}

h1 {
	font-size: 1.5em;
	margin: 10px;
}
/****** Style Star Rating Widget *****/
#rating {
	border: none;
	float: left;
}

#rating>input {
	display: none;
} /*áº©n input radio - vÃ¬ chÃºng ta Ä‘Ã£ cÃ³ label lÃ  GUI*/
#rating>label:before {
	margin: 5px;
	font-size: 1.25em;
	font-family: FontAwesome;
	display: inline-block;
	content: "\f005";
} /*1 ngÃ´i sao*/
#rating>.half:before {
	content: "\f089";
	position: absolute;
} /*0.5 ngÃ´i sao*/
#rating>label {
	color: #ddd;
	float: right;
}
	/*float:right Ä‘á»ƒ láº­t ngÆ°á»£c cÃ¡c ngÃ´i sao láº¡i Ä‘Ãºng theo thá»© tá»± trong thá»±c táº¿*/
/*thÃªm mÃ u cho sao Ä‘Ã£ chá»�n vÃ  cÃ¡c ngÃ´i sao phÃ­a trÆ°á»›c*/
#rating>input:checked ~label, #rating:not(:checked)>label:hover, #rating:not(:checked)>label:hover
	~label {
	color: #FFD700;
}
/* Hover vÃ o cÃ¡c sao phÃ­a trÆ°á»›c ngÃ´i sao Ä‘Ã£ chá»�n*/
#rating>input:checked+label:hover, #rating>input:checked ~label:hover,
	#rating>label:hover ~input:checked ~label, #rating>input:checked ~label:hover
	~label {
	color: #FFED85;
}
</style>
</head>
<body>
	<div class="container">
		<form action="add-vote-pet">
			<div class="row">
				<div class="col-12">
					<div id="rating">
						<input type="radio" id="star5" name="rating" value="5" /> <label
							class="full" for="star5" title="Awesome - 5 stars"></label> <input
							type="radio" id="star4" name="rating" value="4" /> <label
							class="full" for="star4" title="Pretty good - 4 stars"></label> <input
							type="radio" id="star3" name="rating" value="3" /> <label
							class="full" for="star3" title="Meh - 3 stars"></label> <input
							type="radio" id="star2" name="rating" value="2" /> <label
							class="full" for="star2" title="Kinda bad - 2 stars"></label> <input
							type="radio" id="star1" name="rating" value="1" /> <label
							class="full" for="star1" title="Sucks big time - 1 star"></label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Đánh giá</button>
				<div class="col-4" style="margin-top: 30px;"></div>
			</div>
			<input type="hidden" name="username" value="${acoount.getUsername() }">
			<input type="hidden" name="id" value="${pet.getId() }">
<!-- 			phụ kiệ thì lấy cái dưới: -->
<%-- 			<input type="hidden" name="id" value="${acc.getId() }"> --%>
		</form>
	</div>
</body>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="js/demo.js"></script>
<script>
function calcRate(r) {
    const f = ~~r,//Tương tự Math.floor(r)
        id = 'star' + f + (r % f ? 'half' : '')
    id && (document.getElementById(id).checked = !0)
}

</script>
</html>
