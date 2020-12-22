<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <base href="${pageContext.servletContext.contextPath}/">
  <title>Admin || Home Page</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" type="text/css"    href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
    .hide{
      display: none;
      visibility: hidden;
    }
  </style>
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
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">TRANG CHỦ</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>${doanhThu }</h3>

                <p>Doanh thu tháng</p>
              </div>
              <div class="icon">
                <i class="fas fa-mobile-alt"></i>
              </div>
              <a href="javascript:#" class="small-box-footer">XEM NGAY <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>${web }</h3>

                <p>Đơn hàng mới</p>
              </div>
              <div class="icon">
                <i class="fas fa-laptop-code"></i>
              </div>
              <a href="admin/orders?sortValue=1" class="small-box-footer">XEM NGAY <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>${bl }</h3>

                <p>Blog mới cần duyệt</p>
              </div>
              <div class="icon">
                <i class="fas fa-blog"></i>
              </div>
              <a href="admin/blog/show/2" class="small-box-footer">XEM NGAY <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>${danggiao }</h3>

                <p>Tổng đơn giao trong ngày</p>
              </div>
              <div class="icon">
                <i class="fas fa-dolly"></i>
              </div>
              <a href="admin/orders/show-delivering" class="small-box-footer">XEM NGAY <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
        
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Tổng doanh thu</h3>
                </div>
              </div>
              <div class="card-body">
                <div class="d-flex">
                  <p class="d-flex flex-column">
                    <span class="text-bold text-lg">820</span> <span>Tổng</span>
                  </p>
                  <p class="ml-auto d-flex flex-column text-right">
											<span class="text-success"> <i class="fas fa-arrow-up"></i>
												12.5%
											</span> <span class="text-muted">Từ tháng trước</span>
                  </p>
                </div>
                <!-- /.d-flex -->

                <div class="position-relative mb-4">
                  <canvas id="visitors-chart" height="200"></canvas>
                </div>

                <div class="d-flex flex-row justify-content-end">
										<span class="mr-2"> <i
                                                class="fas fa-square text-primary"></i> Tháng này
										</span> <span> <i class="fas fa-square text-gray"></i> Tháng
											trước
										</span>
                </div>
              </div>
            </div>
            <!-- /.card -->
          </div>

          <div class="col-lg-12">
            <div class="card table-responsive"
                 style="max-width: 1000px; margin: 0 auto;">
              <h4 style="margin-left: 10px;">Đơn hàng chưa xét duyệt</h4>
              <table class="table table-hover">
                <thead>
                <tr class="bg-info">
                  <th scope="col">Mã đơn hàng</th>
                  <th scope="col">Người mua</th>
                  <th scope="col">Ngày đặt</th>
                  <th scope="col">Trạng thái giao hàng</th>
                  <th scope="col">Trạng thái thanh toán</th>
                  <th scope="col">Tổng tiền</th>
                </tr>
                </thead>
                <c:forEach var="list" items="${list }">
                  <tbody>
                  <tr>
                    <td><a href="admin/orders/detail/${list.getId() }">${list.getId() }</a>
                    </td>
                    <td>${list.getAccount().getUsername() }</td>
                    <td>${list.getDate() }</td>
                    <td>${list.getPaymentStatus() }</td>
                    <td>${list.getDeliveryStatus() }</td>
                    <td>${list.getDisplayTotalAmount() }</td>
                  </tr>
                  </tbody>
                </c:forEach>
              </table>
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

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <footer class="main-footer">
  <div class="float-right d-none d-sm-block">
    <b>Version</b> 1.0.0
  </div>
  <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmark
  </a>.
  </strong> All rights reserved.
  <input type="hidden" id="active" value="Trang chủ">
</footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script
        src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- OPTIONAL SCRIPTS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<script src="dist/js/demo.js"></script>
<script src="js/active.js"></script>
<script src="dist/js/pages/dashboard3.js"></script>
<script>
  hideRole();
  function hideRole(){
    let roleP = document.getElementById("role-user");
    let hideLi = document.getElementsByClassName("hide-role");
      for (let i=0;i<hideLi.length;i++){
        if(roleP.value == "ROLE_STAFF"){
          hideLi[i].classList.add("hide");
        }
      }
  }
</script>
</body>
</html>
