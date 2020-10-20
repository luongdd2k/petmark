<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>Đăng ký tài khoản mới</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Lemonada:wght@500&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@700&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
      crossorigin="anonymous"
    />
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
  </head>
  <body>
    <img class="wave" src="images/login/wave.png" />
    <div class="container">
      <div class="img">
        <img src="images/login/product.svg" />
      </div>
      <div class="login-content">
        <form action="">
          <img src="images/login/avatar.svg" />
          <h2 class="title1">Tài khoản mới</h2>
          <div class="row">
            <div class="col-6">
              <div class="input-div name">
                <div class="i">
                  <i class="far fa-address-card"></i>
                </div>
                <div class="div">
                  <h5>Họ tên</h5>
                  <input type="text" class="input" required />
                </div>
              </div>
              <div class="input-div user">
                <div class="i">
                  <i class="fas fa-user"></i>
                </div>
                <div class="div">
                  <h5>Tên tài khoản</h5>
                  <input type="text" class="input" required />
                </div>
              </div>
              <div class="input-div pass">
                <div class="i">
                  <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                  <h5>Mật khẩu</h5>
                  <input type="password" class="input" required />
                </div>
              </div>
              <div class="input-div confri-pass">
                <div class="i">
                  <i class="fas fa-lock"></i>
                </div>
                <div class="div">
                  <h5>Nhập lại mật khẩu</h5>
                  <input type="password" class="input" required />
                </div>
              </div>
            </div>
            <div class="col-6">
              <div class="input-div email">
                <div class="i">
                  <i class="far fa-envelope"></i>
                </div>
                <div class="div">
                  <h5>Email</h5>
                  <input type="email" class="input" required />
                </div>
              </div>
              <div class="radio-div gender">
                <div class="i">
                  <i class="fas fa-venus-mars"></i>
                </div>
                <div class="div">
                  <h5>Giới tính</h5>
                  <div class="merge">
                    <div class="custom-control custom-radio custom-control-inline" >
                      <input type="radio" id="Nam" name="gioiTinh" class="custom-control-input" checked />
                      <label class="custom-control-label" for="Nam">Nam</label>
                    </div>
                    <div class="custom-control custom-radio custom-control-inline" >
                      <input type="radio" id="Nu" name="gioiTinh" class="custom-control-input" />
                      <label class="custom-control-label" for="Nu">Nữ</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="input-div phone">
                <div class="i">
                  <i class="fas fa-phone"></i>
                </div>
                <div class="div">
                  <h5>Số điện thoại</h5>
                  <input type="text" class="input" required />
                </div>
              </div>
              <div class="input-div adress">
                <div class="i">
                  <i class="fas fa-map-marker-alt"></i>
                </div>
                <div class="div">
                  <h5>Địa chỉ</h5>
                  <input type="text" class="input" required />
                </div>
              </div>
            </div>
          </div>

          <div class="row form-group">
            <div class="col-6 form-check">
              <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required
              />
              <label class="form-check-label" for="invalidCheck2">
                <span>Tôi đồng ý với các điều khoản</span>
              </label>
            </div>
            <div class="col-6"><a href="login.html">Trở lại đăng nhập</a></div>
          </div>
          <input type="submit" class="btn" value="ĐĂNG KÝ" />
        </form>
      </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
    <script>
      const inputs = document.querySelectorAll(".input");

      function addcl() {
        let parent = this.parentNode.parentNode;
        parent.classList.add("focus");
      }

      function remcl() {
        let parent = this.parentNode.parentNode;
        if (this.value == "") {
          parent.classList.remove("focus");
        }
      }

      inputs.forEach((input) => {
        input.addEventListener("focus", addcl);
        input.addEventListener("blur", remcl);
      });
    </script>
  </body>
</html>
