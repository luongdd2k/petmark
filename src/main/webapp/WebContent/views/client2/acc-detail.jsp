<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <!-- Boostrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <!-- Animate On Scroll -->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->


  <title>Pet Mart | Tên thú cưng, phụ kiện được xem chi tiết</title>
  <base href="${pageContext.servletContext.contextPath}/">
   <link rel="stylesheet" href="css/product.css">
  <link rel="stylesheet" href="css/styles.css" />
</head>
<!--    -->
<body>
  <%@ include file="/WebContent/views/header_nav.jsp" %>
  <div class="page__title-area">
      <div class="container">
        <div class="page__title-container">
          <ul class="page__titles">
            <li>
              <a href="/">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-home"></use>
                </svg>
              </a>
            </li>
            <li class="page__title">${acc.getName() }</li>
          </ul>
        </div>
      </div>
    </div>

  <main id="main">
    <div class="container">
      <!-- Products Details -->
      <section class="section product-details__section">
      <form action="add-card/${acc.getId() }" method="post">
        <div class="product-detail__container">
          <div class="product-detail__left">
            <div class="details__container--left">
              <div class="product__pictures">
                <div class="pictures__container">
                  <img onclick="getUrl(this.src)" class="picture" src="${imgacc.getImg1() }"  id="pic1" />
                </div>
                <div class="pictures__container">
                  <img onclick="getUrl(this.src)" class="picture" src="${imgacc.getImg2() }" id="pic2" />
                </div>
                <div class="pictures__container">
                  <img onclick="getUrl(this.src)" class="picture" src="${imgacc.getImg3() }" id="pic3" />
                </div>
                <div class="pictures__container">
                  <img onclick="getUrl(this.src)" class="picture" src="${imgacc.getImg1() }" id="pic4" />
                </div>
                <div class="pictures__container">
                  <img onclick="getUrl(this.src)" class="picture" src="${imgacc.getImg3() }" id="pic5" />
                </div>
              </div>
              <div class="product__picture" id="product__picture">
                <!-- <div class="rect" id="rect"></div> -->
                <div class="picture__container">
                  <img src="${imgacc.getImgAvartar() }" id="pic" />
                </div>
              </div>
              <div class="zoom" id="zoom"></div>
            </div>

            <div id="btn-action" class="product-details__btn product-details__btn_accessori">
              <button class="add" type="submit" >
                <span>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-cart-plus"></use>
                  </svg>
                </span> THÊM VÀO GIỎ HÀNG
              </button>
              <button class="buy" onclick="form.action='show-buy-now/${acc.getId()}';">
                <span>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
                  </svg>
                </span>
                MUA NGAY
              </button>
            </div>
            <div id="btn-modal" class="product-details__btn product-details__btn_accessori">
              <button class="buy" type="button" data-toggle="modal" data-target="#myModal">
                <span>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
                  </svg>
                </span>
                MUA NGAY
              </button>
            </div>
          </div>

          <div id="phu-kien" class="product-detail__right">
            <div class="product-detail__content">
              <h3>${acc.getName() }</h3>
              <div class="price">
                <span class="new__price" id="price">${acc.getDisplayPrice(1)}</span>
              </div>
              <div class="product__review">
                <div class="rating1">
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                  </svg>
                </div>
                <a href="#description"  class="rating__quatity">3 nhận xét</a>
              </div>
              <div class="product__info-container">
                <ul class="product__info">
                  <li class="select">
                    <div class="select__option">
                      <label for="colors">Màu : </label>
                      <select name="colors" id="colors" class="select-box">
                      <c:forEach var="colacc" items="${colacc }">
                        <option value="${colacc.getId() }">${colacc.getColorAccessories() }</option>
                        </c:forEach>
                      </select>
                    </div>
                    <div class="select__option">
                      <label for="size">Kích cỡ: </label>
                      <select name="size" id="size" class="select-box">
                      <c:forEach var="size" items="${size }">
                        <option value="${size.getId() }">${size.getSizeName() }</option>
                      </c:forEach>
                      </select>
                    </div>
                  </li>
                  <li>
                    <div class="input-counter">
                      <span>Số lượng: </span>
                      <div class="buttons_added">
                        <input class="minus is-form" type="button" value="-">
                        <input id="so-luong"  aria-label="quantity" class="input-qty" max="${acc.getAmount() }" min="1" name="soLuong" type="number" value="1" onchange="maxAmount(); changePrice()">
                        <input class="plus is-form" type="button" value="+">
                      </div>
                    </div>
                  </li>

                  <li>
                    <span>Số tiền :</span>
                    <a href="javascript:" class="new__price"><span id="price-a">${acc.getDisplayPrice(1) }</span></a>
                  </li>
                  <li>
                    <span>Hãng :</span>
                    <a href="javascript:">${acc.getCategory().getName() }</a>
                  </li>
                  <li>
                    <span>Loại sản phẩm :</span>
                    <a href="javascript:">${acc.getCategory().getName() }</a>
                  </li>
                  <li>
                    <span>Trạng thái :</span>
                    <a href="javascript:" class="in-stock">${acc.getStatus() }  (${acc.getAmount() } sản phẩm)</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
