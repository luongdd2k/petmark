<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<<<<<<< HEAD
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Favicon -->
  <link rel="shortcut icon" href="./images-new/favicon.ico" type="image/x-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
=======
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap"
	rel="stylesheet" />

<!-- Carousel -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
">
<!-- Animate On Scroll -->
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

<<<<<<< HEAD
  <!-- Custom StyleSheet -->
  
  <link rel="stylesheet" href="css-new/product.css">
  <link rel="stylesheet" href="css-new/styles.css" />
=======
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5

<title>Pet Mart | Tên thú cưng, phụ kiện được xem chi tiết</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="css/product.css" />
<link rel="stylesheet" href="css/styles.css" />
</head>

<body>
<<<<<<< HEAD
  <header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <input type="hidden" id="usernameBE" value="" />  
        <input type="hidden" id="valuePetOrAccessori" value="cho" />  
        <div class="row header__top" >
          <div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
            <p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
          </div>
          <div id="row-login" class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
            <div class="header__actions">
              <a href="login.html">Đăng nhập</a>
              <a href="register.html">Đăng ký</a>
            </div>
          </div>
          <div id="row-logout" class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
            <div class="header__actions">
              <a href="" id="hello-name"></a>
              <a href="">Đăng xuất</a>
            </div>
          </div>
        </div>
        <nav class="nav">
          <div class="nav__hamburger">
            <svg>
              <use xlink:href="./images-new/sprite.svg#icon-menu"></use>
=======
	<header id="header" class="header">
		<div class="navigation">
			<div class="container">
				<input type="hidden" id="usernameBE" value="${user }" /> <input
					type="hidden" id="valuePetOrAccessori" value="${loai }" />
				<div class="row header__top">
					<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
						<p>206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội</p>
					</div>
					<div id="row-login" class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
						<div class="header__actions">
							<a href="showLogin">Đăng nhập</a> <a href="showregister">Đăng
								ký</a>
						</div>
					</div>
					<div id="row-logout" class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
						<div class="header__actions">
							<a href="" id="hello-name"></a> <a href="">Đăng xuất</a>
						</div>
					</div>
				</div>
				<nav class="nav">
					<div class="nav__hamburger">
						<svg>
              <use xlink:href="images/sprite.svg#icon-menu"></use>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
            </svg>
					</div>

					<div class="nav__logo">
						<a href="index.html" class="scroll-link"> PET MART </a>
					</div>

