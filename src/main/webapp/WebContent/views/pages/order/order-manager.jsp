<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin || Oder Manager</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jsGrid -->
  <link rel="stylesheet" href="../../plugins/jsgrid/jsgrid.min.css">
  <link rel="stylesheet" href="../../plugins/jsgrid/jsgrid-theme.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="../../dist/css/custom.css">
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
          <a href="../../index4.html" class="nav-link">Trang chủ</a>
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
        <li class="nav-item">
          <a class="nav-link" href="../../pages/examples/recover-password.html">
            <i class="fas fa-unlock-alt"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="../../pages/examples/login.html">
            <i class="fas fa-sign-out-alt"></i>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-light-primary elevation-4">
      <!-- Brand Logo -->
      <a href="../../index.html" class="brand-link">
        <img src="../../dist/img/AdminLTELogo.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
          style="opacity: .8">
        <span class="brand-text font-weight-light">Pet Mart</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          </div>
          <div class="info">
            <a href="../examples/profile.html" class="d-block">Trần Ngọc Hải</a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
     with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview">
              <a href="../../index.html" class="nav-link">
                <i class="nav-icon fas fa-home"></i>
                <p>
                  Trang chủ
                </p>
              </a>
            </li>
            <li class="nav-header">CỬA HÀNG</li>
            <li class="nav-item">
              <a href="../employee-manager.html" class="nav-link">
                <i class="nav-icon fas fa-users"></i>
                <p>
                  Nhân viên
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="../pet/pet-manager.html" class="nav-link">
                <i class="nav-icon fas fa-paw"></i>
                <p>
                  Thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="../bread/pet-bread.html" class="nav-link">
                <i class="nav-icon fas fa-dog"></i>
                <p>
                  Giống thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="../accessory/accessory-manager.html" class="nav-link">
                <i class="nav-icon fab fa-simplybuilt"></i>
                <p>
                  Phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="../category/category-manager.html" class="nav-link">
                <i class="nav-icon fab fa-bandcamp"></i>
                <p>
                  Hãng phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-header">QUẢN LÝ</li>
            <li class="nav-item has-treeview">
              <a href="javascript:" class="nav-link active">
                <i class="nav-icon fas fa-table"></i>
                <p>
                  Quản ý đơn hàng
                </p>
              </a>
            </li>
            <li class="nav-item">
              <a href="../deposit/deposit-manager.html" class="nav-link">
                <i class="nav-icon fas fa-receipt"></i>
                <p>
                  Quản lý cọc
                </p>
              </a>
            </li>
            <li class="nav-header">THỐNG KÊ</li>
            <li class="nav-item">
              <a href="../statistical/statistical.html" class="nav-link">
                <i class="nav-icon far fa-chart-bar"></i>
                <p>
                  Thống kê
                </p>
              </a>
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
              <h1>ĐƠN HÀNG</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="../../index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active">Đơn hàng</li>
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
                    <i class="fas fa-table"></i>
                    Danh sách đơn hàng
                  </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <div class="table-responsive-xl main-table" style="max-width:1000px;">
                    <table class="table" style="margin-bottom: -1%;">
                      <thead class="thead-light">
                        <tr>
                          <th scope="col">STT</th>
                          <th scope="col">Mã đơn hàng</th>
                          <th scope="col">Ngày đặt</th>
                          <th scope="col">Trạng thái thanh toán</th>
                          <th scope="col">Trạng thái giao hàng</th>
                          <th scope="col">Tổng tiền</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <th scope="row" class="td-center" style="padding-top: 2%;">1</th>
                          <td class="td-center" style="padding-top: 2%;"><a href="./order-brower.html">185463hg</a></td>
                          <td class="td-center" style="padding-top: 2%;">20/05/2020</td>
                          <td class="td-center" style="padding-top: 2%;">Đã hủy bỏ</td>
                          <td class="td-center" style="padding-top: 2%;">Đã hủy</td>
                          <td class="td-center" style="padding-top: 2%;">450.000 đ</td>
                        </tr>
                        <tr>
                          <th scope="row" class="td-center" style="padding-top: 2.5%;">2</th>
                          <td class="td-center" style="padding-top: 2.5%;"><a href="order-brower.html">9547813wv</a>
                          </td>
                          <td class="td-center" style="padding-top: 2.5%;">21/05/2020</td>
                          <td class="td-center" style="padding-top: 2.5%;">Đã thanh toán</td>
                          <td class="td-center" style="padding-top: 2%;">Chờ giao hàng</td>
                          <td class="td-center" style="padding-top: 2%;">620.000</td>
                        </tr>
                        <tr>
                          <th scope="row" class="td-center" style="padding-top: 30px;">3</th>
                          <td class="td-center" style="padding-top: 2.5%;"><a href="order-brower.html">15471i4d</a></td>
                          <td class="td-center" style="padding-top: 2%;">22/05/2020</td>
                          <td class="td-center" style="padding-top: 2%;">Chưa thanh toán</td>
                          <td class="td-center" style="padding-top: 2%;">Chờ xét duyệt</td>
                          <td class="td-center" style="padding-top: 2%;">1.060.000 đ</td>
                        </tr>
                        <tr>
                          <th scope="row" class="td-center" style="padding-top: 30px;">4</th>
                          <td class="td-center" style="padding-top: 2.5%;"><a href="order-brower.html">45sg145hg</a>
                          </td>
                          <td class="td-center" style="padding-top: 2%;">27/04/2020</td>
                          <td class="td-center" style="padding-top: 2%;">Chưa thanh toán</td>
                          <td class="td-center" style="padding-top: 2%;">Đang giao lần 2</td>
                          <td class="td-center" style="padding-top: 2%;">830.000 đ</td>
                        </tr>
                        <tr>
                          <th scope="row" class="td-center" style="padding-top: 30px;">5</th>
                          <td class="td-center" style="padding-top: 2.5%;"><a href="order-brower.html">571dt5er</a></td>
                          <td class="td-center" style="padding-top: 2%;">02/04/2020</td>
                          <td class="td-center" style="padding-top: 2%;">Đã thanh toán</td>
                          <td class="td-center" style="padding-top: 2%;">Giao hàng thành công</td>
                          <td class="td-center" style="padding-top: 2%;">120.000 đ</td>
                        </tr>
                      </tbody>
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
                      <div class="pagination-main" style="padding-left:70px;">
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
        <!-- /.container-fluid -->
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="float-right d-none d-sm-block">
        <b>Version</b> 1.0.0
      </div>
      <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart </a>.</strong> All rights
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
  <script src="../../plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- jsGrid -->
  <script src="../../plugins/jsgrid/demos/db.js"></script>
  <script src="../../plugins/jsgrid/jsgrid.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="../../dist/js/demo.js"></script>
  <!-- page script -->

</body>

</html>