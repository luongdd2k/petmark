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
  <link rel="stylesheet" type="text/css"    href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css"    href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" type="text/css"    href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
">
  <!-- Animate On Scroll -->
  <link rel="stylesheet" type="text/css"    href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->

  <title>Đơn hàng đã cọc</title>
  <base href="${pageContext.servletContext.contextPath}/">
   <link rel="stylesheet" type="text/css"    href="css/acc-in.css">
  <link rel="stylesheet" type="text/css"    href="css/styles.css" />
    <style>
        .order-content__item__price{
            width: 20%;
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
            <li class="page__title">Đơn đặt cọc thành công</li>
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
                        <div class="my-account-section__header">
                        <div class="my-account-section__header-left">
                        <div class="my-acount-section__header-title">Đơn đặt cọc thành công</div>
                        </div>
                        </div>
                        <div class="purchase-list-page__search-bar">
                            <svg width="19px" height="19px" viewBox="0 0 19 19">
                                <g id="Search-New" stroke-width="1" fill="none" fill-rule="evenodd">
                                    <g id="my-purchase-copy-27" transform="translate(-399.000000, -221.000000)" stroke-width="2">
                                        <g id="Group-32" transform="translate(400.000000, 222.000000)">
                                            <circle id="Oval-27" cx="7" cy="7" r="7"></circle>
                                                <path d="M12,12 L16.9799555,16.919354" id="Path-184" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                            <input autocomplete="off" placeholder="Tìm kiếm theo ID đơn hàng hoặc Tên Sản phẩm" value="">
                        </div>
                        <div class="purchase-list-page__checkout-list-card-container">
                            <div class="purchase-list-page__checkout-card-wrapper">
                                <!--Start div list-order-->
                                <div id="list-order" class="list_order ">
                                    <!--Start Item-->
                                    <c:forEach var="list" items="${list }">
                                    <div class="order-card__container">
                                        <div class="order-card__content-wrapper">
                                            <div class="order-card__content">
                                                <div class="order-content__container">
                                                    <div class="order-content__header">
                                                        <div class="order-content__header__seller">
                                                        </div>
                                                            <div class="order-content__header__flex-placeholder">

                                                            </div>
                                                            <div class="order-content-status">${list.getStatus() }</div>
                                                        </div>
                                                        <div class="order-content__item-list">
                                                            <a class="order-content__item-wrapper" >
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
                                                                                    <div class="shopee-image__content" style="background-image: url(${list.getPet().getImgs().get(0).getImgAvartar()});">
                                                                                        <div class="shopee-image__content--blur"> 

                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="order-content__item__detail-content">
                                                                                <div class="order-content__item__name">${list.getPet().getPetName() }</div>
                                                                                <div class="order-content__item__quantity">x <span class="so-luong">${list.getAmount()}</span></div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="order-content__item__price order-content__item__col order-content__item__col--small order-content__item__col--last">
                                                                        <div class="order-content__item__price-text">
                                                                            <div class="shopee-price--original">Giá: <span class="price-all">${list.getPet().displayPrice() }</span></div>
                                                                            <div class="shopee-price--primary">Đã cọc: <span class="price-depost">${list.display() }</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="shopee-border-bottom-dotted-circle__container">
                                                    <div class="shopee-border-bottom-dotted-circle__circle shopee-border-bottom-dotted-circle__circle--left"> 

                                                    </div>
                                                    <div class="shopee-border-bottom-dotted-circle__circle shopee-border-bottom-dotted-circle__circle--right"> 

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="order-card__buttons-container">
                                                <div class="purchase-card-buttons__wrapper">
                                                    <div class="purchase-card-buttons__total-payment">
                                                        <span class="purchase-card-buttons__label-price"> Số tiền cần thanh toán: </span>
                                                        <span class="purchase-card-buttons__total-price money"></span>
                                                    </div>
                                                    <div class="purchase-card-buttons__container">
                                                        <div class="purchase-card-buttons__text-info">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                    </c:forEach>
                                    <!--End Item-->
                                </div>
                                <!--End div list-order-->
                                <!--Start div none-order-->
                                <div id="none-order" class="none_order">
                                    <div class="purchase-list-page__empty-page-wrapper">
                                        <div class="purchase-empty-order__container">
                                            <div class="purchase-empty-order__icon"> </div>
                                            <div class="purchase-empty-order__text"> Chưa có đơn đặt cọc nào </div>
                                            <div class="purchase-empty-order__text"> 
                                              <svg class="svg-icon shopee-svg-icon user-page-sidebar-icon" viewBox="0 0 20 20">
                                                <path d="M3.24,7.51c-0.146,0.142-0.146,0.381,0,0.523l5.199,5.193c0.234,0.238,0.633,0.064,0.633-0.262v-2.634c0.105-0.007,0.212-0.011,0.321-0.011c2.373,0,4.302,1.91,4.302,4.258c0,0.957-0.33,1.809-1.008,2.602c-0.259,0.307,0.084,0.762,0.451,0.572c2.336-1.195,3.73-3.408,3.73-5.924c0-3.741-3.103-6.783-6.916-6.783c-0.307,0-0.615,0.028-0.881,0.063V2.575c0-0.327-0.398-0.5-0.633-0.261L3.24,7.51 M4.027,7.771l4.301-4.3v2.073c0,0.232,0.21,0.409,0.441,0.366c0.298-0.056,0.746-0.123,1.184-0.123c3.402,0,6.172,2.709,6.172,6.041c0,1.695-0.718,3.24-1.979,4.352c0.193-0.51,0.293-1.045,0.293-1.602c0-2.76-2.266-5-5.046-5c-0.256,0-0.528,0.018-0.747,0.05C8.465,9.653,8.328,9.81,8.328,9.995v2.074L4.027,7.771z"></path>
                                              </svg>
                                              <a href="index">Mua sắm ngay</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End div none-order-->
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
    <script src="js/client/aside-order.js"></script>
  <script>
      count();
      function count(){
          let price = document.getElementsByClassName("price-all");
          let sl = document.getElementsByClassName("so-luong");
          let deposit = document.getElementsByClassName("price-depost");
          let total = document.getElementsByClassName("money");
          for (let i=0; i<price.length; i++){
              console.log(price[i].innerHTML);
              console.log(sl[i].innerHTML);
              let priceTo = parseInt(price[i].innerHTML) * parseInt(sl[i].innerHTML);
              price[i].innerHTML = priceTo;

              let totalMo = parseInt(price[i].innerHTML) -parseInt(deposit[i].innerHTML) ;
              total[i].innerHTML = totalMo;
          }
      }
      fomartNumber();
      function fomartNumber(){
          let price = document.getElementsByClassName("price-all");
          let deposit = document.getElementsByClassName("price-depost");
          let sl = document.getElementsByClassName("so-luong");
          let total = document.getElementsByClassName("money");
          for (let i=0; i<price.length; i++){
              console.log(price[i].innerHTML);
              console.log(sl[i].innerHTML);
              console.log(deposit[i].innerHTML);
               let priceF = price[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
              price[i].innerHTML = priceF + " đ";
              let depositF = deposit[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
              deposit[i].innerHTML = depositF+" đ";
              let totalF = total[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
              total[i].innerHTML = totalF+" đ";
          }
      }
      $(function () {
          let tt = document.getElementById("atm");
          console.log(tt.value);
          if(tt.value == "Thành công"){
              swal({
                  title: "Đặt hàng thành công!",
                  icon: "success",
              });
          }else if(tt.value == "Thất bại"){
              swal({
                  title: "Đặt hàng thất bại!",
                  icon: "danger",
              });
          }
      });
  </script>
</body>

</html>
