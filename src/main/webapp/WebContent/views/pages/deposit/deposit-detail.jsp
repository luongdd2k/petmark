<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin || Chi tiết đơn cọc</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jsGrid -->
    <link rel="stylesheet" href="plugins/jsgrid/jsgrid.min.css">
    <link rel="stylesheet" href="plugins/jsgrid/jsgrid-theme.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="dist/css/custom.css">
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="javascript:" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="index4.html" class="nav-link">Trang chủ</a>
                </li>
            </ul>

            <!-- SEARCH FORM -->
            <form class="form-inline ml-3">
                <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="TÃ¬m kiáº¿m ..."
                        aria-label="Search">
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
                    <a class="nav-link" data-toggle="dropdown" href="javascript:">
                        <i class="far fa-bell"></i>
                        <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Thông báo</span>
                        <div class="dropdown-divider"></div>
                        <a href="javascript:" class="dropdown-item">
                            <i class="fas fa-envelope mr-2"></i> 4 tin nhắn mới
                            <span class="float-right text-muted text-sm">3 phút</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <div class="dropdown-divider"></div>
                        <a href="javascript:" class="dropdown-item">
                            <i class="fas fa-file mr-2"></i> 3 báo cáo mới
                            <span class="float-right text-muted text-sm">2 ngày</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="javascript:" class="dropdown-item dropdown-footer">Xem tất cả thông báo</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/examples/recover-password.html">
                        <i class="fas fa-unlock-alt"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-light-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index.html" class="brand-link">
                <img src="dist/img/AdminLTELogo.jpg" alt="AdminLTE Logo"
                    class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Pet Mart</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="admin/UserManagement/show-profile" class="d-block">${account.getFullName() }</a>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
     with font-awesome or any other icon font library -->
                        <li class="nav-item has-treeview">
                            <a href="${pageContext.servletContext.contextPath}/LoggedInSuccessfully" class="nav-link">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Trang chủ
                                </p>
                            </a>
                        </li>
            <li class="nav-header">CỬA HÀNG</li>
            <li class="nav-item">
              <a href="admin/UserManagement" class="nav-link">
                <i class="nav-icon fas fa-users"></i>
                <p>
                  Nhân viên
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/ProductManagement" class="nav-link">
                <i class="nav-icon fas fa-paw"></i>
                <p>
                  Thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/SpeciesManagement" class="nav-link">
                <i class="nav-icon fas fa-dog"></i>
                <p>
                  Giống thú cưng
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/AccessoriesManagement" class="nav-link">
                <i class="nav-icon fab fa-simplybuilt"></i>
                <p>
                  Phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-item has-treeview">
              <a href="admin/CategoryManagement" class="nav-link">
                <i class="nav-icon fab fa-bandcamp"></i>
                <p>
                  Hãng phụ kiện
                </p>
              </a>
            </li>
            <li class="nav-header">QUẢN LÝ</li>
						<li class="nav-item has-treeview"><a
							href="admin/orders" class="nav-link"> <i
								class="nav-icon fas fa-table"></i>
								<p>Quản lý đơn hàng</p>
						</a></li>
            <li class="nav-item">
              <a href="admin/deposit" class="nav-link active">
                <i class="nav-icon fas fa-receipt"></i>
                <p>
                  Quản lý cọc
                </p>
              </a>
            </li>
                        <li class="nav-header">THỐNG KÊ</li>
                        <li class="nav-item">
                            <a href="statistical/statistical.html" class="nav-link">
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
                                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                <li class="breadcrumb-item"><a href="./deposit-manager.html">Đơn đặt cọc</a></li>
                                <li class="breadcrumb-item active">Chi tiết đơn đặt cọc</li>
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
                                        <i class="nav-icon fas fa-receipt"></i>
                                        Mã đơn : 185463hg
                                    </h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">
                                	<div class="information" style="max-width: 62%; margin: auto; height: 100%; margin-bottom: 10px;">
	                                    <div class="row">
	                                        <div class="col-12 col-sm-6 col-md-3">
	                                        </div>
	                                        <div class="col-12 col-sm-6 col-md-3">
	                                        </div>
	                                        <div class="col-12 col-sm-6 col-md-3">
	                                        	<div id="hoan-tien" style="float: right; margin-bottom: 15px;">
	                                                <a type="button" class="btn btn-danger"
	                                                    href="./deposit-status-cancle.html">
	                                                    <i class="fas fa-calendar-times"></i>
	                                                    <span> Hoàn tiền đơn này</span></a>
	                                            </div>
	                                        </div>
	                                        <div class="col-12 col-sm-6 col-md-3">
	                                            <div id="huy" style="float: right; margin-bottom: 15px;">
	                                                <a type="button" class="btn btn-danger"
	                                                    href="./deposit-status-cancle.html">
	                                                    <i class="fas fa-calendar-times"></i>
	                                                    <span> Hủy đơn cọc này</span></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <!--End Row .Button Huy-->
	
	                                    <div id="information" style="border: solid 1px black; max-width: 100%; margin: auto; height: 100%; margin-bottom: 10px;">
	                                        <div class="row">
	                                            <div class="col-6">
	                                                <p style="padding-left: 20px;">Người đặt cọc :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px; font-size: 16px;">
	                                                    <strong>Nguyễn Văn A</strong>
	                                                </p>
	                                                <p style="padding-left: 20px;">Địa chỉ :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
	                                                    <strong>23 Xuân Đỉnh</strong>
	                                                </p>
	                                            </div>
	                                            <div class="col-6">
	                                                <p style="padding-left: 20px;">Số điện thoại :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px; font-size: 16px;">
	                                                    <strong>0123456789</strong></p>
	                                           		<p style="padding-left: 20px;">Trạng thái :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
	                                                    <strong id="status-deposit">Đã hủy - Chưa hoàn tiền</strong></p> 
	                                            </div>
	                                        </div>
	                                        <!-- End .row infor-->
	                                    </div>
	                                    <!--End div .row content-->
	                                    
	                                    <div id="thanh-toan" class="row" >
					                      <div class="col-12 col-sm-6 col-md-3">
					                        <div style="margin-top: 15px; margin-bottom: 10px">
					                          <button
					                            onclick="hienThiBtnBD(true)"
					                            class="btn btn-custon-three btn-primary"
					                          >
					                            <i class="fas fa-calendar-check"></i>
					                            <span>Đã thanh toán</span>
					                          </button>
					                        </div>
					                      </div>
					                      <div class="col-12 col-sm-6 col-md-3"></div>
					                      <div class="col-12 col-sm-6 col-md-3"></div>
					                      <div class="col-12 col-sm-6 col-md-3"></div>
					                    </div>
					                    <!--End Row .Button duyệt-->
									</div>
                                    <div class="main-table" style="max-width: 1000px;">
                                        <table class="table" style="margin-bottom: -1%;">
                                            <thead class="thead-light">
                                                <tr>
                                                    <th scope="col">Tên thú cưng</th>
                                                    <th scope="col">Màu lông</th>
                                                    <th scope="col">Màu mắt</th>
                                                    <th scope="col">Đã cọc</th>
                                                    <th scope="col">Còn lại</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="td-center" style="padding-top: 2%;">Husky Shibarian</td>
                                                    <td class="td-center" style="padding-top: 2%;">Xám</td>
                                                    <td class="td-center" style="padding-top: 2%;">Xanh</td>
                                                    <td class="td-center" style="padding-top: 2%;">2700000</td>
                                                    <td class="td-center" style="padding-top: 2%;">5400000</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <hr>
                                    </div>
                                    <!--End Table-->
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
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- jsGrid -->
    <script src="plugins/jsgrid/demos/db.js"></script>
    <script src="plugins/jsgrid/jsgrid.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
    <script type="text/javascript">
		let stt = $("#status-deposit").html();
		$(function(){
			if(stt == "Đã thanh toán"){
				$("#hoan-tien").addClass("hide");
				$("#huy").addClass("hide");
				$("#thanh-toan").addClass("hide");
				$("#information").css("background-color","#cefcce");
			}else if(stt == "Đã hủy"){
				$("#hoan-tien").addClass("hide");
				$("#huy").addClass("hide");
				$("#thanh-toan").addClass("hide");
				$("#information").css("background-color","#f8d6d0");
			}else if(stt == "Đã đặt cọc"){
				$("#hoan-tien").removeClass("hide");
				$("#huy").removeClass("hide");
				$("#thanh-toan").removeClass("hide");
				$("#information").css("background-color","#b9caec");
			}else if(stt == "Đã hủy - Chưa hoàn tiền"){
				$("#hoan-tien").removeClass("hide");
				$("#huy").addClass("hide");
				$("#thanh-toan").addClass("hide");
				$("#information").css("background-color","#fef889");
			}
				
		})
    </script>
    <!-- page script -->

</body>

</html>