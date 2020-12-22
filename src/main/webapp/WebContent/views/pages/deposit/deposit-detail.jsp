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
    <link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" type="text/css"    href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- jsGrid -->
    <link rel="stylesheet" type="text/css"    href="plugins/jsgrid/jsgrid.min.css">
    <link rel="stylesheet" type="text/css"    href="plugins/jsgrid/jsgrid-theme.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css"    href="dist/css/custom.css">
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
                                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                <li class="breadcrumb-item"><a href="admin/deposit">Đơn đặt cọc</a></li>
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
                                        Mã đơn cọc : ${deposit.getId() }
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
	                                                    href="admin/deposit/return-deposit/${deposit.getId() }">
	                                                    <i class="fas fa-calendar-times"></i>
	                                                    <span> Hoàn tiền đơn này</span></a>
	                                            </div>
	                                        </div>
	                                        <div class="col-12 col-sm-6 col-md-3">
	                                            <div id="huy" style="float: right; margin-bottom: 15px;">
	                                                <a type="button" class="btn btn-danger"
	                                                    href="admin/deposit/cancel-deposit/${deposit.getId() }">
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
	                                                    <strong>${deposit.getAccount().getFullName() }</strong>
	                                                </p>
	                                                <p style="padding-left: 20px;">Địa chỉ :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
	                                                    <strong>${deposit.getAccount().getAddress() }</strong>
	                                                </p>
	                                            </div>
	                                            <div class="col-6">
	                                                <p style="padding-left: 20px;">Số điện thoại :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px; font-size: 16px;">
	                                                    <strong>${deposit.getAccount().getPhone() }</strong></p>
	                                           		<p style="padding-left: 20px;">Trạng thái :</p>
	                                                <p style="padding-left: 30px; margin-top: -8px;font-size: 16px;">
	                                                    <strong id="status-deposit">${deposit.getStatus() }</strong></p> 
	                                            </div>
	                                        </div>
	                                        <!-- End .row infor-->
	                                    </div>
	                                    <!--End div .row content-->
	                                    
	                                    <div id="thanh-toan" class="row" >
					                      <div class="col-12 col-sm-6 col-md-3">
					                        <div style="margin-top: 15px; margin-bottom: 10px">
					                          <a href="admin/deposit/paid-deposit/${deposit.getId() }" type="button" class="btn btn-primary"
					                            onclick="hienThiBtnBD(true)"
					                          >
					                            <i class="fas fa-calendar-check"></i>
					                            <span>Đã thanh toán</span>
					                          </a>
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
                                                    <th scope="col">Số lượng</th>
                                                    <th scope="col">Màu lông</th>
                                                    <th scope="col">Màu mắt</th>
                                                    <th scope="col">Đã cọc</th>
                                                    <th scope="col">Còn lại</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="td-center" style="padding-top: 2%;">${deposit.getPet().getPetName() }</td>
                                                    <td class="td-center" style="padding-top: 2%;">${deposit.getAmount() }</td>
                                                    <td class="td-center" style="padding-top: 2%;">${deposit.getColor().getFullColor() }</td>
                                                    <td class="td-center" style="padding-top: 2%;">${deposit.getColor().getEyeColor() }</td>
                                                   <td class="td-center" style="padding-top: 2%;">${deposit.getDisplayTotalAmount(1) }</td>
                                                    <td class="td-center" style="padding-top: 2%;">${total } đ</td>
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
            <input type="hidden" id="active" value="Quản lý cọc">
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
    <script src="js/active.js"></script>
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