<%@ page import="java.util.List" %>
<%@ page import="model.User" %>
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

</head>
<style>
    .card-body a .btn_add_delete {
        width: 60px;
        height: 30px;
        border: none;
        color: #1f1f1fbf;
        font-weight: 600 !important;
        border-radius: 5px;

    }

    .row .form-group .form-control {
        font-size: 16px;
    }

    .align-items-end .row_input .col_addprod {
        flex: auto;
        margin-top: 8px;
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
    }


    .input_addpr {
        height: calc(1.5em + .75rem);
    }

    .col-xl-7 .row .col-md-12 .edit_img {
        width: 100%;
        height: 100px;
        border: gray;
        border-style: dashed;
        margin: 0 20px;
        padding: 0;

    }

    .col-xl-7 .row .col-md-12 .edit_img .btnX_img {
        padding: 0 4px;

    }

    .padd_right {
        padding-right: 50px;
    }

    .edit_formUser {
        height: 500%;
        width: 100%;
        background: rgba(0, 0, 0, 0.73);
        position: absolute;
        z-index: 1500;
        top: 0;
    }

    .edit_formUser .cen-div {
        margin: auto;
        background: #f1f1f1;
        width: 50%;
        margin-top: 5%;
        border-radius: 5px;
    }

    .edit_formUser .btn_huy_update button {
        background: none;
        border: none;
    }

    .btn_huy_update {
        margin-bottom: 20px;
        justify-content: end;
    }

    .btn_huy_update input {
        border-radius: 5px;
        background: #7fad39;
        border: none;
        padding: 8px 20px;
        color: white;
    }

    .btn_huy_update input:last-child {
        margin-left: 20px;
    }
    .btn_edit button {
        border: none;
        border-radius: 5px;
        padding: 5px 10px;
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

<body>
<!-- partial:partials/_navbar.html -->
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
                <form class="search-form" action="/SearchUser" method="post">
                    <i class="icon-search"></i>
                    <input type="search" class="form-control" name="searchUser" placeholder="Search Here"
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
<!-- partial -->
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
                                                    <div class="card-body" style="padding-top: 0">
                                                        <div class="d-sm-flex justify-content-between align-items-start">
                                                            <div>
                                                            </div>
                                                        </div>
                                                        <div class="table-responsive  mt-1">
                                                            <table class="table select-table">
                                                                <thead>
                                                                <tr>
                                                                    <th>Khách hàng</th>
                                                                    <th>Số điện thoại và Email</th>
                                                                    <th>Địa chỉ</th>
                                                                    <th></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <% List<User> list = (List<User>) request.getAttribute("listUser");
                                                                    for (User u : list) {
                                                                %>
                                                                <tr>
                                                                    <td>
                                                                        <div class="d-flex ">
                                                                            <img src="https://th.bing.com/th/id/OIP.Jt68KRa5dG6NzRmxZmDXZQAAAA?pid=ImgDet&w=335&h=335&rs=1"
                                                                                 alt="">
                                                                            <div>
                                                                                <h6><%=u.getName()%>
                                                                                </h6>
                                                                                <p><%=u.checkDecentralization()%>
                                                                                </p>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <h6><%=u.getPhone()%>
                                                                        </h6>
                                                                        <p><%=u.getEmail()%>
                                                                        </p>
                                                                    </td>

                                                                    <td>
                                                                        <div class=""><%=u.getAddress()%>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div class="btn_edit">
                                                                            <button onclick="clickEdit('<%=u.getIduser()%>','<%=u.getName()%>','<%=u.getPass()%>','<%=u.getEmail()%>','<%=u.getPhone()%>','<%=u.getDatesignup()%>','<%=u.getAddress()%>', '<%=u.getDecentralization()%>')">
                                                                                <h4 class="card-title card-title-dash">
                                                                                    Xem <i
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


<%-- xem và update trạng thái user--%>
<div id="formEditUser">

</div>


<script>
    // xem và update user
    function clickEdit(idUser, nameUser, passw, email, phone, datesignup, address, decentralization ) {
        $.ajax({
            url: "/formEditUser",
            type: 'get',
            data: {
                idUser: idUser,
                nameUser: nameUser,
                passw: passw,
                email: email,
                phone: phone,
                datesignup: datesignup,
                address: address,
                decentralization:decentralization,
            },
            success: function (data) {
                const content = document.getElementById('formEditUser');
                content.innerHTML = data;
            },
            error: function () {
            }


        });
        $(".edit_formUser").css("display", "block");
    }

    function huy() {
        $(".edit_formUser").css("display", "none");
    }
     function  checked(checkDecentralization, value ){
        if (checkDecentralization==value){
            $(".padd_right .form-checked").addEventListener('checked');
        }
     }



</script>

<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous"></script>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="admin_template/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
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