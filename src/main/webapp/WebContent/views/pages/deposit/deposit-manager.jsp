<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Admin || Deposit Manager</title>
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
              <h1>ĐƠN ĐẶT CỌC</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item active">Đơn đặt cọc</li>
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
                    Danh sách đơn đặt cọc
                  </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <div class="table-responsive-xl main-table" style="max-width:1000px;">
                    <table class="table" style="margin-bottom: -1%;">
                      <thead class="thead-light">
                        <tr>
                          <th scope="col">Mã đơn cọc</th>
                          <th scope="col">Ngày đặt cọc</th>
                          <th scope="col">Thú cưng</th>
                          <th scope="col">Giá</th>
                          <th scope="col">Giá cọc</th>
                        </tr>
                      </thead>
                      <c:forEach var="list" items="${list }">
                      <tbody>
                        <tr>
                          <td class="td-center" style="padding-top: 2%;"><a href="admin/deposit/deposit-detail/${list.getId() }">${list.getId()}</a></td>
                          <td class="td-center" style="padding-top: 2%;">${list.getDate() }</td>
                          <td class="td-center" style="padding-top: 2%;">${list.getPet().getPetName() }</td>
                          <td class="td-center" style="padding-top: 2%;">${list.getPet().getDisplayPrice(1) }</td>
                          <td class="td-center" style="padding-top: 2%;">${list.getDisplayTotalAmount(1) }</td>
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
                      <div class="pagination-main" style="padding-left:70px;">
                        <nav aria-label="Page navigation example">
                          <ul class="pagination">
                            <li class="page-item">
                              <a class="page-link" href="javascript:" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="javascript:">1</a></li>
                            <li class="page-item"><a class="page-link" href="javascript:">2</a></li>
                            <li class="page-item">
                              <a class="page-link" href="javascript:" aria-label="Next">
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
  <!-- page script -->

</body>

</html>