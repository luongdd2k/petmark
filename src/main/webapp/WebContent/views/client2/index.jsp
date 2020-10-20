<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&display=swap" rel="stylesheet" />

  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />


  <!-- Carousel -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.min.css">
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

  <!-- Custom StyleSheet -->
  <link rel="stylesheet" href="css/styles.css" />

  <title>Pet Mart | Cửa hàng thú cưng và phụ kiện cho thú cưng</title>
</head>

<body>

  <!-- Header -->
  <header id="header" class="header">
    <div class="navigation">
      <div class="container">
        <input type="hidden" id="usernameBE" value="" />  
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
              <use xlink:href="./images/sprite.svg#icon-menu"></use>
            </svg>
          </div>

          <div class="nav__logo">
            <a href="index.html" class="scroll-link">
              PET MART
            </a>
          </div>

          <div class="nav__menu">
            <div class="menu__top">
              <span class="nav__category">PET MART</span>
              <a href="index.html" class="close__toggle">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-cross"></use>
                </svg>
              </a>
            </div>
            <ul class="nav__list">
              <li class="nav__item">
                <a href="index.html" class="nav__link scroll-link">Trang chủ</a>
              </li>
              <li class="nav__item">
                <a href="#category" class="nav__link scroll-link">Category</a>
              </li>
              <li class="nav__item">
                <a href="#news" class="nav__link scroll-link">Blog</a>
              </li>
              <li class="nav__item">
                <a href="#contact" class="nav__link scroll-link">Liên hệ</a>
              </li>
            </ul>
          </div>

          <div class="nav__icons">
            <div id="location" class="hide"> 
              <a href="#" class="icon__item">
                <svg class="icon__user">
                  <use xlink:href="./images/sprite.svg#icon-location"></use>
                </svg>
              </a>
            </div>
            <div id="search-box" style="margin-right: 1rem;">
              <input class="form-control search-form"  type="search" aria-label="Search" placeholder="Tìm kiếm ...">
            </div>
              <a href="#" class="icon__item">
                <svg class="icon__search">
                  <use xlink:href="./images/sprite.svg#icon-search"></use>
                </svg>
              </a>
            
            <div id="cart" class="hide"> 
              <a href="cart.html" class="icon__item">
                <svg class="icon__cart">
                  <use xlink:href="./images/sprite.svg#icon-shopping-basket"></use>
                </svg>
                <span id="cart__total">0</span>
              </a>
            </div>
          </div>
        </nav>
      </div>
    </div>

    <!-- Hero -->
    <div class="hero">
      
      <div class="glide" id="glide_1">
        <div class="glide__track" data-glide-el="track">
          <ul class="glide__slides">
            <li class="glide__slide glide__slide1">
              <div class="hero__center">
                <div class="hero__left">
                  <span class="">New Inspiration 2020</span>
                  <h1 class="">PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <!-- <div class="hero__img-container">
                    <img class="banner_01" src="./images/banner-dog.jpg" alt="banner2" />
                  </div> -->
                </div>
              </div>
            </li>
            <li class="glide__slide glide__slide2">
              <div class="hero__center">
                <div class="hero__left">
                  <span>New Inspiration 2020</span>
                  <h1>PHONES MADE FOR YOU!</h1>
                  <p>Trending from mobile and headphone style collection</p>
                  <a href="#"><button class="hero__btn">SHOP NOW</button></a>
                </div>
                <div class="hero__right">
                  <img class="banner_02" src="./images/banner_02.png" alt="banner2" />
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="glide__bullets" data-glide-el="controls[nav]">
          <button class="glide__bullet" data-glide-dir="=0"></button>
          <button class="glide__bullet" data-glide-dir="=1"></button>
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
    </div>
  </header>
  <!-- End Header -->

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
                <a href="#">SHOP NOW</a>
              </div>
            </div>
          </div>
      </section>

      <!-- Latest Products -->
      <section class="section latest__products" id="latest">
        <div class="title__container">
          <div class="section__title active" data-id="Latest Products">
            <span class="dot"></span>
            <h1 class="primary__title">Sản phẩm mới nhất</h1>
          </div>
        </div>
        <div class="container" data-aos="fade-up" data-aos-duration="1200">
          <div class="glide" id="glide_2">
            <div class="glide__track" data-glide-el="track">
              <ul class="glide__slides latest-center">
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="/images/products/iPhone/iphone6.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone 11</h3>
                      <div class="rating">
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-full"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                        </svg>
                        <svg>
                          <use xlink:href="./images/sprite.svg#icon-star-empty"></use>
                        </svg>
                      </div>
                      <div class="product__price">
                        <h4>$750</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="product.html">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="/images/products/sumsung/samsung5.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
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
                        <h4>$900</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="/images/products/headphone/headphone4.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
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
                        <h4>$600</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="/images/products/sumsung/samsung3.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
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
                        <h4>$850</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="./images/products/iPhone/iphone2.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone 11</h3>
                      <div class="rating">
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
                        <h4>$450</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="images/products/headphone/headphone2.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
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
                        <h4>$300</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="images/products/sumsung/samsung1.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Samsung Galaxy</h3>
                      <div class="rating">
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
                        <h4>$300</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="images/products/headphone/headphone1.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Sony WH-CH510</h3>
                      <div class="rating">
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
                        <h4>$250</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li class="glide__slide">
                  <div class="product">
                    <div class="product__header">
                      <img src="images/products/iPhone/iphone1.jpeg" alt="product">
                    </div>
                    <div class="product__footer">
                      <h3>Apple iPhone XR</h3>
                      <div class="rating">
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
                        <h4>$550</h4>
                      </div>
                      <a href="#"><button type="submit" class="product__btn">Thêm vào giỏ hàng</button></a>
                    </div>
                    <ul>
                      <li>
                        <a data-tip="Quick View" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-eye"></use>
                          </svg>
                        </a>
                      </li>
                       
                      <li>
                        <a data-tip="Add To Compare" data-place="left" href="#">
                          <svg>
                            <use xlink:href="./images/sprite.svg#icon-loop2"></use>
                          </svg>
                        </a>
                      </li>
                    </ul>
                  </div>

              </ul>
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
        </div>
      </section>

      <section class="category__section section" id="category">
        <div class="tab__list">
          <div class="title__container tabs">
            <div class="section__titles category__titles ">
              <div class="section__title filter-btn active" data-id="All Products">
                <span class="dot"></span>
                <h1 class="primary__title">Tất cả sản phẩm</h1>
              </div>
            </div>
            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Trending Products">
                <span class="dot"></span>
                <h1 class="primary__title">Sản phẩm hot</h1>
              </div>
            </div>

            <div class="section__titles">
              <div class="section__title filter-btn" data-id="Special Products">
                <span class="dot"></span>
                <h1 class="primary__title">Sản phẩm đặc biệt</h1>
              </div>
            </div>
          </div>
        </div>
        <div class="category__container" data-aos="fade-up" data-aos-duration="1200">
          <div class="category__center"></div>
        </div>
    </div>
    </section>

    <!-- Facility Section -->
    <section class="facility__section section" id="facility">
      <div class="container">
        <div class="facility__contianer">
          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-airplane"></use>
              </svg>
            </div>
            <p>VẬN CHUYỂN KHU VỰC HÀ NỘI</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-credit-card-alt"></use>
              </svg>
            </div>
            <p>HOÀN TIỀN 100%</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-credit-card"></use>
              </svg>
            </div>
            <p>NHIỀU ƯU ĐÃI LỠN</p>
          </div>

          <div class="facility__box">
            <div class="facility-img__container">
              <svg>
                <use xlink:href="./images/sprite.svg#icon-headphones"></use>
              </svg>
            </div>
            <p>CHĂM SÓC TẬN TÌNH</p>
          </div>
        </div>
      </div>
    </section>
   

    <!-- Testimonial Section -->
    <section class="section testimonial" id="testimonial">
      <div class="testimonial__container">
        <div class="glide" id="glide_4">
          <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
              <li class="glide__slide">
                <div class="testimonial__box">
                  <div class="client__image">
                    <img src="./images/profile1.jpg" alt="profile">
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
                    <img src="./images/profile2.jpg" alt="profile">
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
            <a class="newsletter__link" href="#">Đăng ký</a>
          </form>
        </div>
      </div>
    </section>

  </main>

  <!-- End Main -->

 <!-- Footer -->
 <footer id="footer" class="section footer" style="background-image: url(images/Footer-Background-Image.png)">
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
              <use xlink:href="./images/sprite.svg#icon-location"></use>
            </svg>
          </span>
          206 Đường Kim Mã, Quận Ba Đình, TP. Hà Nội
        </div>
        <div>
          <span>
            <svg>
              <use xlink:href="./images/sprite.svg#icon-envelop"></use>
            </svg>
          </span>
          petmart.support@gmail.com
        </div>
        <div>
          <span>
            <svg>
              <use xlink:href="./images/sprite.svg#icon-phone"></use>
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
      <use xlink:href="./images/sprite.svg#icon-arrow-up"></use>
    </svg>
  </a>


  <!-- Glide Carousel Script -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>

  <!-- Animate On Scroll -->
  <script src="./js/jquery-3.5.1.min.js"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- Custom JavaScript -->
  <script src="./js/products.js"></script>
  <script src="./js/index.js"></script>
  <script src="./js/slider.js"></script>
  <script src="./js/custom.js"></script>
  <script src="./js/sweat-alert.js"></script>

</body>

</html>