<<<<<<< HEAD
          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PET MART</span>
              <a href="index.html" class="close__toggle">
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-cross"></use>
                </svg>
              </a>
            </div>
            <ul class="nav__list">
              <li class="nav__item">
                <a href="index.html" class="nav__link">Trang chủ</a>
              </li>
              <li class="nav__item">
                <a href="#category" class="nav__link">Sản phẩm</a>
              </li>
              <li class="nav__item">
                <a href="#" class="nav__link">Blog</a>
              </li>
              <li class="nav__item">
                <a href="#" class="nav__link">Liên hệ</a>
              </li>
            </ul>
          </div>

          <div class="nav__icons">
            <div id="location" class="hide"> 
              <a href="#" class="icon__item">
                <svg class="icon__user">
                  <use xlink:href="./images-new/sprite.svg#icon-location"></use>
                </svg>
              </a>
            </div>
            <div id="search-box" style="margin-right: 1rem;">
              <input class="form-control search-form"  type="search" aria-label="Search" placeholder="Tìm kiếm ...">
            </div>
              <a href="#" class="icon__item">
                <svg class="icon__search">
                  <use xlink:href="./images-new/sprite.svg#icon-search"></use>
                </svg>
              </a>
            
            <div id="cart" class="hide"> 
              <a href="cart.html" class="icon__item">
                <svg class="icon__cart">
                  <use xlink:href="./images-new/sprite.svg#icon-shopping-basket"></use>
                </svg>
                <span id="cart__total">0</span>
              </a>
            </div>
          </div>
        </nav>
      </div>
    </div>

    <div class="page__title-area">
      <div class="container">
        <div class="page__title-container">
          <ul class="page__titles">
            <li>
              <a href="/">
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-home"></use>
                </svg>
              </a>
            </li>
            <li class="page__title">Tên thú cưng, phụ kiện được chọn xem</li>
          </ul>
        </div>
      </div>
    </div>
  </header>

  <main id="main">
    <div class="container">
      <!-- Products Details -->
      <section class="section product-details__section">
        <div class="product-detail__container">
          <div class="product-detail__left">
            <div class="details__container--left">
              <div class="product__pictures">
                <div class="pictures__container">
                  <img class="picture" src="./images-new/products/iPhone/500-1.png" id="pic1" />
                </div>
                <div class="pictures__container">
                  <img class="picture" src="./images-new/products/iPhone/500-2.png" id="pic2" />
                </div>
                <div class="pictures__container">
                  <img class="picture" src="./images-new/products/iPhone/500-3.png" id="pic3" />
                </div>
                <div class="pictures__container">
                  <img class="picture" src="./images-new/products/iPhone/500-4.png" id="pic4" />
                </div>
                <div class="pictures__container">
                  <img class="picture" src="./images-new/products/iPhone/500-5.png" id="pic5" />
                </div>
              </div>
              <div class="product__picture" id="product__picture">
                <!-- <div class="rect" id="rect"></div> -->
                <div class="picture__container">
                  <img src="./images-new/products/iPhone/500-1.png" id="pic" />
                </div>
              </div>
              <div class="zoom" id="zoom"></div>
            </div>

            <div id="phuKien" class="product-details__btn product-details__btn_accessori">
              <a class="add" href="javascript:">
                <span>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-cart-plus"></use>
                  </svg>
                </span>
                THÊM VÀO GIỎ HÀNG</a>
              <a class="buy" href="check-out.html">
                <span>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-credit-card"></use>
                  </svg>
                </span>
                MUA NGAY
              </a>
            </div>
            <div id="cho" class="product-details__btn product-details__btn_pet hide">
              <a class="buy" href="check-out.html">
                <span>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-credit-card"></use>
                  </svg>
                </span>
                ĐẶT CỌC NGAY
              </a>
            </div>
          </div>

          <div id="phu-kien" class="product-detail__right">
            <div class="product-detail__content">
              <h3>Vòng cổ chuông cho mèo</h3>
              <div class="price">
                <span class="new__price">80000 đ</span>
              </div>
              <div class="product__review">
                <div class="rating">
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                  </svg>
                </div>
                <a href="#description"  class="rating__quatity">3 nhận xét</a>
              </div>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt
                a doloribus iste natus et facere?
                dolor sit amet consectetur adipisicing elit. Sunt
                a doloribus iste natus et facere?
              </p>
              <div class="product__info-container">
                <ul class="product__info">
                  <li class="select">
                    <div class="select__option">
                      <label for="colors">Màu : </label>
                      <select name="colors" id="colors" class="select-box">
                        <option value="xanh">Xanh dương</option>
                        <option value="do">Đỏ</option>
                        <option value="hong">Hồng</option>
                        <option value="cam">Cam</option>
                        <option value="xanhLa">Xanh lá</option>
                      </select>
                    </div>
                    <div class="select__option">
                      <label for="size">Kích cỡ :</label>
                      <select name="size" id="size" class="select-box">
                        <option value="6.65">6.65</option>
                        <option value="7.50">7.50</option>
                      </select>
                    </div>
                  </li>
                  <li>

                    <div class="input-counter">
                      <span>Số lượng :</span>
                      <div>
                        <span id="" class="minus-btn">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-minus"></use>
                          </svg>
                        </span>
                        <input type="text" min="1" value="1" max="10" class="counter-btn">
                        <span class="plus-btn">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-plus"></use>
                          </svg>
                        </span>
                      </div>
                    </div>
                  </li>

                  <li>
                    <span>Số tiền :</span>
                    <a href="#" class="new__price">80000 đ</a>
                  </li>
                  <li>
                    <span>Hãng :</span>
                    <a href="#">Abcxyz</a>
                  </li>
                  <li>
                    <span>Loại sản phẩm :</span>
                    <a href="#">Phone</a>
                  </li>
                  <li>
                    <span>Trạng thái :</span>
                    <a href="#" class="in-stock">Còn hàng  (15 sản phẩm)</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!--Div pet-->
          <div id="thuCung" class="product-detail__right hide">
            <div class="product-detail__content">
              <h3>Husky Shibarian</h3>
              <div class="price">
                <span class="new__price">80000 đ</span>
              </div>
              <div class="product__review">
                <div class="rating">
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                  </svg>
                  <svg>
                    <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                  </svg>
                </div>
                <a href="#description"  class="rating__quatity">3 nhận xét</a>
              </div>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt
                a doloribus iste natus et facere?
                dolor sit amet consectetur adipisicing elit. Sunt
                a doloribus iste natus et facere?
              </p>
              <div class="product__info-container">
                <ul class="product__info">
                  <li class="select">
                    <div class="select__option">
                      <label for="colors">Màu lông: </label>
                      <select name="colors" id="colors" class="select-box">
                        <option value="xanh">Xanh dương</option>
                        <option value="do">Đỏ</option>
                        <option value="hong">Hồng</option>
                        <option value="cam">Cam</option>
                        <option value="xanhLa">Xanh lá</option>
                      </select>
                    </div>
                    <div class="select__option">
                      <label for="size">Màu mắt :</label>
                      <select name="size" id="size" class="select-box">
                        <option value="xanhDuong">Xanh dương</option>
                        <option value="den">Đen</option>
                      </select>
                    </div>
                  </li>
                  <li>

                    <div class="input-counter">
                      <span>Số lượng :</span>
                      <div>
                        <span id="" class="minus-btn">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-minus"></use>
                          </svg>
                        </span>
                        <input type="text" min="1" value="1" max="10" class="counter-btn">
                        <span class="plus-btn">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-plus"></use>
                          </svg>
                        </span>
                      </div>
                    </div>
                  </li>

                  <li>
                    <span>Số tiền :</span>
                    <a href="#" class="new__price">2500000 đ</a>
                  </li>
                  <li>
                    <span>Giống :</span>
                    <a href="#">Husky</a>
                  </li>
                  <li>
                    <span>Loại thú cưng :</span>
                    <a href="#">Chó</a>
                  </li>
                  <li>
                    <span>Trạng thái :</span>
                    <a href="#" class="in-stock">Còn hàng  (15 sản phẩm)</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <div class="product-detail__bottom">
          <div class="title__container tabs">

            <div class="section__titles category__titles ">
              <div class="section__title detail-btn active" data-id="description">
                <span class="dot"></span>
                <h1 class="primary__title">Mô tả sản phẩm</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title detail-btn" data-id="reviews">
                <span class="dot"></span>
                <h1 class="primary__title">Nhận xét</h1>
              </div>
            </div>
          </div>

          <div class="detail__content">
            <div class="content active" id="description">
              <h2>Chi tiết về thú || phụ kiện</h2>
              <ul>
                <li>Comodous in tempor ullamcorper miaculis</li>
                <li>Pellentesque vitae neque mollis urna mattis laoreet.</li>
                <li>Divamus sit amet purus justo.</li>
                <li>Proin molestie egestas orci ac suscipit risus posuere loremous</li>
              </ul>
              <h2>Chi tiết về thú || phụ kiện</h2>
              <ul>
                <li>Comodous in tempor ullamcorper miaculis</li>
                <li>Pellentesque vitae neque mollis urna mattis laoreet.</li>
                <li>Divamus sit amet purus justo.</li>
                <li>Proin molestie egestas orci ac suscipit risus posuere loremous</li>
              </ul>
            </div>
            <div class="content" id="reviews">
              <h1>Nhận xét của khách hàng</h1>
              <div class="rating">
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                </svg>
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                </svg>
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                </svg>
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                </svg>
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                </svg>
              </div>
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
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="/images-new/products/sumsung/samsung5.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$900</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
=======
					<div class="nav__menu">
						<div class="menu__top">
							<span class="nav__category">PET MART</span> <a href=""
								class="close__toggle"> <svg>
                  <use xlink:href="images/sprite.svg#icon-cross"></use>
                </svg>
							</a>
						</div>
						<ul class="nav__list">
							<li class="nav__item"><a href="" class="nav__link">Trang
									chủ</a></li>
							<li class="nav__item"><a href="#category" class="nav__link">Sản
									phẩm</a></li>
							<li class="nav__item"><a href="#" class="nav__link">Blog</a>
							</li>
							<li class="nav__item"><a href="#" class="nav__link">Liên
									hệ</a></li>
						</ul>
					</div>

					<div class="nav__icons">
						<div id="location" class="hide">
							<a href="#" class="icon__item"> <svg class="icon__user">
                  <use xlink:href="images/sprite.svg#icon-location"></use>
                </svg>
							</a>
						</div>
						<div id="search-box" style="margin-right: 1rem;">
							<input class="form-control search-form" type="search"
								aria-label="Search" placeholder="Tìm kiếm ...">
						</div>
						<a href="#" class="icon__item"> <svg class="icon__search">
                  <use xlink:href="images/sprite.svg#icon-search"></use>
                </svg>
						</a>

						<div id="cart" class="hide">
							<a href="cart.html" class="icon__item"> <svg
									class="icon__cart">
                  <use
										xlink:href="images/sprite.svg#icon-shopping-basket"></use>
                </svg> <span id="cart__total">0</span>
							</a>
						</div>
					</div>
				</nav>
			</div>
		</div>

		<div class="page__title-area">
			<div class="container">
				<div class="page__title-container">
					<ul class="page__titles">
						<li><a href="/"> <svg>
                  <use xlink:href="images/sprite.svg#icon-home"></use>
                </svg>
						</a></li>
						<li class="page__title">${pet.getPetName() }</li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<main id="main">
		<div class="container">
			<!-- Products Details -->
			<section class="section product-details__section">
				<form action="deposit/${pet.getId() }" method="post">
					<div class="product-detail__container">
						<div class="product-detail__left">
							<div class="details__container--left">
								<div class="product__pictures">
									<div class="pictures__container">
										<img class="picture" src="${img.getImg1() }" id="pic1" />
									</div>
									<div class="pictures__container">
										<img class="picture" src="${img.getImg2() }" id="pic2" />
									</div>
									<div class="pictures__container">
										<img class="picture" src="${img.getImg3() }" id="pic3" />
									</div>
									<div class="pictures__container">
										<img class="picture" src="${img.getImg1() }" id="pic4" />
									</div>
									<div class="pictures__container">
										<img class="picture" src="${img.getImg1() }" id="pic5" />
									</div>
								</div>
								<div class="product__picture" id="product__picture">
									<!-- <div class="rect" id="rect"></div> -->
									<div class="picture__container">
										<img src="${img.getImgAvartar() }" id="pic" />
									</div>
								</div>
								<div class="zoom" id="zoom"></div>
							</div>
							<div id="cho" class="product-details__btn product-details__btn_pet hide">
							<button id="cho" type="submit"
								class="product-details__btn product-details__btn_pet hide">
								<a class="buy" > <span> <svg>
                    <use xlink:href="images/sprite.svg#icon-credit-card"></use>
                  </svg>
								</span> ĐẶT CỌC NGAY
								</a>
							</button>
						</div>
						</div>

						<div id="phu-kien" class="product-detail__right">
							<div class="product-detail__content">
								<h3>${pet.getPetName() }</h3>
								<div class="price">
									<span class="new__price">${pet.getDisplayPrice(1) }</span>
								</div>
								<div class="product__review">
									<div class="rating">
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                  </svg>
									</div>
									<a href="#description" class="rating__quatity">3 nhận xét</a>
								</div>
								<div class="product__info-container">
									<ul class="product__info">
										<li class="select">
											<div class="select__option">
												<label for="colors">Màu lông - Màu mắt: </label> <select
													name="colors" id="colors" class="select-box">
													<c:forEach var="color" items="${color}">
														<option value="${color.getId() }">${color.getFullColor() }
															- ${color.getEyeColor() }</option>
													</c:forEach>
												</select>
											</div>
										</li>
										<li>

											<div class="input-counter">
												<span>Số lượng :</span>
												<div>
													<span id="" class="minus-btn"> <svg>
                            <use
																xlink:href="images/sprite.svg#icon-minus"></use>
                          </svg>
													</span> <input type="text" min="1" value="1" max="10"
														class="counter-btn"> <span class="plus-btn">
														<svg>
                            <use
																xlink:href="images/sprite.svg#icon-plus"></use>
                          </svg>
													</span>
												</div>
											</div>
										</li>

										<li><span>Giá cọc :</span> <a href="#" class="new__price">${pet.getDisplayDeposit() }
											</a></li>
										<li><span>Giống :</span> <a href="#">${pet.getSpecies().getName() }</a>
										</li>
										<li><span>Tuổi :</span> <a href="#">${pet.getAge() }
												tháng</a></li>
										<li><span>Trạng thái :</span> <a href="#"
											class="in-stock">${pet.getStatus() } (${pet.getAmount() }
												con)</a></li>
									</ul>
								</div>
							</div>
						</div>

						<!--Div pet-->
						<div id="thuCung" class="product-detail__right hide">
							<div class="product-detail__content">
								<h3>Husky Shibarian</h3>
								<div class="price">
									<span class="new__price">80000 đ</span>
								</div>
								<div class="product__review">
									<div class="rating">
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-full"></use>
                  </svg>
										<svg>
                    <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                  </svg>
									</div>
									<a href="#description" class="rating__quatity">3 nhận xét</a>
								</div>
								<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
									Sunt a doloribus iste natus et facere? dolor sit amet
									consectetur adipisicing elit. Sunt a doloribus iste natus et
									facere?</p>
								<div class="product__info-container">
									<ul class="product__info">
										<li class="select">
											<div class="select__option">
												<label for="colors">Màu lông: </label> <select name="colors"
													id="colors" class="select-box">
													<option value="xanh">Xanh dương</option>
													<option value="do">Đỏ</option>
													<option value="hong">Hồng</option>
													<option value="cam">Cam</option>
													<option value="xanhLa">Xanh lá</option>
												</select>
											</div>
											<div class="select__option">
												<label for="size">Màu mắt :</label> <select name="size"
													id="size" class="select-box">
													<option value="xanhDuong">Xanh dương</option>
													<option value="den">Đen</option>
												</select>
											</div>
										</li>
										<li>

											<div class="input-counter">
												<span>Số lượng :</span>
												<div>
													<span id="" class="minus-btn"> <svg>
                            <use
																xlink:href="images/sprite.svg#icon-minus"></use>
                          </svg>
													</span> <input type="text" min="1" value="1" max="10"
														class="counter-btn"> <span class="plus-btn">
														<svg>
                            <use
																xlink:href="images/sprite.svg#icon-plus"></use>
                          </svg>
													</span>
												</div>
											</div>
										</li>

										<li><span>Số tiền :</span> <a href="#" class="new__price">2500000
												đ</a></li>
										<li><span>Giống :</span> <a href="#">Husky</a></li>
										<li><span>Loại thú cưng :</span> <a href="#">Chó</a></li>
										<li><span>Trạng thái :</span> <a href="#"
											class="in-stock">Còn hàng (15 sản phẩm)</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</form>
				<div class="product-detail__bottom">
					<div class="title__container tabs">

						<div class="section__titles category__titles ">
							<div class="section__title detail-btn active"
								data-id="description">
								<span class="dot"></span>
								<h1 class="primary__title">Mô tả sản phẩm</h1>
							</div>
						</div>

						<div class="section__titles">
							<div class="section__title detail-btn" data-id="reviews">
								<span class="dot"></span>
								<h1 class="primary__title">Nhận xét</h1>
							</div>
						</div>
					</div>

					<div class="detail__content">
						<div class="content active" id="description">
							<h2>Chi tiết về thú</h2>
							<p>${pet.getDescription() }</p>
						</div>
						<div class="content" id="reviews">
							<h1>Nhận xét của khách hàng</h1>
							<div class="rating">
								<svg>
                  <use xlink:href="images/sprite.svg#icon-star-full"></use>
                </svg>
								<svg>
                  <use xlink:href="images/sprite.svg#icon-star-full"></use>
                </svg>
								<svg>
                  <use xlink:href="images/sprite.svg#icon-star-full"></use>
                </svg>
								<svg>
                  <use xlink:href="images/sprite.svg#icon-star-full"></use>
                </svg>
								<svg>
                  <use xlink:href="images/sprite.svg#icon-star-empty"></use>
                </svg>
							</div>
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
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="/images/products/sumsung/samsung5.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Samsung Galaxy</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$900</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
                          </svg>
											</a></li>

