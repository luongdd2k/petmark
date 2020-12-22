<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Admin || Accessori Manager</title>
    <base href="${pageContext.servletContext.contextPath}/">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" type="text/css"    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css"    href="plugins/fontawesome-free/css/all.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" type="text/css"   
          href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" type="text/css"    href="dist/css/adminlte.min.css" />
    <!-- Google Font: Source Sans Pro -->
    <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
            rel="stylesheet" />
    <link rel="stylesheet" type="text/css"    href="dist/css/custom.css" />
    <link rel="stylesheet" type="text/css"    href="css/employee.css">
    <style>
        .card-content{
            max-width: 900px;
            margin: 0  auto;
        }
        .button-group-right{
            text-align: right;
            margin-bottom: 5px ;
        }
        .button-group-left{
            text-align: left;
            margin-bottom: 5px ;
        }
        .button-group-center{
            text-align: center;

        }
        .hide{
            display: none;
            visibility: hidden;
        }
        .custom-file-input{

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
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>PHỤ KIỆN</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="index4.html">Trang
                                chủ</a></li>
                            <li class="breadcrumb-item active">Phụ kiện</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- COLOR PALETTE -->
                <div class="card card-default color-palette-box">
                    <div class="card-header">
                        <h3 class="card-title">
                            <i class="fab fa-simplybuilt"></i> Thông tin chi tiết phụ kiện
                        </h3>
                    </div>


                    <div class="card-body">
                        <div class="row card-content">
                            <div class="col-12">
                                <form id="form-detail" action="admin/AccessoriesManagement/UpdateAccessories">
                                <input type="hidden" class="form-control" id="id" name="id" value="${acc.getId() }">
                                <input type="hidden" class="form-control" id="ngay" name="ngay" value="${acc.getDate() }">
                                    <div class="row">
                                        <div class="form-group col-6">
                                            <label for="nameAccDetail">Tên phụ kiện</label>
                                            <input type="text" class="form-control" id="nameAccDetail" name="ten" value="${acc.getName() }">
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-6">
                                                <label for="priceAcc">Giá</label>
                                                <input type="text" name="gia" class="form-control" id="priceAcc" value="${acc.getPrice() }">
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="amountAcc">Số lượng</label>
                                                <input type="text" class="form-control" name="soLuong" id="amountAcc" value="${acc.getAmount() }">
                                            </div>
                                        </div>
                                        <div class="form-group col-6">
                                            <label for="categoryAcc">Hãng phụ kiện</label>
                                            <select class="form-control" id="categoryAcc" name="hang">
                                                <c:forEach var="category" items="${listCategory }">
															<option value="${category.id }">${ category.getName()}</option>
														</c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-6">
                                            <label for="statusAcc">Trạng thái</label>
                                            <select class="form-control" id="statusAcc" name="trangThai">
                                               <c:forEach var="status" items="${listStatus }">
															<option value="${status }">${status }</option>
														</c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-12">
                                            <label for="desAcc">Mô tả</label>
                                            <textarea class="form-control" id="desAcc" rows="2" name="moTa">${acc.getDescription() }</textarea>
                                        </div>
                                        <div class="form-group col-12 button-group-center" >
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-save"></i> Cập nhật
                                            </button>
                                            <button onclick="showImage()" type="button" class="btn btn-info">
                                                <i class="fas fa-save"></i> Hình ảnh
                                            </button>
                                            <button type="button" class="btn btn-danger">
                                                <i class="fas fa-window-close"></i> Hủy
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <form id="form-color" class="hide" action="admin/AccessoriesManagement/addColor" method="post">
                                    <div class="row">
                                    <input type="hidden" class="form-control" id="id" name="id" value="${acc.getId() }">
                                        <div class="form-group col-6">
                                            <label for="nameAcc">Tên phụ kiện</label>
                                            <input type="text" class="form-control" id="nameAcc" value="${acc.getName() }">
                                        </div>
                                            <div class="form-group col-6">
                                               <label for="colorPet">Màu sắc</label> <input
															type="text" class="form-control" id="color" name="mau">
                                            </div>
                                        <div class="form-group col-12 button-group-center" >
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-save"></i> Lưu
                                            </button>
                                            <button onclick="hideColor()" type="button" class="btn btn-danger">
                                                <i class="fas fa-window-close"></i> Hủy
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <form id="form-size" class="hide" action="admin/AccessoriesManagement/addSize" method="post">
                                <input type="hidden" class="form-control" id="id" name="id" value="${acc.getId() }">
                                    <div class="row">
                                        <div class="form-group col-6">
                                            <label for="nameAccc">Tên phụ kiện (<span style="color: red;">*</span>)</label>
                                            <input type="text" class="form-control" id="nameAccc" value="${acc.getName() }">
                                        </div>
                                        <div class="form-group col-6">
                                            <label for="sizeAcc">Kích thước (<span style="color: red;">*</span>)</label>
                                            <select class="form-control selectpicker" id="sizeAcc" name="size">
                                                <c:forEach var="sizes" items="${sizes }">
                                                <option value="${sizes }">${sizes }</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="form-group col-12 button-group-center" >
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-save"></i> Lưu
                                            </button>
                                            <button onclick="hideSize()" type="button" class="btn btn-danger">
                                                <i class="fas fa-window-close"></i> Hủy
                                            </button>
                                        </div>
                                    </div>
                                </form>
                                <form id="form-image"  class="hide" action="admin/AccessoriesManagement/addImg" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="id" value="${acc.getId() }">
                                    <div class="row">
                                        <div class="form-group col-3">
                                            <label class="custom-file-label" for="customFile">Chọn hình ảnh</label>
                                            <input type="file" class="custom-file-input" id="customFile" name="avatar">
                                        </div>
                                        <div class="form-group col-3">
                                            <label class="custom-file-label" for="customFile1">Chọn hình ảnh</label>
                                            <input type="file" class="custom-file-input" id="customFile1" name="img1">
                                        </div>
                                        <div class="form-group col-3">
                                            <label class="custom-file-label" for="customFile2">Chọn hình ảnh</label>
                                            <input type="file" class="custom-file-input" id="customFile2" name="img2">
                                        </div>
                                        <div class="form-group col-3">
                                            <label class="custom-file-label" for="customFile3">Chọn hình ảnh</label>
                                            <input type="file" class="custom-file-input" id="customFile3" name="img3">
                                        </div>
                                        <div class="form-group col-12 button-group-center" >
                                            <button type="submit" class="btn btn-success">
                                                <i class="fas fa-save"></i> Lưu
                                            </button>
                                            <button onclick="hideImage()" type="button" class="btn btn-danger">
                                                <i class="fas fa-window-close"></i> Hủy
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-6">
                                <div class="table-responsive main-table">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr class="bg-info">
                                            <th scope="col">Tên phụ kiện</th>
                                            <th scope="col">Màu sắc</th>
                                        </tr>
                                        </thead>
                                            <tbody>
                                            <c:forEach var="color" items="${color }">
                                                <tr>
                                                    <td>${color.getAccessories().getName() }</td>
                                                    <td>${color.getColorAccessories() }</td>
                                                </tr>
                                                </c:forEach>
                                            </tbody>
                                    </table>
                                </div>
                                <!--End Table-->
                                <div class="button-group-left">
                                    <button onclick="showColor()" type="button" class="btn btn-primary" id="new-color">
                                        <i class="fas fa-plus-circle"></i> Thêm mới
                                    </button>
                                </div>
                            </div>
                            <!--End Col-6-->
                            <div class="col-6">
                                <div class="table-responsive main-table">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr class="bg-info">
                                            <th scope="col">Tên phụ kiện</th>
                                            <th scope="col">Kích thước</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                         <c:forEach var="size" items="${size }">
                                                <tr>
                                                    <td>${size.getAccessories().getName() }</td>
                                                    <td>${size.getSizeName() }</td>
                                                </tr>
                                                </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!--End Table-->
                                <div class="button-group-right">
                                    <button onclick="showSize()" type="button" class="btn btn-primary" id="new-size">
                                        <i class="fas fa-plus-circle"></i> Thêm mới
                                    </button>
                                </div>
                            </div>
                            <!--End Col-6-->
                        </div>
                        <!-- End row -->
                        <div class="pagination-main" style="padding-left: 85%">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <c:forEach begin="1" end="${totalPage }" var="i">
                                    <li class="page-item"><a class="page-link" href="admin/AccessoriesManagement?targetPage=${i }">${i }</a>
                                        </c:forEach>
                                </ul>
                            </nav>
                        </div>
                        <!-- End Page Navigation -->
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
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
        <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Petmart
        </a>.
        </strong> All rights reserved.
        <input type="hidden" id="active" value="Phụ kiện">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="js/active.js"></script>
<script type="text/javascript" src="Script/QLPK.js"></script>
<script type="text/javascript">
    $('#sizeAcc').change(function () {
        var selectedItem = $('#sizeAcc').val();
        console.log("Kích thước "+selectedItem);
    });
    $('#colorAcc').change(function () {
        var selectedItem = $('#colorAcc').val();
        console.log("Màu sắc "+selectedItem);
    });
    function showColor(){
        let btnNew = document.getElementById("new-color");
        let formNew = document.getElementById("form-color");
        let detail = document.getElementById("form-detail");
        btnNew.classList.add("hide");
        formNew.classList.remove("hide");
        detail.classList.add("hide");
    }
    function hideColor(){
        let btnNew = document.getElementById("new-color");
        let formNew = document.getElementById("form-color");
        let detail = document.getElementById("form-detail");
        btnNew.classList.remove("hide");
        formNew.classList.add("hide");
        detail.classList.remove("hide");
    }
    function showSize(){
        let btnNew = document.getElementById("new-size");
        let formNew = document.getElementById("form-size");
        let detail = document.getElementById("form-detail");
        btnNew.classList.add("hide");
        formNew.classList.remove("hide");
        detail.classList.add("hide");
    }
    function hideSize(){
        let btnNew = document.getElementById("new-size");
        let formNew = document.getElementById("form-size");
        let detail = document.getElementById("form-detail");
        btnNew.classList.remove("hide");
        formNew.classList.add("hide");
        detail.classList.remove("hide");
    }
    function showImage(){
        let formImage = document.getElementById("form-image");
        let detail = document.getElementById("form-detail");

        detail.classList.add("hide");
        formImage.classList.remove("hide");
    }
    function hideImage(){
        let formImage = document.getElementById("form-image");
        let detail = document.getElementById("form-detail");

        detail.classList.remove("hide");
        formImage.classList.add("hide");
    }
</script>
</body>
</html>
