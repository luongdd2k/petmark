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

  <title>Thông tin tài khoản</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <link rel="stylesheet" href="css/acc-in.css">
  <link rel="stylesheet" href="css/styles.css" />
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
            <li class="page__title">Thông tin tài khoản</li>
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
                      <div class="my-acount-section__header-title">Hồ sơ của tôi</div>
                      <div class="my-account-section__header-subtitle">Quản lý thông tin hồ sơ để bảo mật an toàn</div>
                    </div>
                  </div>
                  <form action="">
                    <div class="my-account-profile">
                      <div class="my-account-profile__left">
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Tên đăng nhập</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="input-with-validator-wrapper">
                                <div  class="input-with-validator" style="font-weight: 600;">
                                  <input type="text" placeholder="" value="${account.getUsername() }" disabled>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Tên</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="input-with-validator-wrapper">
                                <div  class="input-with-validator">
                                  <input type="text" placeholder="" value="${account.getFullName() }">
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Giới tính</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="my-account-profile__gender">
                                <div class="stardust-radio-group">
                                  <div class="stardust-radio stardust-radio--checked">
                                    <div class="stardust-radio-button stardust-radio--checked">
                                      <div class="stardust-radio-button__outer-circle">
                                        <div class="stardust-radio-button__inner-circle"></div>
                                      </div>
                                    </div>
                                    <div class="stardust-radio__content">
                                      <div class="stardust-radio__label">Nam</div>
                                    </div>
                                  </div>
                                  <div class="stardust-radio">
                                    <div class="stardust-radio-button">
                                      <div class="stardust-radio-button__outer-circle">
                                        <div class="stardust-radio-button__inner-circle"></div>
                                      </div>
                                    </div>
                                    <div class="stardust-radio__content">
                                      <div class="stardust-radio__label">Nữ</div>
                                    </div>
                                  </div>
                                  <div class="stardust-radio">
                                    <div class="stardust-radio-button">
                                      <div class="stardust-radio-button__outer-circle">
                                        <div class="stardust-radio-button__inner-circle"></div>
                                      </div>
                                    </div>
                                    <div class="stardust-radio__content">
                                      <div class="stardust-radio__label">Khác</div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Email</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="input-with-validator-wrapper">
                                <div  class="input-with-validator">
                                  <input type="text" placeholder="" value="${account.getEmail() }" disabled>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Số điện thoại</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="input-with-validator-wrapper">
                                <div  class="input-with-validator">
                                  <input type="text" placeholder="" value="${account.getPhone() }">
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="input-with-label">
                          <div class="input-with-label__wrapper">
                            <div class="input-with-label__label">
                              <label>Địa chỉ</label>
                            </div>
                            <div class="input-with-label__content">
                              <div class="input-with-validator-wrapper">
                                <div  class="input-with-validator">
                                  <input type="text" placeholder="" value="${account.getAddress() }">
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="my-account-profile__right">
                        <div class="avatar-uploader">
                          <div class="avatar-uploader__avatar">
                            <div class="avatar-uploader__avatar-image" style="background-image: url(${account.getImagePath() });"></div>
                          </div>
                          <input type="file" class="avatar-uploader__file-input" accept=".jpg,.jpeg,.png" style="display: none;">
                          <button class="btn btn-light btn--m btn--inline">Chọn ảnh</button>
                        </div>
                      </div>
                    </div>
                  </form>
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
  <script src="./js/check-out.js"></script>
  <script src="./js/sweat-alert.js"></script>
  <script>
    function logabc(){
      var tt = document.getElementById("adressRecive").value;
    console.log(tt);
    }
    
  </script>
</body>

</html>