<<<<<<< HEAD
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="/images-new/products/iPhone/iphone6.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone 11</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$750</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="/images-new/products/sumsung/samsung3.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$850</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="./images-new/products/iPhone/iphone2.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone 11</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$450</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="/images-new/products/headphone/headphone4.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$600</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
=======
											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>

								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="/images/products/iPhone/iphone6.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Apple iPhone 11</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$750</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="/images/products/sumsung/samsung3.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Samsung Galaxy</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$850</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="images/products/iPhone/iphone2.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Apple iPhone 11</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$450</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="/images/products/headphone/headphone4.jpeg"
												alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Sony WH-CH510</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$600</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
                          </svg>
											</a></li>

<<<<<<< HEAD
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="images-new/products/sumsung/samsung1.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$300</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="images-new/products/headphone/headphone2.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$300</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="images-new/products/headphone/headphone1.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$250</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <a href="#"><img src="images-new/products/iPhone/iphone1.jpeg" alt="product"></a>
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone XR</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images-new/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$550</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images-new/sprite.svg#icon-loop2"></use>
=======
											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>

								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="images/products/sumsung/samsung1.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Samsung Galaxy</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$300</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="images/products/headphone/headphone2.jpeg"
												alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Sony WH-CH510</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$300</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="images/products/headphone/headphone1.jpeg"
												alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Sony WH-CH510</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$250</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
                          </svg>
											</a></li>

											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
								</li>
								<li class="glide__slide">
									<div class="product">
										<div class="product__header">
											<a href="#"><img
												src="images/products/iPhone/iphone1.jpeg" alt="product"></a>
										</div>
										<div class="product__footer">
											<h3>Apple iPhone XR</h3>
											<div class="rating">
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-full"></use>
                        </svg>
												<svg>
                          <use
														xlink:href="images/sprite.svg#icon-star-empty"></use>
                        </svg>
											</div>
											<div class="product__price">
												<h4>$550</h4>
											</div>
											<a href="#"><button type="submit" class="product__btn">Thêm
													vào giỏ hàng</button></a>
										</div>
										<ul>
											<li><a data-tip="Quick View" data-place="left" href="#">
													<svg>
                            <use xlink:href="images/sprite.svg#icon-eye"></use>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
                          </svg>
											</a></li>

