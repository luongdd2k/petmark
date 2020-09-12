<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin || Employee Manager</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <!--Custo CSS-->
  <link rel="stylesheet" href="dist/css/custom.css">
</head>

<body class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="index.html" class="nav-link">Trang chủ</a>
        </li>
      </ul>

      <!-- SEARCH FORM -->
      <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
          <input class="form-control form-control-navbar" type="search" placeholder="Tìm kiếm ..." aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-navbar" type="submit">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge">15</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">15 Thông báo</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-envelope mr-2"></i> 4 tin nhắn mới
              <span class="float-right text-muted text-sm">3 phút</span>
            </a>
            <div class="dropdown-divider"></div>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-file mr-2"></i> 3 báo cáo mới
              <span class="float-right text-muted text-sm">2 ngày</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">Xem tất cả thông báo</a>
          </div>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"><i
              class="fas fa-th-large"></i></a>
        </li> -->
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-light-primary elevation-4">
      <!-- Brand Logo -->
      <a href="index.html" class="brand-link">
        <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
          style="opacity: .8">
        <span class="brand-text font-weight-light">PET MARK</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          </div>
          <div class="info">
            <a href="pages/examples/profile.html" class="d-block">Trần Ngọc Hải</a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview">
              <a href="index.html" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>
                  Trang chủ
                </p>
              </a>
            </li>
            <li class="nav-header">CỬA HÀNG</li>
            <li class="nav-item">
              <a href="javascript:" class="nav-link active">
                <i class="nav-icon fas fa-th"></i>
                <p>
                  Nhân viên
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/ProductManagement" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                <p>
                  Thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/SpeciesManagement" class="nav-link">
                <i class="nav-icon fas fa-chart-pie"></i>
                <p>
                  Giống thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/AccessoriesManagement" class="nav-link">
                <i class="nav-icon fas fa-tree"></i>
                <p>
                  Phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/CategoryManagement" class="nav-link">
                <i class="nav-icon fas fa-edit"></i>
                <p>
                  Hãng phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-header">QUẢN LÝ</li>
            <li class="nav-item has-treeview">
              <a href="pages/order/order-manager.html" class="nav-link">
                <i class="nav-icon fas fa-table"></i>
                <p>
                  Quản ý đơn hàng
                </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="./deposit/deposit-manager.html" class="nav-link">
                <i class="nav-icon fas fa-calendar-alt"></i>
                <p>
                  Quản lý cọc
                </p>
              </a>
            </li>
            <li class="nav-header">THỐNG KÊ</li>
            <li class="nav-item">
              <a href="./statistical/statistical.html" class="nav-link">
                <i class="nav-icon far fa-chart-bar"></i>
                <p>
                  Thống kê
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon far fa-plus-square"></i>
                <p>
                  Extras
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="pages/examples/login.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Login</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/register.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Register</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/forgot-password.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Forgot Password</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/recover-password.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Recover Password</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/lockscreen.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Lockscreen</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/legacy-user-menu.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Legacy User Menu</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/language-menu.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Language Menu</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/404.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Error 404</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/500.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Error 500</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/pace.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Pace</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="pages/examples/blank.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Blank Page</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="starter.html" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Starter Page</p>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>NHÂN VIÊN</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active">Nhân viên</li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">
                    <i class="far fa-chart-bar"></i>
                    Quản lý nhân viên
                  </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <div class="main-table">
                    <table class="table">
                      <thead class="thead-light">
                        <tr>
<!--                           <th scope="col">Tên đăng nhập</th> -->
                          <th scope="col">Ảnh</th>
                          <th scope="col">Họ và tên</th>
                           <th scope="col">Giới tính</th>
                          <th scope="col">Email</th>
                          <th scope="col">Điện thoại</th>
                          <th scope="col">Địa chỉ</th>
                          <th scope="col">Hành động</th>
                        </tr>
                      </thead>
                      <c:forEach var="user" items="${listAccount }">
                      <tbody>
                        <tr>
<%--                           <th class="td-center td-em-css" scope="row">${user.getUsername() }</th> --%>
                          <td><img class="img-fluid"
                              src="https://toplist.vn/images/800px/dino-studio-anh-vien-cho-be-va-gia-dinh-317623.jpg"
                              alt="" style="max-width: 70px;max-height: 70px;"></td>
                          <td class="td-center td-em-css">${user.getFullName() }</td>
                          <td class="td-center td-em-css">${user.getDisplayGender() }</td>
                          <td class="td-center td-em-css">${user.getEmail() }</td>
                          <td class="td-center td-em-css">${user.getPhone() }</td>
                          <td class="td-center td-em-css">${user.getAddress() }</td>
                          <td class="td-center td-em-css">
                            <div class="dropdown" style="float: left;margin-top: 0.10em">
                              <!-- <div class="btn-group">
                                <a type="button" class="btn btn-outline-info dropdown-toggle" data-toggle="dropdown"
                                  aria-haspopup="true" aria-expanded="false" >
                                  Nhân viên
                              </a>
                                <div class="dropdown-menu">
                                  <a class="dropdown-item" href="#">Khách hàng</a>
                                </div>
                              </div> -->
                              <select name="quyen" id="quyens" style="height: 34px;">
                                <option value="employee" selected>Nhân viên</option>
                                <option value="admin">Admin</option>
                              </select>
                            </div>
                            <div style="float: left; margin-left: 0.75em; margin-top: 0.10em;">
                              <button type="button" class="btn btn-success">Lưu</button>
                            </div>
                            <div style="float: left; margin-left: 10px;margin-top: 0.10em">
                              <button type="button" class="btn btn-danger">Chặn</button>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                      </c:forEach>
                    </table>
                    <hr>
                  </div>
                  <!--End Table-->
                  <div class="row">
                    <div class="col-12 col-sm-6 col-md-3">
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                    </div>
                    <div class="col-12 col-sm-6 col-md-3">
                      <div class="pagination-main" style="padding-left: 30px;">
                        <nav aria-label="Page navigation example">
                          <ul class="pagination">
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>
                      </div>
                      <!-- End Page Navigation -->
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.row -->
    </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    <!-- <a id="back-to-top" href="#" class="btn btn-primary back-to-top" role="button" aria-label="Scroll to top">
      <i class="fas fa-chevron-up"></i>
    </a> -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmark </a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
</body>

</html>