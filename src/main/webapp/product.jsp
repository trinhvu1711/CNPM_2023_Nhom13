<%@ page import="java.util.List" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="model.Product" %>
<%@ page import="model.DetailProduct" %>

<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>BHNFoods | Sản phẩm</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="body_design/css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" href="body_design/css/style.css" type="text/css">
</head>

<body>


<%@ include file="header.jsp" %>


<!-- Product Section Begin -->
<section class="product spad" style="padding-top: 20px">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-5">
        <div class="sidebar">
          <div class="sidebar__item">
            <div class="hero__categories">
              <div class="hero__categories__all">
                <span>Danh sách sản phẩm</span>
              </div>
              <ul>
                <li><a href="/BHNFoods/ListProduct?kind=1&page=1">BMW</a></li>
                <li><a href="/BHNFoods/ListProduct?kind=2&page=1">VINFAST</a></li>
                <li><a href="/BHNFoods/ListProduct?kind=3&page=1">TOYOTA</a></li>
                <li><a href="/BHNFoods/ListProduct?kind=4&page=1">MAZDA</a></li>
                <li><a href="/BHNFoods/ListProduct?kind=5&page=1">MERCEDES</a></li>
                <li><a href="/BHNFoods/ListProduct?kind=4&page=1">HYUNDAI</a></li>
              </ul>
            </div>
          </div>
          <div class="sidebar__item">
            <div class="latest-product__text">
              <h4>Sản phẩm mới nhất</h4>
              <div class="latest-product__slider owl-carousel">
                <div class="latest-prdouct__slider__item">
                  <a href="#" class="latest-product__item" >
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="" >
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Bột năng Tấn Sang</h6>
                      <span>40.000đ</span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="" >
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Đậu đỏ Xuân Hồng 500g</h6>
                      <span>25.000đ</span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Khoai mỡ túi 1kg(1-2 củ)</h6>
                      <span>35.000đ</span>
                    </div>
                  </a>
                </div>
                <div class="latest-prdouct__slider__item">
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Gạo nếp Cái Hoa Vàng- CoopSelect 1kg</h6>
                      <span>36.000đ</span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6> Ngũ cốc dinh dưỡng Yumfood 500g</h6>
                      <span>105.000đ</span>
                    </div>
                  </a>
                  <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="images/image_1.jpg" alt="">
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Đậu đen Việt San 150g</h6>
                      <span>25.000đ</span>
                    </div>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9 col-md-7">

        <div class="filter__item">
          <div class="row">
            <div class="col-lg-4 col-md-5">
              <div class="filter__sort">
                <span>Sắp xếp</span>
                <select name="sort" class="sort-table" id="sort-tableID">
                  <option class="sort-item" value="0">Tất cả</option>
                  <option class="sort-item" value="1"><a>Giảm Giá</a></option>
                  <option class="sort-item" value="2">Giá thấp đến cao</option>
                  <option class="sort-item" value="3">Giá cao đến thấp</option>
                </select>
              </div>
            </div>

          </div>
        </div>
        <div id="content" class="row">
          <%   DecimalFormat decF = new DecimalFormat("#,###");
            List<DetailProduct> productList = (List<DetailProduct>) request.getAttribute("listProduct");
            for(DetailProduct p: productList) {
              int price = p.getPrice();
          %>
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="product__item">
              <div class="product__item__pic set-bg" data-setbg="<%=p.getUrl()%>">

                <ul class="product__item__pic__hover">
                  <li><button id="heart<" class="background-button" style="color: white" onclick="loveInListProd()"><i class="fa fa-heart"></i></button></li>

                  <li><button id="heart<%=p.getIdpr()%>" onclick="loveInListProd('<%=p.getIdpr()%>', this.id)"><i class="fa fa-heart"></i></button></li>

                  <li><button id="cart<%=p.getIdpr()%>" onclick="addToCartInListProd('<%=p.getIdpr()%>', this.id)"><i class="fa fa-shopping-cart"></i></button></li>

                </ul>
              </div>
              <div class="product__item__text">
                <a href="/BHNFoods/oneProduct?id=<%=p.getIdpr()%>"><%=p.getNamepr()%><br> <span><%=decF.format(price).replace(',','.')%>đ</span></a>
              </div>
            </div>
          </div>
          <%}%>
        </div>
        <div class="product__pagination">

          <button onclick="loadMoreProductLeft()"><i class="fa fa-long-arrow-left"></i></button>

          <%int count =(int)request.getAttribute("count");
            for (int i = 0; i < count; i++) {%>
          <button  id="btn<%=i+1%>" class="btn-loadMore" onclick="loadMoreProduct(this.value)" value="<%=i+ 1%>"><%=i+ 1%></button>
          <%}%>

          <button onclick="loadMoreProductRight()"><i class="fa fa-long-arrow-right"></i></button>

        </div>
      </div>
    </div>
  </div>
