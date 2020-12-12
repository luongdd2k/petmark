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

  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <!-- Animate On Scroll -->
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->

  <title>{Tên của đơn hàng thay vào đây nhá}</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <link rel="stylesheet" href="css/acc-in.css">
    <link rel="stylesheet" href="css/progressbar.css">
  <link rel="stylesheet" href="css/styles.css" />
    <style>
        .hide{
            display: none;
            visibility: hidden;
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
                  <use xlink:href="./images/sprite.svg#icon-home"></use>
                </svg>
              </a>
            </li>
            <li class="page__title">Chi tiết đơn hàng</li>
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
                                <div class="order-section__header-title">Chi tiết đơn hàng</div>
                            </div>
                        </div>
                        <div class="purchase-list-page__checkout-list-card-container">
                            <div class="order-detail-page__delivery__container-wrapper">
                                <div class="shopee-border-delivery"></div>
                                <div class="order-detail-page__delivery__container">
                                    <div class="order-detail-page__delivery__header">
                                        <div class="order-detail-page__delivery__header__title">Địa chỉ nhận hàng</div>
                                    </div>
                                    <div class="order-detail-page__delivery__content">
                                        <div class="order-detail-page__delivery__shipping-address__container">
                                            <div class="order-detail-page__delivery__shipping-address">
                                                <div class="order-detail-page__delivery__shipping-address__shipping-name">${orderweb.getConsignee() }</div>
                                                <div class="order-detail-page__delivery__shipping-address__detail">
                                                    <span>${orderweb.getConsigneePhone() }</span>
                                                    <br>
                                                    ${orderweb.getDeliveryAddress() }
                                                </div>
                                            </div>
                                        </div>
                                        <div class="_2nxwAx">
                                                <ul class="progressbar">
                                                    <li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>
                                                    <li class="li-js active"  data-status="Chờ xác nhận">Chờ xác nhận</li>
                                                    <li class="li-js"  data-status="Chờ giao hàng">Chờ giao hàng</li>
                                                    <li class="li-js"  data-status="Đang giao hàng">Đang giao hàng</li>
                                                    <li class="li-js"  data-status="Đã giao">Đã giao</li>
                                                </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="shopee-border-delivery"></div>
                            </div>
                        </div>
                        <div class="order-detail-page__main-content-wrapper">
                            <div>
                                <div class="_1zdufp">
                                    <div class="_3XTRw7">
                                        <div class="_1Mug_K">
                                            <input type="hidden" id="status" value="${orderweb.getDeliveryStatus() }">
                                            <div class="_31SLfG"> </div>
                                            <div class="_1WDRrw">Mã đơn hàng: ${orderweb.getId() }</div>
                                        </div>
                                    </div>
                                    <c:forEach var="order" items="${order }">
                                    <div class="_2XBFNq">
                                      <div class="order-content__container">
                                        <div class="order-content__item-list">
                                          <div class="order-content__item-wrapper">
                                            <div class="order-content__item order-content__item--last">
                                              <div class="order-content__item__col order-content__item__detail">
                                                <div class="order-content__item__product">
                                                  <div class="order-content__item__image">
                                                    <div class="shopee-image__wrapper">
                                                      <div class="shopee-image__place-holder">
                                                        <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-loading-image">
                                                          <g>
                                                            <rect fill="none" height="8" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" width="10" x="1" y="4.5"></rect>
                                                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="1" x2="11" y1="6.5" y2="6.5"></line>
                                                            <rect fill="none" height="3" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" width="3" x="11" y="6.5"></rect>
                                                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="1" x2="11" y1="14.5" y2="14.5"></line>
                                                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="6" x2="6" y1=".5" y2="3"></line>
                                                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="3.5" x2="3.5" y1="1" y2="3"></line>
                                                            <line fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" x1="8.5" x2="8.5" y1="1" y2="3"></line>
                                                          </g>
                                                        </svg>
                                                      </div>
                                                      <div class="shopee-image__content" style="background-image: url(${order.getAccessories().getImgs().get(0).getImgAvartar() });">
                                                        <div class="shopee-image__content--blur"> </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                  <div class="order-content__item__detail-content">
                                                    <div class="order-content__item__name">${order.getAccessories().getName() }</div>
                                                    <div id="so_luong" class="order-content__item__quantity">x ${order.getAmount() }</div>

                                                      <div id="thay-doi" class="order-content__item__quantity">
                                                          <a href="javascript:" onclick="showDoi()">Thay đổi</a>
                                                      </div>
                                                      <div id="so_luong_c" class="order-content__item__quantity hide" style="display: flex;">
                                                          <input type="number" class="form-control" max="10" min="1" id="so-luong"value="1" style="margin-right: 10px;">
                                                          <button class="btn btn-outline-success" type="button" onclick="anDoi()">
                                                              Lưu
                                                          </button>
                                                      </div>
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="order-content__item__price order-content__item__col order-content__item__col--small order-content__item__col--last">
                                                <div class="order-content__item__price-text">
<%--                                                  <div class="shopee-price--original">50.000 đ</div>--%>
                                                  <div class="shopee-price--primary">1.000 đ</div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    </c:forEach>
                                    <div class="payment-detail__container _1R4a4Y">
                                      <div class="payment-detail__item payment-detail__item--last">
                                        <div class="payment-detail__item__description">Tổng số tiền</div>
                                        <div class="payment-detail__item__value payment-detail__item__value--highlighted">
                                          <div class="payment-detail__item__value-text"><div>
                                            <div>₫1.000</div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                            </div>
                            <div class="shopee-border-bottom-dotted-circle__container">
                                <div class="shopee-border-bottom-dotted-circle__circle shopee-border-bottom-dotted-circle__circle--left"> </div>
                                <div class="shopee-border-bottom-dotted-circle__circle shopee-border-bottom-dotted-circle__circle--right"> </div>
                            </div>
                            <div class="payment-detail__container">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>


  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="./js/jquery-3.5.1.min.js"></script>

  <!-- Custom JavaScript -->
  <script src="./js/index.js"></script>
  <script src="./js/slider.js"></script>
  <script src="./js/custom.js"></script>   
  <script src="./js/all-order.js"></script> 
  <script src="./js/sweat-alert.js"></script>
  <script>
      a();
      function a(){
          let stt = document.getElementById("status").value;
          let lit = document.getElementsByClassName("li-js");
          for(let i=0; i<lit.length;i++) {
              console.log(lit[i].innerText);
              if(stt =="Chưa xét duyệt"){

              }
          }
      }

      function showDoi(){
          let slP = document.getElementById("so_luong");
          let a = document.getElementById("thay-doi");
          let slC = document.getElementById("so_luong_c");
          slP.classList.add("hide");
          a.classList.add("hide");
          slC.classList.remove("hide");
      }
      function anDoi(){
          let slP = document.getElementById("so_luong");
          let a = document.getElementById("thay-doi");
          let slC = document.getElementById("so_luong_c");
          slP.classList.remove("hide");
          a.classList.remove("hide");
          slC.classList.add("hide");
      }

    
  </script>
</body>

</html>