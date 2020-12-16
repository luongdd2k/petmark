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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css" />

    <!-- Animate On Scroll -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">

    <title>Pet Mart | Giỏ hàng</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <!-- Custom StyleSheet -->
    <link rel="stylesheet" href="css/styles.css" />
    <link rel="stylesheet" href="css/cart.css">
    <style>
        .buttons_added {
            opacity:1;
            display:inline-block;
            display:-ms-inline-flexbox;
            display:inline-flex;
            white-space:nowrap;
            vertical-align:top;
            margin-left: 10px;
        }
        .is-form {
            overflow:hidden;
            position:relative;
            background-color:#f9f9f9;
            height:4rem;
            width:4rem;
            padding:0;
            text-shadow:1px 1px 1px #fff;
            border:1px solid #ddd;
            font-size: 2rem ;
        }
        .is-form:focus,.input-text:focus {
            outline:none;
        }
        .is-form.minus {
            border-radius:4px 0 0 4px;
        }
        .is-form.plus {
            border-radius:0 4px 4px 0;
        }
        .input-qty {
            background-color:#fff;
            height:4rem;
            width: 4rem;
            text-align:center;
            font-size:1.5rem;
            display:inline-block;
            vertical-align:top;
            margin:0;
            border-top:1px solid #ddd;
            border-bottom:1px solid #ddd;
            border-left:0;
            border-right:0;
            padding:0;
        }
        .input-qty::-webkit-outer-spin-button,.input-qty::-webkit-inner-spin-button {
            -webkit-appearance:none;
            margin:0;
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
                        <li class="page__title">Giỏ hàng</li>
                    </ul>
                </div>
            </div>
        </div>

    <main id="main">
      <section class="section cart__area">
        <div class="container">
            <div class="responsive__cart-area">
                <form class="cart__form">
                    <div class="cart__table table-responsive">
                        <table width="100%" class="table">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Tên</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                </tr>
                            </thead>
                            <c:forEach var="card" items="${card }">
                            <tbody>
                                <tr>
                                    <td class="product__thumbnail">
                                    <input type="hidden" id="id" name="id" value="${card.getId() }">
                                        <a href="javascript:">
                                            <img src="${card.getAccessories().getImgs().get(0).getImgAvartar() }" alt="">
                                        </a>
                                    </td>
                                    <td class="product__name">
                                        <a href="javascript:">${card.getAccessories().getName() } </a>
                                    </td>
                                    <td class="product__price">
                                        <div class="price">
                                            <span class="new__price product-price">${card.getAccessories().displayPrice()}</span>
                                        </div>
                                    </td>
                                    <td class="product__quantity">
                                        <div class="input-counter">
                                            <div>
                                                <div class="buttons_added">
                                                    <input class="minus is-form" type="button" value="-">
                                                    <input id="so-luong"  aria-label="quantity" class="input-qty" max="${card.getAccessories().getAmount()}" min="1" name="soLuong" type="number" value="${card.getAmount() }">
                                                    <input class="plus is-form" type="button" value="+">
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product__subtotal">
                                        <div class="price">
                                            <span class="new__price total-price"> đ</span>
                                        </div>
                                        <a href="delete/${card.getId() }" class="remove__cart-item">
                                            <svg>
                                                <use xlink:href="images/sprite.svg#icon-trash"></use>
                                            </svg>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                            </c:forEach>
                        </table>
                    </div>

                    <div class="cart-btns">
                        <div class="continue__shopping">
                            <a href="">Tiếp tục mua hàng</a>
                        </div>
                    </div>

                    <div class="cart__totals">
                        <h3>Thanh toán</h3>
                        <ul>
                            <li>
                                Tạm tính
                                <span class="new__price" id="tam-tinh"></span>
                            </li>
                            <li>
                                Thành tiền
                                <span class="new__price" id="thanh-tien"></span>
                            </li>
                        </ul>
                        <div class="btn-payment">
                          <a href="showcheck-out">TIẾN HÀNH THANH TOÁN</a>
                        </div>
                    </div>
                </form>
            </div>

            <div class="responsive__cart-area">

            </div>
        </div>
    </section>

        <!-- Facility Section -->
        <%@ include file="/WebContent/views/section-facility.jsp" %>
    </main>

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
<%--    <script src="node_modules/@glidejs/glide/dist/glide.min.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Animate On Scroll -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- import JavaScript -->
<%--    <script src="https://unpkg.com/element-ui/lib/index.js"></script>--%>

    <!-- Custom JavaScript -->
    
    <script src="js/index.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/slider.js"></script>
    <script>
        $('input.input-qty').each(function() {
            var $this = $(this),
                qty = $this.parent().find('.is-form'),
                min = Number($this.attr('min')),
                max = Number($this.attr('max'))
            if (min == 0) {
                var d = 0
            } else d = min
            $(qty).on('click', function() {
                if ($(this).hasClass('minus')) {
                    if (d > min) d += -1
                } else if ($(this).hasClass('plus')) {
                    var x = Number($this.val()) + 1
                    if (x <= max) d += 1
                }
                $this.attr('value', d).val(d)
            })
        });
        tinhTong();
        function tinhTong(){
            let tien = document.getElementsByClassName("product-price");
            let amount = document.getElementsByClassName("input-qty");
            let tong =  document.getElementsByClassName("total-price");
            for (let i = 0 ; i<tien.length; i++){
                let tong1 = parseInt(tien[i].innerHTML) * parseInt(amount[i].value);
                tong[i].innerHTML = tong1 +" đ";
            }
        }
        thanhTien();
        function thanhTien(){
            let tong2 = document.getElementsByClassName("total-price");
            let tam = document.getElementById("tam-tinh");
            let thanh = document.getElementById("thanh-tien");
            let sum =0;
            for (let i =0; i<tong2.length; i++){
                sum = parseInt(sum) + parseInt(tong2[i].innerHTML);
                console.log(sum);
                tam.innerHTML = sum +" đ";
                thanh.innerHTML = sum + " đ";
            }
        }
        formartN();
        function formartN(){
            let tien = document.getElementsByClassName("product-price");
            let tong =  document.getElementsByClassName("total-price");
            let tam = document.getElementById("tam-tinh");
            let thanh = document.getElementById("thanh-tien");
            for (let i=0; i<tien.length; i++){
                let tien1 = tien[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                tien[i].innerHTML = tien1;
                let tong1 = tong[i].innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                tong[i].innerHTML = tong1;
                let tam1 = tam.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                tam.innerHTML = tam1;
                let thanh1 = thanh.innerHTML.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
                thanh.innerHTML = thanh1;
            }
        }
        // replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
    </script>
</body>

</html>