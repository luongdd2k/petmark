<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/fontawesome-free-5.15.1/css/all.min.css" />

<!-- Carousel -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
<!-- Animate On Scroll -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
	<title>Blog cá nhân</title>
	<base href="${pageContext.servletContext.contextPath}/">
<!-- Custom StyleSheet -->
<link rel="stylesheet" href="css/acc-in.css">
<link rel="stylesheet" href="css/styles.css" />
<<link rel="stylesheet" href="css/blog.css">
<style>
.hide {
	display: none;
	visibility: hidden;
}
#button-gr {
	margin-top: 10px;
}
</style>
</head>

<body>
			<%@ include file="/WebContent/views/header_nav.jsp" %>
			<div class="page__title-area">
			<div class="container">
				<div class="page__title-container">
					<ul class="page__titles">
						<li><a href="/"> <svg>
                                    <use
										xlink:href="images/sprite.svg#icon-home"></use>
                                </svg>
						</a></li>
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
									<div class="order-section__header-title">Blog của tôi</div>
								</div>
							</div>
							<div id="blog" class="blog">
								<div class="btn-new">
									<a id="new" href="javascript:"><button>Tạo mới</button></a>
								</div>
								<div class="my-account-profile" style="display: block">
									<div class="row">
									<c:forEach var="blog" items="${blog }">
										<div class="col-4">
											<div class="card">
												<div name="image" id="image">
													<img alt="" src="${blog.getImg() }">
												</div>
												<div class="description">
													${blog.getContent() }
												</div>
												<div class="description">
													${blog.displayStt() }
												</div>
												<div class="action">
													<span class="count-like">1k</span>
													<svg width="1.3em" height="1.3em" viewBox="0 0 16 16"
														class="bi bi-heart" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															fill-rule="evenodd"
															d="M8 2.748l-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z" />
                                                      </svg>
													<svg width="1.3em" height="1.3em" viewBox="0 0 16 16"
														class="bi bi-three-dots-vertical" fill="currentColor"
														xmlns="http://www.w3.org/2000/svg">
                                                        <path
															fill-rule="evenodd"
															d="M9.5 13a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm0-5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
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
										<div class="purchase-empty-order__text">Bạn chưa có Blog
											nào</div>
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
										<h2 class="form-title" style="text-align: center;">Tạo bài viết</h2>
											<form action="addBlog" method="POST" name="form-example-1" id="form-example-1" enctype="multipart/form-data">
											    <div class="input-field">
											        <input type="text" name="content" id="description-1">
											        <label class="label" for="description-1">Nhận xét</label>
											    </div>
											
											    <div class="input-field custom-file">
											        <label class="active">Ảnh</label>
											        <input type="file" class="custom-file-input" id="myFile" name="addimg" style="padding-top: 1rem;">
											        <label class="custom-file-label" for="customFile">Chọn ảnh</label>
											    </div>
												<div class="button"
													style="text-align: center; margin-top: 10px">
													<button  id="luu" type="submit"
														class="btn btn-primary">Đăng bài</button>
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
</body>
</html>