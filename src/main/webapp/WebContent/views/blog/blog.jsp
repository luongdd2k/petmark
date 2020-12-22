<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />


<!-- Favicon -->
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />
<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css"    href="css/fontawesome-free-5.15.1/css/all.min.css" />

<!-- Carousel -->
	<link rel="stylesheet" type="text/css"    href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css"    href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
	<link rel="stylesheet" type="text/css"    href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
<!-- Animate On Scroll -->
	<link rel="stylesheet" type="text/css"    href="https://unpkg.com/aos@next/dist/aos.css" />
	<title>Blog cá nhân</title>
	<base href="${pageContext.servletContext.contextPath}/">
<!-- Custom StyleSheet -->

<link rel="stylesheet" type="text/css"    href="css/acc-in.css">
<link rel="stylesheet" type="text/css"    href="css/styles.css" />

<link rel="stylesheet" type="text/css"    href="css/blog.css" />
<style>
.hide {
	display: none;
	visibility: hidden;
}
#button-gr {
	margin-top: 10px;
}
.card-title {
	font-weight: 600;
	font-size: 1.9rem;
}
.btn-new{
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	padding: .75rem 0;
	box-shadow: 0 1px 1px 0 rgba(0,0,0,.05);
	border-radius: 2px;
	color: #555;
}
.btn-new a button{
	display: inline-block;
	font-weight: 700;
	text-transform: uppercase;
	width: 90px;
	padding: 0.5rem 0;
	border: 1px solid var(--black);
	color: var(--black);
	cursor: pointer;
	font-size: 1.2rem ;
}
.purchase-empty-blog__icon{
	background-position: 50%;
	background-size: cover;
	background-repeat: no-repeat;
	background-image: url(https://www.pngitem.com/pimgs/m/297-2978988_blogging-and-content-the-transparent-blog-png-png.png);
	width: 15rem;
	height: 15rem;
	margin-bottom: 1.25rem;
}
.new-blog-form{
	width: 100%;
}
.action{
	margin-right: 10px;
	padding-bottom: 10px;
	margin-right: 10px;
	padding-bottom: 10px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}
.count-like{
	padding-right: 7px;
	color: rgb(151, 153, 153);
	font-size: 15px;
}
.description h3{
	display: -webkit-box;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	overflow: hidden;
}
</style>
</head>

<body>
			<%@ include file="/WebContent/views/header_nav.jsp" %>
			<div class="page__title-area">
				<div class="container">
					<div class="page__title-container">
						<ul class="page__titles">
							<li>
								<a href="/">
									<svg>
                                    	<use xlink:href="images/sprite.svg#icon-home"></use>
                                	</svg>
								</a>
							</li>
							<li class="page__title">Blog cá nhân</li>
						</ul>
					</div>
				</div>
			</div>
	<main id="main">
		<div class="container">
			<div class="main-container _2usMPO">
				<%@ include file="/WebContent/views/aside-account.jsp" %>
				<div class="lm_m-4">
					<div class="h25IfI" role="main">
						<div class="my-account-section">
							<div class="order-section__header">
								<div class="order-section__header-left">
									<div class="order-section__header-title my-acount-section__header-title">Blog của tôi</div>
								</div>
							</div>
							<div id="blog" class="blog">
								<div class="btn-new">
									<a id="new" href="javascript:"><button>Tạo mới</button></a>
								</div>
								<div class="my-account-profile" style="display: block">
									<div class="row">
										<c:forEach var="blog" items="${blog }" varStatus="i">
											<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12" style="margin-top: 10px; ">
												<div class="card">
													<div name="image" id="image">
														<img class="img-thumbnail" alt="ảnh" src="${blog.getImg() }">
													</div>
													<div class="description" style="padding: 11px 15px;">
														<h3 style="font-weight: bold;">${blog.getContent() }</h3>
													</div>
													<div class="description">
														<p style="padding-left: 11px;">Trạng thái:  <span class="status-blog">${blog.displayStt() }</span></p>
													</div>
													<div class="action">
														<span class="count-like">${blog.getLike().size() }</span>
<%--															<form action="addLike/${blog.getId() }" method="post">--%>
																<input type="hidden" class="blog-id" value="${blog.getId() }">
																<button style="border: none;background: white;" type="submit" onclick="addLike(${blog.getId() },${i.index})">
																	<svg width="1.3em" height="1.3em" viewBox="0 0 16 16" class="bi bi-heart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
																		<path fill-rule="evenodd" d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
																  	</svg>
																</button>
<%--															</form>--%>
														<svg width="1.3em" height="1.3em" viewBox="0 0 16 16"
															class="bi bi-three-dots-vertical" fill="currentColor"
															xmlns="http://www.w3.org/2000/svg">
															<path fill-rule="evenodd" d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
														  </svg>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							<div id="no-blog" class="no-blog">
								<div class="purchase-list-page__empty-page-wrapper">
									<div class="purchase-empty-order__container">
										<div class="purchase-empty-blog__icon"></div>
										<div class="purchase-empty-order__text">Bạn chưa có Blog nào</div>
										<div class="purchase-empty-order__text">
											<svg class="svg-icon shopee-svg-icon user-page-sidebar-icon"
												viewBox="0 0 20 20">
                                            <path
													d="M3.24,7.51c-0.146,0.142-0.146,0.381,0,0.523l5.199,5.193c0.234,0.238,0.633,0.064,0.633-0.262v-2.634c0.105-0.007,0.212-0.011,0.321-0.011c2.373,0,4.302,1.91,4.302,4.258c0,0.957-0.33,1.809-1.008,2.602c-0.259,0.307,0.084,0.762,0.451,0.572c2.336-1.195,3.73-3.408,3.73-5.924c0-3.741-3.103-6.783-6.916-6.783c-0.307,0-0.615,0.028-0.881,0.063V2.575c0-0.327-0.398-0.5-0.633-0.261L3.24,7.51 M4.027,7.771l4.301-4.3v2.073c0,0.232,0.21,0.409,0.441,0.366c0.298-0.056,0.746-0.123,1.184-0.123c3.402,0,6.172,2.709,6.172,6.041c0,1.695-0.718,3.24-1.979,4.352c0.193-0.51,0.293-1.045,0.293-1.602c0-2.76-2.266-5-5.046-5c-0.256,0-0.528,0.018-0.747,0.05C8.465,9.653,8.328,9.81,8.328,9.995v2.074L4.027,7.771z"></path>
                                          </svg>
											<a id="hidebox" href="javascript:">Thêm một blog ngay</a>
										</div>
									</div>
								</div>
							</div>
							<div id="new-blog" class="new-blog">
								<div class="my-account-profile">
									<div class="new-blog-form">
											<form class="row" action="addBlog" method="POST" name="form-example-1" id="form-example-1" enctype="multipart/form-data" style="width: 500px; margin: 0 auto;">
												<h2 class="col-12 form-title" style="text-align: center;">Tạo bài viết</h2>
												<div class="form-group col-12">
													<label for="comment">Nhận xét</label>
													<textarea class="form-control" id="comment" rows="2" name="content"></textarea>
												</div>
												<div class="custom-file col-12">
													<input type="file" class="custom-file-input" id="customFile" name="addimg">
													<label class="custom-file-label" for="customFile">Choose file</label>
												</div>
												<div class="button col-12" style="text-align: center; margin-top: 10px">
													<button  id="luu" type="submit" class="btn btn-primary">Đăng bài</button>
													<button id="huy" type="button" class="btn btn-warning">Hủy</button>
												</div>
											</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="show-submit-data" class="modal" style="visibility: hidden;">
        <div class="content">
            <h4>Dữ liệu vừa lưu:</h4>
            <p id="display-description"><strong>Nhận xét:</strong> <span></span></p>
            <p><strong>Ảnh vừa Upload:</strong></p>
            <ul id="display-new-images"></ul>
            <a href="javascript:$('#show-submit-data').css('visibility', 'hidden')" class="close">x</a>
        </div>
    </div>
		<!-- Facility Section -->
		<%@ include file="/WebContent/views/section-facility.jsp" %>
	</main>
			<!-- Footer -->
			<%@ include file="/WebContent/views/footer_client.jsp" %>
			<!-- End Footer -->
	<!-- Go To -->
	<a href="#header" class="goto-top scroll-link"> <svg>
            <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
        </svg>
	</a>
	<!-- Glide Carousel Script -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
	<!-- Animate On Scroll -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
	<!-- Custom JavaScript -->
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/all-order.js"></script>
	<script src="js/blog.js"></script>
	<script src="js/sweat-alert.js"></script>
			<script src="js/client/aside-order.js"></script>
	<script>
		changeStatus();
		function changeStatus(){
			let status = document.getElementsByClassName("status-blog");
			for (let i=0;i<status.length;i++){
				if(status[i].innerHTML == "Đã duyệt"){
					status[i].style.color = "green";
					status[i].style.fontWeight="700";
				}else if(status[i].innerHTML == "Chưa xét duyệt"){
					status[i].style.color = "orange";
					status[i].style.fontWeight="700";
				}else if(status[i].innerHTML == "Đã hủy"){
					status[i].style.color = "red";
					status[i].style.fontWeight="700";
				}
			}
		}
		function addLike(id, index){
			let user = document.getElementById("userName");
			let idBlog = document.getElementsByClassName("blog-id");
			let like = document.getElementsByClassName("count-like");
			console.log(index);
			$.ajax({
				url: 'addLike',
				type: 'post',
				dataType: 'html',
				data: {
					"username": user.value,
					"id": id
				}
			})
					//em ko chayj viong for owr day dc a
					//t cần lấy cái index cho vào cá like kaif

					.done(function(res) {
						if(res){
							console.log("Thành công!!!!");
							console.log(user.value);
							console.log("like: "+res);
							like[index].innerHTML ="";
							like[index].innerHTML=res;
						}
					})
					.fail(function() {
						console.log("error city js");
					});
			console.log(id);
		}
	</script>
</body>
</html>