</section>

<%@ include file="footer.jsp" %>
<!-- Footer Section End -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
  var current = 1;
  var maxCountPage = $('button.btn-loadMore').length;
  $("#btn" + current).addClass('background-button');
  var queryString = window.location.search;
  var urlParams = new URLSearchParams(queryString);
  var kind = urlParams.get('kind');
  var page = urlParams.get('page');
  function loadMoreProduct(index) {
    $("#btn" + current).removeClass('background-button');
    current = index;
    $("#btn" + current).addClass('background-button');

    $.ajax({
      url: "/BHNFoods/loadMoreProduct",
      type: 'get',
      data: {
        kind : kind,
        page : page,
        step : current,
        sort: $('#sort-tableID').val().trim()
      },
      success: function(data) {
        const content = document.getElementById("content");
        content.innerHTML = data;
      },
      error: function () {
      }
    });
  }
  function loadMoreProductLeft() {
    $("#btn" + current).removeClass('background-button');
    if (current - 1 >= 1) {
      current -= 1;
    }
    $("#btn" + current).addClass('background-button');
    $.ajax({
      url: "/BHNFoods/loadMoreProduct",
      type: 'get',
      data: {
        kind : kind,
        page : page,
        step : current,
        sort: $('#sort-tableID').val().trim()
      },
      success: function(data) {
        const content = document.getElementById("content");
        content.innerHTML = data;
      },
      error: function () {
      }
    });
  }
  function loadMoreProductRight() {
    $("#btn" + current).removeClass('background-button');
    if (parseInt(current) + 1 <= maxCountPage) {
      current = parseInt(current) + 1;
    }
    $("#btn" + current).addClass('background-button');
    $.ajax({
      url: "/BHNFoods/loadMoreProduct",
      type: 'get',
      data: {
        kind : kind,
        page : page,
        step : current,
        sort: $('#sort-tableID').val().trim()
      },
      success: function(data) {
        const content = document.getElementById("content");
        content.innerHTML = data;
      },
      error: function () {
      }
    });
  }
  function loveInListProd(id, idTag) {
    let condition = 0; //0 la detele khoi database, 1 la insert vao database
    if(document.getElementById(idTag).classList.contains('background-button')) {
      $('button#' + idTag).removeClass('background-button');
      $('button#' + idTag).css('color', 'black')
      condition = 0;
    } else {
      $('button#' + idTag).addClass('background-button');
      $('button#' + idTag).css('color', 'white')
      condition = 1;
    }
    $.ajax({
      url: "/BHNFoods/addToLoveProd",
      type: 'get',
      data: {
        id: id,
        condition : condition
      },
      error: function () {
      }
    });
  }
  function addToCartInListProd(id, idTag) {
    $('button#' + idTag).addClass('background-button');
    $('button#' + idTag).css('color', 'white');
    $.ajax({
      url: "/BHNFoods/addToCart",
      type: 'get',
      data: {
        id: id,
        amount: 1
      },
      success: function (data) {
        const content = document.getElementById('totalCart');
        content.innerHTML = data;
      },
      error: function () {
      }
    });
  }

  $('#sort-tableID').change(function () {
    $.ajax({
      url: "/BHNFoods/loadMoreProduct",
      type: "get",
      data: {
        kind: kind,
        step : current,
        sort: $(this).val().trim()
      },
      success: function (data) {
        const content = document.getElementById("content");
        content.innerHTML = data;
      },
      error: function (xhr) {
      }
    })
  })
  function searchByName(param) {
    var txtSearch = param.value;
    $.ajax({
      url: "/BHNFoods/searchByAjax",
      type: "get",
      data: {
        txt: txtSearch
      },
      success: function (data) {
        const content = document.getElementById("content");
        content.innerHTML = data;
      },
      error: function (xhr) {
      }
    })
  }

</script>
<!-- Js Plugins -->
<script src="body_design/js/jquery-3.3.1.min.js"></script>
<%--<script src="body_design/js/jquery.nice-select.min.js"></script>--%>
<script src="body_design/js/jquery-ui.min.js"></script>
<script src="body_design/js/jquery.slicknav.js"></script>
<script src="body_design/js/mixitup.min.js"></script>
<script src="body_design/js/owl.carousel.min.js"></script>
<script src="body_design/js/main.js"></script>





</body>

</html>