<<<<<<< HEAD
            <div class="glide__arrows" data-glide-el="controls">
              <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-arrow-left2"></use>
                </svg>
              </button>
              <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                <svg>
                  <use xlink:href="./images-new/sprite.svg#icon-arrow-right2"></use>
                </svg>
              </button>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer">
          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-airplane"></use>
              </svg>
            </div>
            <p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-credit-card-alt"></use>
              </svg>
            </div>
            <p>HOÀN TIỀN 100%</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-credit-card"></use>
              </svg>
            </div>
            <p>NHIỀU ƯU ĐÃI LỠN</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-headphones"></use>
              </svg>
            </div>
            <p>CHĂM SÓC TẬN TÌNH</p>
          </div>
        </div>
      </div>
    </section>
  </main>

  <!-- Footer -->
  <footer id="footer" class="section footer" style="background-image: url(images-new/Footer-Background-Image.png)">
    <div class="container">
      <div class="footer__top">
        <div class="footer-top__box">
          <h3>SẢN PHẨM</h3>
          <a href="#">Chó</a>
          <a href="#">Mèo</a>
          <a href="#">Phụ kiện</a>
        </div>
        <div class="footer-top__box">
          <h3>THÔNG TIN</h3>
          <a href="#">Về chúng tôi</a>
          <a href="#">Chính Sách Bảo Mật</a>
          <a href="#">Điều khoản và Điều kiện</a>
          <a href="#">Liên hệ</a>
        </div>
        <div class="footer-top__box">
          <h3>TÀI KHOẢN CỦA TÔI</h3>
          <a href="#">Thông tin tài khoản</a>
          <a href="#">Danh sách đơn hàng</a>
        </div>
        <div class="footer-top__box">
          <h3>LIÊN HỆ</h3>
          <div>
            <span>
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-location"></use>
              </svg>
            </span>
            206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-envelop"></use>
              </svg>
            </span>
            petmart.support@gmail.com
          </div>
          <div>
            <span>
              <svg>
                <use xlink:href="./images-new/sprite.svg#icon-phone"></use>
              </svg>
            </span>
            (+84) 386768658
          </div>
        </div>
      </div>
    </div>
    <div class="footer__bottom">
      <div class="footer-bottom__box">

      </div>
      <div class="footer-bottom__box">

      </div>
    </div>
    </div>
  </footer>

  <!-- End Footer -->

  <!-- Go To -->

  <a href="#header" class="goto-top scroll-link">
    <svg>
      <use xlink:href="./images-new/sprite.svg#icon-arrow-up"></use>
