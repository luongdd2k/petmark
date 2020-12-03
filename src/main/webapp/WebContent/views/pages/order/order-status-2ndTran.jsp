<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin || Oder Start Transpot</title>
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
	<%@ include file="/WebContent/views/header_nav_admin.jsp" %>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<%@ include file="/WebContent/views/aside_nav_admin.jsp" %>
	<!-- End aside -->

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
                                <li class="breadcrumb-item"><a href="./order-manager.html">Đơn hàng</a></li>
                                <li class="breadcrumb-item active">Trạng thái đơn hàng</li>
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
                                        <i class="fab fa-first-order-alt"></i>
                                        Mã đơn : 185463hg
                                    </h3>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body">

                                    <div style="border: solid 1px black; max-width: 100%; margin: auto; height: 100%;">
                                        <div class="row">
                                            <div class="col-6">
                                                <p style="padding-left: 20px;">Người nhận hàng:</p>
                                                <p style="padding-left: 30px; margin-top: -8px; font-size: 16px;">
                                                    <strong>Nguyễn Văn A</strong></p>
                                                <p style="padding-left: 20px;">Địa chỉ nhận hàng:</p>
                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
                                                    <strong>23
                                                        Xuân Đỉnh, Xuân La, Tây
                                                        Hồ, Hà Nội</strong></p>
                                                <p style="padding-left: 20px;">Trạng thái thanh toán:</p>
                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
                                                    <strong>Chưa thanh toán</strong>
                                                </p>
                                            </div>
                                            <div class="col-6">
                                                <p style="padding-left: 20px;">Số điện thoại:</p>
                                                <p style="padding-left: 30px; margin-top: -8px; font-size: 16px;">
                                                    <strong>0123456789</strong></p>
                                                <p style="padding-left: 20px;">Hình thức thanh toán:</p>
                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
                                                    <strong>COD</strong></p>
                                                <p style="padding-left: 20px;">Trạng thái vận chuyển:</p>
                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
                                                    <strong>Đang giao lần 2</strong></p>
                                            </div>
                                        </div>
                                        <!-- End .row infor-->
                                    </div>
                                    <!--End div .row content-->

                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div style="margin-top: 15px; margin-bottom: 10px;">
                                                <a class="btn btn-custon-rounded-two btn-success"
                                                    href="./order-status-successTran.html">
                                                    <i class="fas fa-check-circle"></i>
                                                    <span> Giao hàng thành công</span></a>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                            <div style="margin-top: 15px; margin-bottom: 10px;">
                                                <a class="btn btn-custon-rounded-two btn-warning"
                                                    href="./order-status-unTran.html">
                                                    <i class="fas fa-times"></i>
                                                    <span> Giao hàng không thành công</span></a>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                        </div>
                                        <div class="col-12 col-sm-6 col-md-3">
                                        </div>
                                    </div>
                                    <!--End Row .Button duyệt-->

                                    <div class="main-table" style="max-width: 1000px;">
                                        <table class="table" style="margin-bottom: -1%;">
                                            <thead class="thead-light">
                                                <tr>
                                                    <th scope="col">Sản phẩm</th>
                                                    <th scope="col">Giá tiền</th>
                                                    <th scope="col">Số lượng</th>
                                                    <th scope="col">Tổng tiền</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="td-center" style="padding-top: 2%;">Vòng cổ chuông cho
                                                        Mèo</td>
                                                    <td class="td-center" style="padding-top: 2%;">120.000 đ</td>
                                                    <td class="td-center" style="padding-top: 2%;">3</td>
                                                    <td class="td-center" style="padding-top: 2%;">360.000 đ</td>
                                                </tr>
                                                <tr>
                                                    <td class="td-center" style="padding-top: 2.5%;">Thức ăn dạng hạt
                                                        cho Mèo</td>
                                                    <td class="td-center" style="padding-top: 2.5%;">350.000 đ</td>
                                                    <td class="td-center" style="padding-top: 2%;">2</td>
                                                    <td class="td-center" style="padding-top: 2%;">700.000 đ</td>
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