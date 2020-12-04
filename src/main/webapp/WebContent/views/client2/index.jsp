<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/styles.css" />

  <title>Pet Mart | Cửa hàng thú cưng và phụ kiện cho thú cưng</title>
  <base href="${pageContext.servletContext.contextPath}/">
</head>

<body>
<%@ include file="/WebContent/views/header_nav.jsp" %>
    <!-- Hero -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active" data-interval="3000">
		      <img src="https://petsily.vn/wp-content/uploads/2019/10/banner-petsily.jpg" class="d-block w-100" alt="Banner 1">
		    </div>
		    <div class="carousel-item" data-interval="3000">
		      <img src="https://bizweb.dktcdn.net/100/047/359/themes/66510/assets/women_banner.png?1543757106135" class="d-block w-100" alt="Banner 2">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
  <!-- End Hero -->

  <!-- Main -->
  <main id="main">
    <div class="container">
      <!-- Collection -->
      <section id="collection" class="section collection">
        <div class="collection__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_02" src="./images/corgi.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span></span>
                <h1>CORGI</h1>
                <a href="#shop">SHOP NOW</a>
              </div>
            </div>
          </div>
          <div class="collection__box">
            <div class="img__container">
              <img class="collection_01" src="./images/thuc-an.png" alt="">
            </div>
            <div class="collection__content">
              <div class="collection__data">
                <span></span>
                <h1>GANADOR</h1>
                <a href="javascript:">SHOP NOW</a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Latest Products -->
      <section class="section latest__products" id="latest">
        <div class="title__container">
          <div class="section__title active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Tất cả phụ kiện</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">

                <c:forEach var="listAcc" items="${listAcc }">
                <li class="glide__slide" style="margin-bottom: 24px;width: 262.5px;">
                  <div class="product">
                    <div class="product__header">
                      <img style="border-radius: 10px;" src="${listAcc.getImgs().get(0).getImgAvartar() }" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>${listAcc.getName() }</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div  class="product__price">
                        <h4 class="price">${listAcc.getDisplayDeposit() }</h4>
                      </div>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="acc-detail/${listAcc.getId() }">
                          <svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                </c:forEach>
              </ul>
            </div>

            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </section>

      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" data-id="All Products">
                <span class="dot"></span>
                <h1 class="primary__title">Tất cả thú cưng</h1>
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Trending Products">
                <span class="dot"></span>
                <h1 class="primary__title">Thú cưng hot</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Special Products">
                <span class="dot"></span>
                <h1 class="primary__title">Thú cưng đặc biệt</h1>
              </div>
            </div>
          </div>
        </div>
        <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center">
          	   <c:forEach var="list" items="${list }">
                  <div class="product">
                    <div class="product__header">
                      <img style="border-radius: 10px;"  src="${list.getImgs().get(0).getImgAvartar() }" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>${list.getPetName() }</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4 class="price">${list.getDisplayPrice(1) }</h4>
                      </div>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="pet-detail/${list.getId() }">
                          <svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </c:forEach>
          </div>
        </div>
    </section>

      <!-- Facility Section -->
      <%@ include file="/WebContent/views/section-facility.jsp" %>
   

      <!-- Testimonial Section -->
      <section class="section testimonial" id="testimonial">
      <div class="testimonial__container">
        <div class="glide" id="glide_4">
          <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="images/profile1.jpg" alt="profile">
                  </div>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.ipsum dolor sit amet consectetur adipisicing
                    elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.</p>
                  <div class="client__info">
                    <h3>John Smith</h3>
                    <span>Founder at Apple</span>
                  </div>
                </div>
              </li>
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="images/profile2.jpg" alt="profile">
                  </div>
                  <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic nesciunt tempore
                    quibusdam consequatur
                    eligendi unde officia ex quae.ipsum dolor sit amet consectetur adipisicing elit. Recusandae fuga hic
                    nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.adipisicing elit. Recusandae fuga hic
                    nesciunt tempore
                    quibusdam consequatur eligendi unde officia ex quae.</p>
                  <div class="client__info">
                    <h3>John Smith</h3>
                    <span>Founder at Apple</span>
                  </div>
                </div>
              </li>
            </ul>
          </div>

          <div class="glide__bullets" data-glide-el="controls[nav]">
            <button class="glide__bullet" data-glide-dir="=0"></button>
            <button class="glide__bullet" data-glide-dir="=1"></button>
          </div>
        </div>
      </div>
    </section>

     <!--New Section  -->
    <section class="section news" id="news">
      <div class="container">
        <div class="title__container">
          <div class="section__titles">
            <div class="section__title active">
              <span class="dot"></span>
              <h1 class="primary__title">Chia sẻ từ khách hàng</h1>
            </div>
          </div>
        </div>
<%--        <div class="news__container">--%>
<%--          <div class="glide" id="glide_5">--%>
<%--            <div class="glide__track" data-glide-el="track">--%>
<%--              <ul class="glide__slides">--%>
<%--                <c:forEach var="blog" items="${blog }">--%>
<%--                  <li class="glide__slide">--%>
<%--                  <div class="new__card">--%>
<%--                    <div class="card__header">--%>
<%--                      <img src="${blog.getImg() }" alt="">--%>
<%--                    </div>--%>
<%--                    <div class="card__footer">--%>
<%--                      <h3>${blog.getContent() }</h3>--%>
<%--                      <span>By <strong>${blog.getAccount().getUsername()}</strong></span>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </li>--%>
<%--                </c:forEach>--%>
<%--              </ul>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
      </div>
    </section>

      <!-- NewsLetter -->
      <section class="section newsletter" id="contact">
      <div class="container">
        <div class="newsletter__content">
          <div class="newsletter__data">
            <h3>ĐĂNG KÝ ĐỂ THEO DÕI THÊM VỀ CHÚNG TÔI</h3>
            <p>Một câu ngắn mô tả những gì ai đó sẽ nhận được bằng cách đăng ký</p>
          </div>
          <form action="#">
            <input type="email" placeholder="Điền Email của bạn vào đây" class="newsletter__email">
            <a class="newsletter__link" href="javascript:">Đăng ký</a>
          </form>
        </div>
      </div>
    </section>
    </div>
  </main>

  <!-- End Main -->

<!-- Footer -->
<%@ include file="/WebContent/views/footer_client.jsp" %>
<!-- End Footer -->


  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

  <!-- Animate On Scroll -->
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="js/index.js"></script>
  <script src="js/slider.js"></script>
  <script src="js/custom.js"></script>
  <script src="js/sweat-alert.js"></script>

</body>

</html>