</form>

        <div class="product-detail__bottom">
          <div class="title__container tabs">

            <div class="section__titles category__titles ">
              <div class="section__title detail-btn active" data-id="description">
                <span class="dot"></span>
                <h1 class="primary__title">Mô tả sản phẩm</h1>
              </div>
            </div>
          </div>

          <div class="detail__content">
            <div class="content active" id="description">
              <h2>Chi tiết phụ kiện</h2>
              <p>${acc.getDescription() }</p>
              <form action="add-vote-acc" method="post">
              <h1>Nhận xét của khách hàng</h1>
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
                  <input type="hidden" name="username" value="${account.getUsername() }">
                  <input type="hidden" name="id" value="${acc.getId() }">
                  <button type="submit" class="btn btn-primary">Đánh giá</button>
                </div>
              </div>
              </form>
            </div>
          </div>
        </div>
      </section>

      <!-- Related Products -->
      <section class="section related__products">
        <div class="title__container">
          <div class="section__title filter-btn active">
            <span class=" dot"></span>
            <h1 class="primary__title">Sản phẩm liên quan</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_3">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">
                <c:forEach var="list" items="${list }">
                  <li class="glide__slide">
                    <div class="product">
                      <div class="product__header">
                        <a href="javascript:"><img src="${list.getImgs().get(0).getImgAvartar() }" alt="product"></a>
                      </div>
                      <div class="product__footer">
                        <h3>${list.getName() }</h3>
                        <div class="ratin1">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                          </svg>
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                          </svg>
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                          </svg>
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                          </svg>
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                          </svg>
                        </div>
                        <div class="product__price">
                          <h4 class="price-list">${list.getDisplayPrice(1) } </h4>
                        </div>
                      </div>
                      <ul>
                        <li>
                          <a data-tip="Quick View" data-place="left" href="acc-detail/${list.getId() }">
                            <svg>
                              <use xlink:href="./images/sprite.svg#icon-eye"></use>
                            </svg>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </li>
                </c:forEach>
              </ul>
            </div>
          </div>

            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
      </section>
    </div>
    <!-- Facility Section -->
    <%@ include file="/WebContent/views/section-facility.jsp" %>
  </main>

  <!-- Footer -->
  <%@ include file="/WebContent/views/footer_client.jsp" %>
  <!-- End Footer -->

  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>

  <!-- Modal noti-->
  <div class="modal fade " id="myModal" role="dialog">
    <div class="modal-dialog modal-sm modal-dialog-centered">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h2 class="modal-title" id="exampleModalLabel">Thông báo</h2>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p class="modal-body__text">
            Bạn cần <a href="showLogin">đăng nhập</a> để mua hàng!
          Hoặc bạn có thể cung cấp thông tin để chúng tôi có thể liên lạc với bạn
          </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
          <button type="button" class="btn btn-success" onclick="b()" data-dismiss="modal" data-toggle="modal" data-target="#myModalForm">Thông tin</button>
        </div>
      </div>
      <%--End modal content--%>
    </div>
  </div>
<%--  End modal--%>

  <!-- Modal form-->
  <div class="modal fade " id="myModalForm" role="dialog">
    <div class="modal-dialog modal-lg modal-dialog-centered">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h2 class="modal-title" id="exampleModalLabel1">Thông tin cá nhân</h2>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="buy-no-sign-in/${acc.getId() }" onsubmit="return validateForm()" method="post">
          <div class="modal-body">
            <input type="hidden" id="so-luong-form" name="soLuong" value="">
            <input type="hidden" id="mau-sac-form" name="colors" value="">
            <input type="hidden" id="size-form" name="size" value="">
            <div class="row">
              <div class="col-6">
                <div class="form-group">
                  <label for="name">Họ và tên</label>
                  <input type="text" class="form-control" id="name" name="ten" placeholder="Họ và tên">
                  <p id="error1" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                </div>
              </div>
              <div class="col-6">
                <div class="form-group">
                  <label for="phone">Số điện thoại</label>
                  <input type="tel" class="form-control" id="phone" name="sdt" placeholder="Số điện thoại">
                  <p id="error2" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                </div>
              </div>
              <div class="col-12">
                <div class="form-group">
                  <label for="phone">Email</label>
                  <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                  <p id="error3" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                </div>
              </div>
               <div class="col-4">
                 <div class="form-group">
                      <label for="city2">Tỉnh / Thành phố</label>
                      <select class="form-control" aria-label="Default select example" id="city2" onchange="city(this)">
                          <option value="none">Tỉnh/Thành phố</option>
                          <c:forEach var="tp" items="${tp }">
                              <option value="${tp.getMatp() }">${tp.getName() }</option>
                          </c:forEach>
                      </select>
                   <p id="error4" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                 </div>
		        </div>
		        <div class="col-4">
                  <div class="form-group">
                      <label for="district2">Quận / Huyện</label>
                      <select class="form-control" aria-label="Default select example" id="district2" onchange="district(this)">
                          <option value="none">Quận/Huyện</option>
                      </select>
                    <p id="error5" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                  </div>
		        </div>
		        <div class="col-4">
                  <div class="form-group">
                      <label for="village2">Xã / Phường / Thị trấn</label>
                      <select class="form-control" aria-label="Default select example" id="village2" onchange="village(this)">
                          <option value="none">Xã/Phường/Thị trấn</option>
                      </select>
                    <p id="error6" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                  </div>
		        </div>
              <div class="col-12">
                <div class="form-group">
                  <label for="address">Địa chỉ</label>
                  <textarea class="form-control" id="address" rows="2" name="address" placeholder="Địa chỉ nhận hàng"></textarea>
                  <p id="error7" style="color: red;font-weight: 400;font-size: 14px;" class="hide"></p>
                </div>
              </div>
               <div class="col-4" style="margin-top: 30px;">
		            <input type="hidden" class="form-control" id="city-id" name="matp" value="">
		            <input type="hidden" class="form-control" id="district-id" name="maqh" value="">
		            <input type="hidden" class="form-control" id="village-id" name="xaid" value="">
		        </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success">Đăng ký</button>
          </div>
        </form>
      </div>
      <%--End modal content--%>
    </div>
  </div>
  <%--  End modal--%>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="js/index.js"></script>
  <script src="js/client/acc-detail.js"></script>
  <script src="js/city.js"></script>
  <script src="js/slider.js"></script>
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>
