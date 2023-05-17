<%--
  Created by IntelliJ IDEA.
  User: longv
  Date: 5/15/2023
  Time: 3:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!doctype html>
<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <style>
    .form {
  text-align:center;
  font-family: 'Raleway', sans-serif;
  height: 440px;
  background-color: white;
  border-radius: 10px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
  -webkit-box-shadow: 10px 10px 60px 10px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 10px 10px 60px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 10px 10px 60px 10px rgba(0, 0, 0, 0.2);
}

h1{
  color:#EC3A48;
  margin-top:30px;
}
body {
  margin: 0;
}

.container {
  margin-top:50px;
  position: relative;
  padding: 30px;
}

.background {
  background: #eb3349;
  /* fallback for old browsers */
  background: -webkit-linear-gradient(to right, #eb3349, #f45c43);
  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #eb3349, #f45c43);
  position: absolute;
  width: 100%;
  height: 100%;
  opacity: 0.8;
}

.content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  display: block;
}

input {
  width: 100%;
  height: 30px;
  border-width: 0 0 2px 0px;
  border-color: lightgray;
  background-color: transparent;
  opacity: 0.4;
  font-size: 16px;
  color: #EC3A48;
  -webkit-transition: border-color 1s ease-out;
  -moz-transition: border-color 1s ease-out;
  -o-transition: border-color 1s ease-out;
}

label{
  font-size:12px;
  float:left;
}

input.password1{
  margin-top:50px;
}


input:focus {
  outline: 0;
  opacity: 1;
  border-color: #EC3A48;
}

::-webkit-input-placeholder {
  /* Chrome/Opera/Safari */
  color: lightgray;
  font-size: 16px;
}

::-moz-placeholder {
  /* Firefox 19+ */
  color: lightgray;
  font-size: 16px;
}

:-ms-input-placeholder {
  /* IE 10+ */
  color: lightgray;
  font-size: 16px;
}

:-moz-placeholder {
  /* Firefox 18- */
  color: lightgray;
  font-size: 16px;
}

input:focus::-webkit-input-placeholder {
  color: transparent;
}

input:focus:-moz-placeholder {
  color: transparent;
}


/* FF 4-18 */

input:focus::-moz-placeholder {
  color: transparent;
}


/* FF 19+ */

input:focus:-ms-input-placeholder {
  color: transparent;
}

form button {
  margin-top: 80px;
  height: 50px;
  width: 340px;
  left:30px;
  background-color: #EC3A48;
  position: absolute;
  border: 0;
  border-radius: 10px;
  color: white;
  font-size: 16px;
  transform-origin: 50% 50%;
}

form button:focus {
  outline: none;
}

form button:hover {
  opacity: 0.8;
  cursor: pointer;
}

.spinner {
  box-shadow: inset 0 0 0 1em;
  -webkit-transform: translateZ(0);
  -ms-transform: translateZ(0);
  transform: translateZ(0);
}

.spinner:before, .spinner:after{
  position: absolute;
  content: '';
}

.spinner:before {
  width: 27px;
  height: 54px;
 background-color:white;
 -moz-border-radius: 54px 0 0 54px;
    border-radius: 54px 0 0 54px;
  top: -4px;
  left: -4px;
  position:absolute;
  -webkit-transform-origin: 26px 26px;
  transform-origin: 26px 26px;
  -webkit-animation: loading 2s infinite ease;
  animation: loading 2s infinite ease;
   animation-iteration-count:4;
}

.spinner:after {
  width: 28px;
  height: 52px;
 background-color:white;
 -moz-border-radius: 0 50px 50px 0;
    border-radius: 0 50px 50px 0;
  top: -3px;
  left: 22px;
  position:absolute;
  -webkit-transform-origin: 0px 25px;
  transform-origin: 0px 25px;
  -webkit-animation: loading 2s infinite ease 1.5s;
  animation: loading 2s infinite ease 1.5s;
  animation-iteration-count:4;
}


@-webkit-keyframes loading {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

@keyframes loading {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

@-webkit-keyframes loading2 {
  0% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  100% {
    -webkit-transform: rotate(270deg);
    transform: rotate(270deg);
  }
}

@keyframes loading2 {
  0% {
    -webkit-transform: rotate(-90deg);
    transform: rotate(-90deg);
  }
  100% {
    -webkit-transform: rotate(270deg);
    transform: rotate(270deg);
  }
}
  </style>
</head>
<body>
<%--7.1.c LoginForm hiện thị thông báo lỗi cho người dùng nếu đăng nhập thất bại--%>
<%
      String msg = (String) request.getAttribute("messageResponse");
      if (msg != null){
  %>
<script type="text/javascript">
    swal({
        title: "Error!",
        text: "<%=msg%>",
        icon: "error",
        button: "Ok",
    });
</script>
  <%
      }
  %>
  <div class="background"></div>

  <div class="content">
    <div class="form">
      <h1>Hello!</h1>
      <div class="container">
        <%-- Form cho người dùng điền username và pass--%>
        <form action="/Login" method="get">
        <%--@declare id="username1"--%><%--@declare id="password1"--%>
          <%--        field input cho người dùng nhập username--%>
            <input placeholder="Username" type="text" name="username1" class="username" required />
                  <label for="username1"  style="display:none">Username Required</label>
          <%--        field input cho người dùng nhập pass--%>
        <input placeholder="Password" type="password" class="password1" name="password" required/>
          <label for="password1"  style="display:none">Password Required</label>
          <%--Người dùng nhấp vào nút đăng nhập.--%>
<%-- Dữ liệu username, pass sẽ được truyền qua LoginController với action="LoginController" và method="get".--%>
        <button type="submit" id="login" class="btn" />Sign In</button>


        </form>

      </div>
    </div>
  </div>
  <script !src="">
    $(document).ready(function() {
  $(".btn").click(function() {
    $("form").validate();
if ($("form").valid()) {
      var tl = new TimelineMax();
      $(".btn").addClass("spinner");
      $(".btn").css({ backgroundColor: "white", border: "3px solid #EC3A48" });
      tl.to(".btn", 0.15, {
        width: "50px",
        height: "50px",
        borderRadius: "50%",
        x: "+=150px",
        ease: Ease.linear
      });

      setTimeout(function() {
        var tl = new TimelineMax();
        tl.to(".spinner", 0, {
          scale: 0.5,
          ease: Ease.easeOut
        });
        $(".btn").removeClass("spinner");
        $(".btn").html(
          '<i class="fa fa-thumbs-up fa-2x" aria-hidden="true"></i>'
        );
        $(".btn").css({ backgroundColor: "#EC3A48", border: "none" });
        $(".btn").prop("disabled", true);
        tl.to(".btn", 0.25, { scale: 1, ease: Ease.easeIn });
      }, 4800);
    return false;
}
  });
});

  </script>
</body>
</html>
