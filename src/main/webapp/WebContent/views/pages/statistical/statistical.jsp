<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin || Statistical</title>
  <base href="${pageContext.servletContext.contextPath}/">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->

  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="dist/css/custom.css">

</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <!-- Site wrapper -->
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
              <h1>THỐNG KÊ</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
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
            <div class="col-lg-12">
              <div class="card">
                <div class="card-header border-0">
                  <div class="d-flex justify-content-between">
                    <h3 class="card-title">Tổng doanh thu tháng</h3>
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
                      <i class="fas fa-square text-primary"></i> Tháng này
                    </span>

                    <span>
                      <i class="fas fa-square text-gray"></i> Tháng trước
                    </span>
                  </div>
                </div>
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col-lg-12 -->
            <div class="col-lg-12">
            	<div class="card">
            		<div class="card-header border-0">
            			<div class="d-flex justify-content-between">
                    		<h3 class="card-title">Danh sách đơn hàng chưa duyệt</h3>
                  		</div>
            		</div>
            		<div class="card-body">
            			<div class="table-responsive-xl main-table"  style="max-width: 1000px;">
            				<table class="table table-hover" >
							  	<thead>
							    	<tr class="table-primary">
										<th scope="col">Mã đơn hàng</th>
										<th scope="col">Người mua</th>
										<th scope="col">Ngày đặt</th>
										<th scope="col">Trạng thái thanh toán</th>
										<th scope="col">Trạng thái giao hàng</th>
										<th scope="col">Tổng tiền</th>
									</tr>
							  </thead>
	<%-- 						  <c:forEach var="list" items="${list }"> --%>
								<tbody>
									<tr  class="table-warning">
										<td class="td-center" style="padding-top: 2%;">
											<a href="javascript:">Điền vào đây nhá</a>
										</td>
										<td class="td-center">Điền vào đây nhá</td>
										<td class="td-center">Điền vào đây nhá</td>
										<td class="td-center">Điền vào đây nhá</td>
										<td class="td-center">Điền vào đây nhá</td>
										<td class="td-center">Điền vào đây nhá</td>
									</tr>
								</tbody>
	<%-- 						</c:forEach> --%>
							</table>
						</div>
            		</div>
				</div>
            </div>
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
  <script src="plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="dist/js/demo.js"></script>
  <!-- OPTIONAL SCRIPTS -->
  <script src="plugins/chart.js/Chart.min.js"></script>
  <script src="dist/js/demo.js"></script>
  <script src="dist/js/pages/dashboard3.js"></script>
</body>

</html>