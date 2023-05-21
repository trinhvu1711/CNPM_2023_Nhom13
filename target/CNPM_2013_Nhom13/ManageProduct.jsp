<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>

<%@ page import="model.DetailProduct" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CNPM Admin </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="admin_template/vendors/feather/feather.css">
    <link rel="stylesheet" href="admin_template/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="admin_template/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/typicons/typicons.css">
    <link rel="stylesheet" href="admin_template/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="admin_template/vendors/css/vendor.bundle.base.css">

    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="admin_template/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="admin_template/css/vertical-layout-light/style.css">

    <!-- endinject -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <style>
        .btn_edit button {
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
        }
        .row .form-group .form-control {
            font-size: 13px;
        }

        .align-items-end .row_input .col_addprod {
            flex: auto;
            margin-top: 8px;
            position: relative;
            width: 100%;
            padding-right: 15px;
            padding-left: 15px;
        }

        .card {
            width: 400px;
            height: auto;
            padding: 15px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
            border-radius: 5px;
            overflow: hidden;
            background: #fafbff;
        }

        .card .top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
        }

        .card p {
            font-size: 0.9rem;
            font-weight: 600;
            color: #878a9a;
        }

        .card button:hover {
            opacity: 0.8;
        }

        .card button:active {
            transform: translateY(5px);
        }

        .card .drag-area {
            width: 100%;
            height: 160px;
            border-radius: 5px;
            border: 2px dashed #d5d5e1;
            color: #c8c9dd;
            font-size: 0.9rem;
            font-weight: 500;
            position: relative;
            background: #dfe3f259;
            display: flex;
            justify-content: center;
            align-items: center;
            user-select: none;
            -webkit-user-select: none;
            margin-top: 10px;
        }

        .card .drag-area .visible {
            font-size: 18px;
        }

        .card .select {
            color: #5256ad;
            margin-left: 5px;
            cursor: pointer;
            transition: 0.4s;
        }

        .card .select:hover {
            opacity: 0.6;
        }


        .contai .image span {
            position: absolute;
            top: -2px;
            font-size: 20px;
            cursor: pointer;
        }

        /* dragover class will used in drag and drop system */
        .card .drag-area.dragover {
            background: rgba(0, 0, 0, 0.4);
        }

        .card .drag-area.dragover .on-drop {
            display: inline;
            font-size: 28px;
        }

        .card input,
        .card .drag-area .on-drop,
        .card .drag-area.dragover .visible {
            display: none;
        }

        .page-body-wrapper .fix-navbar {
            padding-top: 20px;
        }

        .page-body-wrapper .fix-navbar .menu_navbar {
            height: 60px;
        }

        .page-body-wrapper .fix-navbar .menu_navbar .nav-item-link {
            text-decoration: none;
            color: black;
            font-size: 18px;
            line-height: 60px;
        }

        .page-body-wrapper .fix-navbar .menu_navbar:hover {
            background: #d3d3d3;
        }
    </style>
</head>

<body>
<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
        <div>
            <a style="font-size: 2.5rem;" class="navbar-brand brand-logo" href="admin.jsp">CNPM <i
                    class="fa-solid fa-caravan brand-logo"></i>
            </a>
        </div>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-top colorheader ">
        <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link dropdown-bordered dropdown-toggle dropdown-toggle-split" id="messageDropdown"
                   href="#"
                   data-bs-toggle="dropdown" aria-expanded="false"> Lọc theo </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
                     aria-labelledby="messageDropdown">

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item" href="/admin.jsp">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">Admin</p>
                            <p class="fw-light small-text mb-0">Trang chủ</p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item" href="/ManageUser">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">Người dùng </p>
                            <p class="fw-light small-text mb-0">Trang chi tiết người dùng</p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item"
                       href="/ManageProduct">
                        <div class="preview-item-content flex-grow py-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">Sản Phẩm </p>
                            <p class="fw-light small-text mb-0">Trang chi tiết quản lý sản phẩm</p>
                        </div>
                    </a>
                </div>
            </li>
            <li class="nav-item d-none d-lg-block">
                <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
            <span class="input-group-addon input-group-prepend border-right">
              <span class="icon-calendar input-group-text calendar-icon"></span>
            </span>
                    <input type="text" class="form-control">
                </div>
            </li>
            <li class="nav-item">
                <form class="search-form" action="/SearchAdmin" method="post">
                    <i class="icon-search"></i>
                    <input type="search" class="form-control" placeholder="Search Here" name="searchAD"
                           title="Search here">
                </form>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link count-indicator" id="countDropdown" href="" data-bs-toggle="dropdown"
                   aria-expanded="false">
                    <i class="icon-mail icon-lg">[3]</i>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list pb-0"
                     aria-labelledby="countDropdown">
                    <a class="dropdown-item py-3">
                        <p class="mb-0 font-weight-medium float-left"> Thông báo </p>
                        <span class="badge badge-pill badge-primary float-right">Xem tất cả</span>
                    </a>
                    <div class="dropdown-divider"></div>

                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"
                                 alt="image" class="img-sm profile-pic"
                                 style=" width: 70px;height: 50px;border-radius: 100%;">
                        </div>
                        <div class="preview-item-content flex-grow pyy-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">
                                Xuân Hoa
                            </p>
                            <p class="fw-light small-text mb-0">
                                20:01 04-05-2023
                            </p>
                        </div>
                    </a>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <img src="https://assets.materialup.com/uploads/378d2c84-810d-477a-802b-d495646b9c4e/preview.jpg"
                                 alt="image" class="img-sm profile-pic"
                                 style=" width: 70px;height: 50px;border-radius: 100%;">
                        </div>
                        <div class="preview-item-content flex-grow pyy-2">
                            <p class="preview-subject ellipsis font-weight-medium text-dark">
                                Trịnh Long Vũ
                            </p>
                            <p class="fw-light small-text mb-0">
                                20:01 04-05-2022
                            </p>
                        </div>
                    </a>
                </div>
            </li>

        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                data-bs-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>
