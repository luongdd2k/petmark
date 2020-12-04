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

  <title>Đổi mật khẩu</title>
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
              <a href="javascript:">
                <svg>
                  <use xlink:href="./images/sprite.svg#icon-home"></use>
                </svg>
              </a>
            </li>
            <li class="page__title">Đổi mật khẩu</li>
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
                      <div class="my-acount-section__header-title">Đổi mật khẩu</div>
                      <div class="my-account-section__header-subtitle">Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác</div>
                    </div>
                  </div>
                  <form action="Changepw" method="post">
                      <div class="_2RXy7B">
                          <div class="KYsB_e">
                            <div class="_2b9N_5">
                                <div class="_3UNqEC">
                                    <div class="WxiZVg">
                                        <label class="_3_bW3Q" for="password">Mật khẩu hiện tại</label>
                                    </div>
                                    <div class="_1jBnmJ">
                                        <input class="_2mVfdi _2u9RSh" type="password" autocomplete="off" name="password" value="">
                                    </div>
                                    <div class="stardust-popover">
                                        <div role="button" aria-describedby="stardust-popover6" class="stardust-popover__target">
                                            <div class="_2TYDwU">Quên mật khẩu?</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="KYsB_e">
                            <div class="_2b9N_5">
                                <div class="_3UNqEC">
                                    <div class="WxiZVg">
                                        <label class="_3_bW3Q" for="newPassword">Mật khẩu mới</label>
                                    </div>
                                    <div class="_1jBnmJ">
                                        <input class="_2mVfdi _2u9RSh" type="password" autocomplete="off" name="newPassword" aria-autocomplete="list">
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="KYsB_e">
                            <div class="_2b9N_5">
                                <div class="_3UNqEC">
                                    <div class="WxiZVg">
                                        <label class="_3_bW3Q" for="newPasswordRepeat">Xác nhận mật khẩu</label>
                                    </div>
                                    <div class="_1jBnmJ">
                                        <input class="_2mVfdi _2u9RSh" type="password" autocomplete="off" name="newPasswordRepeat" value="">
                                    </div>
                                </div>
                            </div>
                          </div>
                          <div class="KYsB_e">
                            <div class="_356OXR"></div>
                            <div class="f3x8pt">
                                <button 
                                    type="submit" 
                                    class="btn btn-solid-primary btn--m btn--inline btn-solid-primary--disabled" 
                                    aria-disabled="true"
                                    >Xác nhận
                                </button>
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
    
    
  </script>
</body>

</html>