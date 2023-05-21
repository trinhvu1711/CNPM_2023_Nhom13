<%@ page import="java.text.DecimalFormat" %>
<%@ page import="model.DetailProduct" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Meta Tag -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Title Tag  -->
    <title>CNPM</title>
    <link rel="stylesheet" href="csspro/css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="csspro/css/magnific-popup.min.css">
    <link rel="stylesheet" href="csspro/css/font-awesome.css">
    <!-- Fancybox -->
    <link rel="stylesheet" href="csspro/css/jquery.fancybox.min.css">
    <!-- Themify Icons -->
    <link rel="stylesheet" href="csspro/css/themify-icons.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="csspro/css/niceselect.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="csspro/css/animate.css">
    <!-- Flex Slider CSS -->
    <link rel="stylesheet" href="csspro/css/flex-slider.min.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="csspro/css/owl-carousel.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="csspro/css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="csspro/css/reset.css">
    <link rel="stylesheet" href="csspro/style.css">
    <link rel="stylesheet" href="csspro/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body class="js">

<nav style="background: black!important;" class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
     id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Car<span>Parts</span></a>
        <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#ftco-nav"
                aria-controls="ftco-nav"
                aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
                    <a href="index.jsp" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link">Menu</a>
                </li>
                <li class="nav-item">
                    <a href="/CNPM/Product" class="nav-link">Product</a>
                </li>
                <li class="nav-item">
                    <a href="pricing.jsp" class="nav-link">Pricing</a>
                </li>
                <li class="nav-item">
                    <a href="car.jsp " class="nav-link">Cars</a>
                </li>
                <li class="nav-item">
                    <a href="blog.jsp " class="nav-link">Blog</a>
                </li>
                <li class="nav-item active">
                    <a href="contact.jsp" class="nav-link">Contact</a>
                </li>
                <li class="nav-item">
                    <a href="LoginForm.jsp" class="nav-link"><i class="fa-solid fa-user"></i></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<section class="product-area shop-sidebar shop section header-inner">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="all-category">
                    <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>DANH MỤC</h3>
                    <ul class="main-category">
                        <li><a class="text-dark" href="#" > BMW<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                            <ul class="sub-category">
                                <li><a class="text-dark"href="#">BMW series 6</a></li>
                                <li><a class="text-dark" href="#">BMW series 7</a></li>
                                <li><a class="text-dark"  href="#">BMW X5</a></li>
                            </ul>
                        </li>
                        <li><a class="text-dark" href="#"> HYUNDAI<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                            <ul class="sub-category">
                                <li><a class="text-dark" href="#">BMW series 6</a></li>
                                <li><a class="text-dark" href="#">BMW series 7</a></li>
                                <li><a class="text-dark" href="#">BMW X5</a></li>
                            </ul>
                        </li>
                        <li><a class="text-dark" href="#"> MERCEDES<i class="fa fa-angle-right" aria-hidden="true"></i></a>
                            <ul class="sub-category">
                                <li><a class="text-dark" href="#">BMW series 6</a></li>
                                <li><a class="text-dark" href="#">BMW series 7</a></li>
                                <li><a class="text-dark" href="#">BMW X5</a></li>
                            </ul>
                        </li>
                        <li><a class="text-dark" href="#">VINFAST</a></li>
                        <li><a class="text-dark" href="#">ISUZU</a></li>
                        <li><a class="text-dark" href="#">TOYOTA</a></li>

                    </ul>
                </div>
            </div>

            <div class="col-lg-9 col-md-8 col-12">
                <div class="row">
                    <div class="col-12">
                        <!-- Shop Top -->
                        <div class="shop-top">
                            <div class="shop-shorter">
                                <div class="single-shorter">
                                    <label>Show :</label>
                                    <select>
                                        <option selected="selected">09</option>
                                        <option>15</option>
                                        <option>25</option>
                                        <option>30</option>
                                    </select>
                                </div>
                                <div class="single-shorter">
                                    <label>Sắp <xếp></xếp> :</label>
                                    <select>
                                        <option>Cao đến thấp</option>
                                        <option>Thấp đến cao</option>
                                    </select>
                                </div>
                            </div>
                            <ul class="view-mode">
                                <li class="active"><a href="shop-grid.html"><i class="fa fa-th-large"></i></a></li>
                                <li><a href="shop-list.html"><i class="fa fa-th-list"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <%DecimalFormat decF = new DecimalFormat("#,###");
                        List<DetailProduct> produser = (List<DetailProduct>) request.getAttribute("produser");
                        for (DetailProduct p : produser) {
                    %>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-product">
                            <div class="product-img">
                                <a href="">
                                    <img class="default-img" src="<%=p.getUrl()%>"  alt="#">
                                    <img class="hover-img" src="<%=p.getUrl()%>" alt="#">
                                </a>
                                <div class="button-head">
                                    <div class="product-action">
                                        <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class="fa-regular fa-heart"></i><span>Yêu thích</span></a>
                                        <a title="Wishlist" href="#"><i class="fa-solid fa-cart-shopping"></i><span>Thêm vào giỏ</span></a>

                                    </div>
                                    <div class="product-action-2">
                                        <a title="Add to cart" href="#"><%=p.getNameCar()%></a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href=""><%=p.getNamepr()%></a></h3>
                                <div class="product-price">
                                    <span><%= decF.format(p.getPrice())%></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
    </div>
</section>



<%@ include file="footer.jsp" %>

<!-- Jquery -->
<script src="csspro/js/jquery.min.js"></script>
<script src="csspro/js/jquery-migrate-3.0.0.js"></script>
<script src="csspro/js/jquery-ui.min.js"></script>
<!-- Popper JS -->
<script src="csspro/js/popper.min.js"></script>
<!-- Bootstrap JS -->
<script src="csspro/js/bootstrap.min.js"></script>
<!-- Color JS -->
<script src="csspro/js/colors.js"></script>
<!-- Slicknav JS -->
<script src="csspro/js/slicknav.min.js"></script>
<!-- Owl Carousel JS -->
<script src="csspro/js/owl-carousel.js"></script>
<!-- Magnific Popup JS -->
<script src="csspro/js/magnific-popup.js"></script>
<!-- Waypoints JS -->
<script src="csspro/js/waypoints.min.js"></script>
<!-- Countdown JS -->
<script src="csspro/js/finalcountdown.min.js"></script>
<!-- Nice Select JS -->
<script src="csspro/js/nicesellect.js"></script>
<!-- Flex Slider JS -->
<script src="csspro/js/flex-slider.js"></script>
<!-- ScrollUp JS -->
<script src="csspro/js/scrollup.js"></script>
<!-- Onepage Nav JS -->
<script src="csspro/js/onepage-nav.min.js"></script>
<!-- Easing JS -->
<script src="csspro/js/easing.js"></script>
<!-- Active JS -->
<script src="csspro/js/active.js"></script>
</body>
</html>