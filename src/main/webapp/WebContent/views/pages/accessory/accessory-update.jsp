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

    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet"
          href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />
    <!-- Google Font: Source Sans Pro -->
    <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
            rel="stylesheet" />
    <link rel="stylesheet" href="dist/css/custom.css" />
    <link rel="stylesheet" href="css/employee.css">
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
                        <!--Div Form Update-->
                        <div id="form-disable-update"
                             style="max-width: 95%; margin: auto; margin-top: 10px;">
                            <form action="admin/AccessoriesManagement/UpdateAccessories" method="post">
                                <input type="hidden" name="id" id="id">
                                <div class="form-disable-p1 float-left" style="width: 330px; margin-left: 30px; float: left">
                                    <div class="form-group">
                                        <label >Tên phụ kiện</label>
                                        <input name="tenPhuKien" type="text" class="form-control" id="tenUpdate" value="${acc.getName() }"/>
                                    </div>
                                    <div class="form-group">
                                        <label >Hãng</label>
                                        <select name="hangPhuKien" id="hangUpdate" style="height: 30px; width: 100%">
                                            <c:forEach var="category" items="${listCategory }">
                                                <option value="${ category.id}" selected>${ category.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label >Màu sắc</label>
                                        <input name="mauPhuKien" type="text" class="form-control" id="accessoriColor" />
                                    </div>
                                </div>
                                <div class="form-disable-p1" style="width: 330px; margin-left: 30px; float: left">
                                    <div class="form-group">
                                        <label >Giá</label>
                                        <input name="giaPhuKien" type="text" class="form-control" id="giaUpdate" value="${acc.getDisplayPrice(1) }"/>
                                    </div>
                                    <div class="form-group">
                                        <label >Trạng thái</label>
                                        <select name="trangThaiPhuKien" id="trangThaiUpdate" style="height: 30px; width: 100%">
                                            <c:forEach var="status" items="${listStatus }">
                                                <option value="${status }" selected>${status }</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label >Số lượng</label>
                                        <input name="soLuongPhuKien" type="text" class="form-control" id="soLuongUpdate" value="${acc.getAmount() }" />
                                    </div>
                                </div>
                                <div class="form-disable-p1" style="width: 330px; margin-left: 30px; float: left">
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <textarea name="moTaPhuKien" class="form-control" id="moTaUpdate" rows="2">${acc.getDescription() }</textarea>
                                    </div>
                                    <div class="custom-file mb-3">
                                        <label class="custom-file-label" for="customFile">Hình ảnh</label>
                                        <input type="file" class="custom-file-input" id="customFile" name="filename" />
                                    </div>
                                    <div class="custom-file mb-3">
                                        <label class="custom-file-label" for="customFile1">Hình ảnh</label>
                                        <input type="file" class="custom-file-input" id="customFile1" name="filename" />
                                    </div>
                                    <div class="custom-file mb-3">
                                        <label class="custom-file-label" for="customFile2">Hình ảnh</label>
                                        <input type="file" class="custom-file-input" id="customFile2" name="filename" />
                                    </div>
                                    <div class="custom-file mb-3">
                                        <label class="custom-file-label" for="customFile3">Hình ảnh</label>
                                        <input type="file" class="custom-file-input" id="customFile3" name="filename" />
                                    </div>
                                    <input type="hidden" class="form-control" id="ngayUpdate" name="ngayUpdate">

                                </div>
                                <div>
                                    <button type="submit" class="btn btn-custon-rounded-three btn-success btn-css">
                                        <i class="fas fa-save"></i> <span> Lưu</span>
                                    </button>
                                    <button type="reset" class="btn btn-custon-rounded-three btn-warning btn-css">
                                        <i class="fas fa-backspace"></i> <span> Làm mới</span>
                                    </button>
                                    <button type="button" class="btn btn-custon-rounded-three btn-danger btn-css" onclick="hiddenFormUpdate(true)">
                                        <i class="fas fa-slash"></i> <span> Huỷ</span>
                                    </button>
                                </div>
                            </form>
                            <div class="clear"></div>
                        </div>
                        <!--End Form Update-->

                        <div class="table-responsive-xl main-table">
                            <table class="table table-hover" style="margin-bottom: -1%" id="table-js">
                                <thead>
                                <tr class="bg-info">
                                    <th scope="col">STT</th>
                                    <th scope="col">Ảnh</th>
                                    <th scope="col">Tên phụ kiện</th>
                                    <th scope="col">Hãng</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Ngày nhập</th>
                                    <th scope="col">Trạng thái</th>
                                    <th scope="col" hidden="true">Mô tả</th>
                                    <th scope="col">Hành động</th>
                                </tr>
                                </thead>
                                <c:forEach var="Accessories" items="${listAccessories}">
                                    <tbody>
                                    <tr>
                                        <th scope="row" class="idthu">
                                            <div class="td__center">${Accessories.id }</div>
                                        </th>
                                        <td>
                                            <img class="img-fluid" src="${Accessories.getImgs().get(0).getImgAvartar() }" alt="" style="max-width: 90px; max-height: 90px;">
                                        </td>
                                        <td class="tenthucung">
                                            <div onclick="showFormUpdate(true, ${Accessories.id})" class="alert-link">
                                                <div class="td__center">${Accessories.name }</div>
                                            </div>
                                        </td>
                                        <td>
                                            <span hidden="true">${Accessories.getCategory().getId() }</span>
                                            <div class="td__center">${Accessories.getCategory().getName() }</div>
                                        </td>
                                        <td>
                                            <div class="td__center">${Accessories.getDisplayPrice(1) } <span> đ</span></div>
                                        </td>
                                        <td>
                                            <div class="td__center">${Accessories.getAmount() }</div>
                                        </td>
                                        <td>
                                            <div class="td__center">${Accessories.getDate() }</div>
                                        </td>
                                        <td>
                                            <div class="td__center">${Accessories.getStatus() }</div>
                                        </td>
                                        <td hidden="true">${Accessories.getDescription()}</td>
                                        <td>
                                            <div class="td__center">
                                                <form action="admin/AccessoriesManagement/${action }"
                                                      method="post">
                                                    <input type="hidden" value="${Accessories.id }"
                                                           name="AccessoriesId">
                                                    <button type="submit"
                                                            class="btn btn-custon-rounded-three btn-danger">${nameButton2 }</button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </c:forEach>
                            </table>
                            <hr />
                        </div>
                        <!--End Table-->
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
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="js/active.js"></script>
<script type="text/javascript" src="Script/QLPK.js"></script>
<script type="text/javascript">
    function hiddenFormUpdate(visible) {
        var hienFormUpdate = document.getElementById("form-disable-update");
        hienFormUpdate.style.display = visible ? "none" : "block";
        var timKiem = document.getElementById("new-pet");
        timKiem.style.display = visible ? "" : "none";
    }
</script>
</body>
</html>