</nav>

<div class="container-fluid page-body-wrapper">
    <nav class="sidebar sidebar-offcanvas fix-navbar" id="sidebar">
        <div class="nav-item menu_navbar">
            <a href="/admin.jsp" class="nav-item-link">
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-home"></i>
                <span>Trang chủ</span>
            </a>
        </div>
        <div class="nav-item menu_navbar">
            <a href="/ManageUser" class="nav-item-link">
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-account-circle"></i>
                <span>Quản lý tài khoản</span>
            </a>
        </div>
        <div class="nav-item menu_navbar">
            <a href="/ManageProduct" class="nav-item-link">
                <i style="margin-right: 5px;" class="menu-icon mdi mdi-view-module"></i>
                <span>Quản lý sản phẩm</span>
            </a>
        </div>
        <div class="nav-item menu_navbar">
            <a href="/Login" class="nav-item-link">
                <i style="margin-right: 5px;" class="fa-solid fa-arrow-right-from-bracket"></i>
                <span>Đăng xuất</span>
            </a>
        </div>
    </nav>
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <div class="home-tab">
                        <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview"
                                       role="tab"
                                       aria-controls="overview" aria-selected="true">Tổng quan</a>
                                </li>

                            </ul>
                            <div>
                            </div>
                        </div>
                        <div class="tab-content tab-content-basic">
                            <div class="tab-pane fade show active" id="overview" role="tabpanel"
                                 aria-labelledby="overview">
                                <div class="row">
                                    <div class="col-lg-8 d-flex flex-column">
                                        <div class="row flex-grow">
                                            <div class="col-12 grid-margin stretch-card">
                                                <div class="card card-rounded">
                                                    <div class="card-body">
                                                        <div class="d-sm-flex justify-content-between align-items-start">
                                                            <div class="btn_edit">
                                                                <a href="#" STYLE="text-decoration: none">
                                                                    <button class="card-title card-title-dash ">
                                                                        Thêm
                                                                    </button>
                                                                </a>

                                                            </div>
                                                        </div>
                                                        <div class="table-responsive  mt-1">
                                                            <table class="table select-table">
                                                                <thead>
                                                                <tr>
                                                                    <th>Tên sản phẩm</th>
                                                                    <th>Tên xe</th>
                                                                    <th>Thương hiệu</th>
                                                                    <th>Số lượng</th>
                                                                    <th>Giá</th>
                                                                    <th></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <%
                                                                    DecimalFormat decF = new DecimalFormat("#,###");
                                                                    List<DetailProduct> productList = (List<DetailProduct>) request.getAttribute("listProduct");
                                                                    for (DetailProduct p : productList) {
                                                                %>
                                                                <tr>

                                                                    <td>
                                                                        <div class="d-flex ">
                                                                            <img src="<%=p.getUrl()%>" alt="">
                                                                            <h6><%=p.getNamepr()%>
                                                                                <p><%=p.getIdpr()%>
                                                                                </p>
                                                                            </h6>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <h6><%=p.getNameCar()%>
                                                                        </h6>
                                                                    </td>
                                                                    <td>
                                                                        <h6><%=p.getName()%>
                                                                        </h6>
                                                                    </td>
                                                                    <td>
                                                                        <h6><%=p.getAmount()%>
                                                                        </h6>
                                                                    </td>
                                                                    <td>
                                                                        <div class=""><%=decF.format(p.getPrice())%>đ
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="btn_edit">
                                                                            <button>
                                                                                <h4 class="card-title card-title-dash">
                                                                                    Sửa <i
                                                                                        class="fa-regular fa-pen-to-square"></i>
                                                                                </h4></button>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <%}%>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="admin_template/vendors/js/vendor.bundle.base.js"></script>

<script src="admin_template/vendors/chart.js/Chart.min.js"></script>
<script src="admin_template/vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="admin_template/vendors/progressbar.js/progressbar.min.js"></script>

<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="admin_template/js/off-canvas.js"></script>
<script src="admin_template/js/hoverable-collapse.js"></script>
<script src="admin_template/js/template.js"></script>
<script src="admin_template/js/settings.js"></script>
<script src="admin_template/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="admin_template/js/jquery.cookie.js" type="text/javascript"></script>
<script src="admin_template/js/dashboard.js"></script>
<script src="admin_template/js/Chart.roundedBarCharts.js"></script>

<!-- End custom js for this page-->
</body>

</html>