=======
											<li><a data-tip="Add To Compare" data-place="left"
												href="#"> <svg>
                            <use
															xlink:href="images/sprite.svg#icon-loop2"></use>
                          </svg>
											</a></li>
										</ul>
									</div>
							</ul>
						</div>

						<div class="glide__arrows" data-glide-el="controls">
							<button class="glide__arrow glide__arrow--left"
								data-glide-dir="<">
								<svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-left2"></use>
                </svg>
							</button>
							<button class="glide__arrow glide__arrow--right"
								data-glide-dir=">">
								<svg>
                  <use xlink:href="images/sprite.svg#icon-arrow-right2"></use>
                </svg>
							</button>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- Facility Section -->
		<section class="facility__section section" id="facility">
			<div class="container">
				<div class="facility__contianer">
					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-airplane"></use>
              </svg>
						</div>
						<p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-credit-card-alt"></use>
              </svg>
						</div>
						<p>HOÀN TIỀN 100%</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-credit-card"></use>
              </svg>
						</div>
						<p>NHIỀU ƯU ĐÃI LỠN</p>
					</div>

					<div class="facility__box">
						<div class="facility-img__container">
							<svg>
                <use xlink:href="images/sprite.svg#icon-headphones"></use>
              </svg>
						</div>
						<p>CHĂM SÓC TẬN TÌNH</p>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- Footer -->
	<footer id="footer" class="section footer"
		style="background-image: url(images/Footer-Background-Image.png)">
		<div class="container">
			<div class="footer__top">
				<div class="footer-top__box">
					<h3>SẢN PHẨM</h3>
					<a href="#">Chó</a> <a href="#">Mèo</a> <a href="#">Phụ kiện</a>
				</div>
				<div class="footer-top__box">
					<h3>THÔNG TIN</h3>
					<a href="#">Về chúng tôi</a> <a href="#">Chính Sách Bảo Mật</a> <a
						href="#">Điều khoản và Điều kiện</a> <a href="#">Liên hệ</a>
				</div>
				<div class="footer-top__box">
					<h3>TÀI KHOẢN CỦA TÔI</h3>
					<a href="#">Thông tin tài khoản</a> <a href="#">Danh sách đơn
						hàng</a>
				</div>
				<div class="footer-top__box">
					<h3>LIÊN HỆ</h3>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-location"></use>
              </svg>
						</span> 206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
					</div>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-envelop"></use>
              </svg>
						</span> petmart.support@gmail.com
					</div>
					<div>
						<span> <svg>
                <use xlink:href="images/sprite.svg#icon-phone"></use>
              </svg>
						</span> (+84) 386768658
					</div>
				</div>
			</div>
		</div>
		<div class="footer__bottom">
			<div class="footer-bottom__box"></div>
			<div class="footer-bottom__box"></div>
		</div>
		</div>
	</footer>

	<!-- End Footer -->

	<!-- Go To -->

	<a href="#header" class="goto-top scroll-link"> <svg>
      <use xlink:href="images/sprite.svg#icon-arrow-up"></use>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
    </svg>
	</a>

	<!-- Glide Carousel Script -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

	<!-- Animate On Scroll -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<<<<<<< HEAD
  <!-- Custom JavaScript -->
  <script src="./js-new/products.js"></script>
  <script src="./js-new/index.js"></script>
  <script src="./js-new/slider.js"></script>
  <script src="./js-new/jquery-3.5.1.min.js"></script>
  <script src="./js-new/custom.js"></script>
=======
	<!-- Custom JavaScript -->
	<script src="js/products.js"></script>
	<script src="js/index.js"></script>
	<script src="js/slider.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/custom.js"></script>
>>>>>>> 4b097327cadbdae36ac5f9e8911524d12c325fa5
</body>

</html>