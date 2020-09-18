<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin || Statistical</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->

  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="../../dist/css/custom.css">

</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <!-- Site wrapper -->
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="../../index.html" class="nav-link">Trang chủ</a>
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
              <a href="javascript:" class="nav-link">
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
              <a href="../order/order-manager.html" class="nav-link">
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
              <a href="../statistical/statistical.html" class="nav-link  active">
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
              <h1>THỐNG KÊ</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="../../index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active">Thống kê</a></li>
              </ol>
            </div>
          </div>
        </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-6">
              <div class="card">
                <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                    <h3 class="card-title">Online Store Visitors</h3>
                    <a href="javascript:void(0);">View Report</a>
                  </div>
                </div>
                <div class="card-body">
                  <div class="d-flex">
                    <p class="d-flex flex-column">
                      <span class="text-bold text-lg">820</span>
                      <span>Visitors Over Time</span>
                    </p>
                    <p class="ml-auto d-flex flex-column text-right">
                      <span class="text-success">
                        <i class="fas fa-arrow-up"></i> 12.5%
                      </span>
                      <span class="text-muted">Since last week</span>
                    </p>
                  </div>
                  <!-- /.d-flex -->

                  <div class="position-relative mb-4">
                    <canvas id="visitors-chart" height="200"></canvas>
                  </div>

                  <div class="d-flex flex-row justify-content-end">
                    <span class="mr-2">
                      <i class="fas fa-square text-primary"></i> This Week
                    </span>

                    <span>
                      <i class="fas fa-square text-gray"></i> Last Week
                    </span>
                  </div>
                </div>
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col-md-6 -->
            <div class="col-lg-6">
              <div class="card">
                <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                    <h3 class="card-title">Sales</h3>
                    <a href="javascript:void(0);">View Report</a>
                  </div>
                </div>
                <div class="card-body">
                  <div class="d-flex">
                    <p class="d-flex flex-column">
                      <span class="text-bold text-lg">$18,230.00</span>
                      <span>Sales Over Time</span>
                    </p>
                    <p class="ml-auto d-flex flex-column text-right">
                      <span class="text-success">
                        <i class="fas fa-arrow-up"></i> 33.1%
                      </span>
                      <span class="text-muted">Since last month</span>
                    </p>
                  </div>
                  <!-- /.d-flex -->

                  <div class="position-relative mb-4">
                    <canvas id="sales-chart" height="200"></canvas>
                  </div>

                  <div class="d-flex flex-row justify-content-end">
                    <span class="mr-2">
                      <i class="fas fa-square text-primary"></i> This year
                    </span>

                    <span>
                      <i class="fas fa-square text-gray"></i> Last year
                    </span>
                  </div>
                </div>
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col-md-6 -->
          </div>
          <!-- /.row -->
        </div>
        <!-- End container-fluid-->
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
  <!-- overlayScrollbars -->
  <script src="../../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../../dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="../../dist/js/demo.js"></script>
  <!-- OPTIONAL SCRIPTS -->
  <script src="../../plugins/chart.js/Chart.min.js"></script>
  <script src="../../dist/js/demo.js"></script>
  <script src="../../dist/js/pages/dashboard3.js"></script>
</body>

</html>