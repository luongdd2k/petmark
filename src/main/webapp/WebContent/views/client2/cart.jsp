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
                                        <a href="javascript:">
                                            <img src="${card.getAccessories().getImgs().get(0).getImgAvartar() }" alt="">
                                        </a>
                                    </td>
                                    <td class="product__name">
                                        <a href="javascript:">${card.getAccessories().getName() } </a>
                                    </td>
                                    <td class="product__price">
                                        <div class="price">
                                            <span class="new__price">${card.getAccessories().getDisplayPrice(1)}</span>
                                        </div>
                                    </td>
                                    <td class="product__quantity">
                                        <div class="input-counter">
                                            <div>
                                                <span class="minus-btn">
                                                    <svg>
                                                        <use xlink:href="images/sprite.svg#icon-minus"></use>
                                                    </svg>
                                                </span>
                                                <input type="text" min="1" value="${card.getAmount() }" max="10" class="counter-btn">
                                                <span class="plus-btn">
                                                    <svg>
                                                        <use xlink:href="images/sprite.svg#icon-plus"></use>
                                                    </svg>
                                                </span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="product__subtotal">
                                        <div class="price">
                                            <span class="new__price">${card.getAccessories().price} * ${card.amount }</span>
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
                                <span class="new__price">$250.99</span>
                            </li>
                            <li>
                                Thành tiền
                                <span class="new__price">$250.99</span>
                            </li>
                        </ul>
                        <div class="btn-payment">
                          <a href="showcheck-out">TIẾN HÀNH THANH TOÁN</a>
                        </div>
                    </div>
                </form>
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
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>

    <!-- Custom JavaScript -->
    
    <script src="js/index.js"></script>
    <script src="js/slider.js"></script>
    <script>
      </script>
</body>

</html>