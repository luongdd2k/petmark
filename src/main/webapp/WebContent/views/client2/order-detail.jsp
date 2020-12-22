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

  <title>{Tên của đơn hàng thay vào đây nhá}</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <link rel="stylesheet" type="text/css"    href="css/acc-in.css">
    <link rel="stylesheet" type="text/css"    href="css/progressbar.css">
  <link rel="stylesheet" type="text/css"    href="css/styles.css" />
    <style>
        .hide{
            display: none;
            visibility: hidden;
        }
        .button-huy{
            border-color: red;
            color: red;
        }
        .button-huy:hover{
            background-color: red;
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
                                                    <p style="margin-top: 10px;">${orderweb.getDeliveryAddress() }</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="_2nxwAx" style="width: 100%;font-size: 13px;">
                                                <ul class="progressbar" id="progressbar">
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
                                    <div class="_2XBFNq" style="    margin-bottom: 10px;">
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
                                                  </div>
                                                </div>
                                              </div>
                                              <div class="order-content__item__price order-content__item__col order-content__item__col--small order-content__item__col--last">
                                                <div class="order-content__item__price-text">
                                                  <div class="shopee-price--primary">${orderweb.displayPrice()}</div>
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
                                          <div class="purchase-card-buttons__show-button-wrapper">
                                              <button data-toggle="modal" data-target="#staticBackdrop" onclick="abc(${orderweb.getId() })"
                                                      class="shopee-button-outline shopee-button-outline--fill shopee-button-outline--primary button-huy">
                                                  <span class="purchase-card-buttons__button-content"> Hủy đơn hàng này </span>
                                              </button>
                                          </div>
                                        <div class="payment-detail__item__description">Tổng số tiền</div>
                                        <div class="payment-detail__item__value payment-detail__item__value--highlighted">
                                          <div class="payment-detail__item__value-text"><div>
                                            <div class="total-money">${orderweb.displayPrice()}</div>
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
<!-- Modal -->
<div class="modal fade " id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="staticBackdropLabel">Bạn có chắc chắn muốn hủy đơn này không?</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="id-order" name="id" value="">
                <p id="text-order"></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-danger">Đồng ý</button>
            </div>
        </div>
    </div>
</div>

  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>

  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>


  <!-- Animate On Scroll -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
          let pro = document.getElementById("progressbar");
          for(let i=0; i<lit.length;i++) {
              if(stt =="Chưa xét duyệt"){
                  pro.innerHTML = "";
                  pro.innerHTML =   '<li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>'+
                      '<li class="li-js active"  data-status="Chờ xác nhận">Chờ xác nhận</li>'+
                      '<li class="li-js"  data-status="Chờ giao hàng">Chờ giao hàng</li>'+
                      '<li class="li-js"  data-status="Đang giao hàng">Đang giao hàng</li>'+
                      '<li class="li-js"  data-status="Đã giao">Đã giao</li>';
              }else if(stt =="Chờ giao hàng"){
                  pro.innerHTML = "";
                  pro.innerHTML =   '<li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>'+
                      '<li class="li-js complete"  data-status="Chờ xác nhận">Chờ xác nhận</li>'+
                      '<li class="li-js active"  data-status="Chờ giao hàng">Chờ giao hàng</li>'+
                      '<li class="li-js"  data-status="Đang giao hàng">Đang giao hàng</li>'+
                      '<li class="li-js"  data-status="Đã giao">Đã giao</li>';
              }else if(stt =="Đang giao hàng"){
                  pro.innerHTML = "";
                  pro.innerHTML =   '<li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>'+
                      '<li class="li-js complete"  data-status="Chờ xác nhận">Chờ xác nhận</li>'+
                      '<li class="li-js complete"  data-status="Chờ giao hàng">Chờ giao hàng</li>'+
                      '<li class="li-js active"  data-status="Đang giao hàng">Đang giao hàng</li>'+
                      '<li class="li-js"  data-status="Đã giao">Đã giao</li>';
              }else if(stt =="Giao hàng thành công"){
                  pro.innerHTML = "";
                  pro.innerHTML =   '<li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>'+
                                    '<li class="li-js complete"  data-status="Chờ xác nhận">Chờ xác nhận</li>'+
                                    '<li class="li-js complete"  data-status="Chờ giao hàng">Chờ giao hàng</li>'+
                                    '<li class="li-js complete"  data-status="Đang giao hàng">Đang giao hàng</li>'+
                                    '<li class="li-js active"  data-status="Đã giao">Đã giao</li>';
              }else if(stt=="Đã hủy"){
                  pro.innerHTML = "";
                  pro.innerHTML =   '<li class="li-js complete" data-status="Đặt hàng thành công">Đặt hàng thành công</li>'+
                      '<li class="li-js complete"  data-status="Chờ xác nhận">Chờ xác nhận</li>'+
                      '<li class="li-js complete"  data-status="Chờ giao hàng">Chờ giao hàng</li>'+
                      '<li class="li-js complete"  data-status="Đang giao hàng">Đang giao hàng</li>'+
                      '<li class="li-js active"  data-status="Đã giao">Đã hủy</li>';
              }
          }
      }
      fomartNumber();
      function fomartNumber(){
          let money = document.getElementsByClassName("shopee-price--primary");
          let total = document.getElementsByClassName("total-money");
          for (let i=0; i<money.length; i++){
              let moneyF = money[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
              money[i].innerHTML = moneyF + " đ";
              let totalF = total[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
              total[i].innerHTML = totalF+" đ";
          }
      }
      function abc(id){
          let i = document.getElementById("id-order");
          i.value = id;
          let name = document.getElementsByClassName("order-content__item__name");
          let nameModel = document.getElementById("text-order");
          for (let i=0;i<name.length;i++){
            nameModel.innerHTML= "Bạn có muốn hủy đơn hàng "+ name[i].innerHTML +" này không??"
          }
      }
  </script>
</body>

</html>
