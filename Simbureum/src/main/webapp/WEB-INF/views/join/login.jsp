<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../model/topBar1.jsp" %>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="view/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="view/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="view/assets/css/slicknav.css">
    <link rel="stylesheet" href="view/assets/css/flaticon.css">
    <link rel="stylesheet" href="view/assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="view/assets/css/gijgo.css">
    <link rel="stylesheet" href="view/assets/css/animate.min.css">
    <link rel="stylesheet" href="view/assets/css/animated-headline.css">
    <link rel="stylesheet" href="view/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="view/assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="view/assets/css/themify-icons.css">
    <link rel="stylesheet" href="view/assets/css/slick.css">
    <link rel="stylesheet" href="view/assets/css/nice-select.css">
    <link rel="stylesheet" href="view/assets/css/style.css">
    
</head>
<body>
   
<main class="login-body">
    <!-- Login Admin -->
    <form class="form-default" action="login-bg.mp4" method="POST">
        <div class="login-form"> 
            <h2>Login</h2>
            
            <!-- 추가  -->
            <!--  <div style=" display: inline;  text-align: center;vertical-align: middle; ">
            <input type="radio" name="bts" value="1" id="bts"  style="width:30px;height:30px;border:1px;" checked="checked">
            <label for="bts">일반회원</label>
            </div>
            
            <div style=" display: inline; margin-left: 150px; text-align: center;vertical-align: middle; ">
            <input type="radio" name="bts" value="2" id="bts2" style="width:30px;height:30px;border:1px;" >
            <label for="bts2" style="border: 1px solid black;">운영진</label>
            </div> -->
            <!-- 추가 끝  -->
            
            
            
            
           <div> <!-- 일반, 관리자 체크 -->
                <input type="radio" name="chk_info" value="1" checked="checked">일반 회원    &nbsp;&nbsp;&nbsp;       
             	<input type="radio" name="chk_info" value="2" >관리자 
           </div>
            
            <div class="form-input">
                <label for="name">Email</label>
                <input  type="email" name="email" placeholder="Email">
            </div>
            <div class="form-input">
                <label for="name">Password</label>
                <input type="password" name="password" placeholder="Password">
            </div>
            <div class="form-input pt-30">
                <input type="submit" name="submit" value="login">
            </div>
            
            <!-- Forget Password -->
            <a href="#" class="forget">비밀번호 찾기</a>
             <!-- Forget id -->
            <a href="#" class="forget">아이디 찾기</a> <!-- 변경해야함 -->
            <!-- join -->
            <a href="#" class="registration">회원가입</a>
        </div>
    </form>
    <!-- /end login form -->
</main>

<script src="view/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="view/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="view/assets/js/popper.min.js"></script>
<script src="view/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="view/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="view/assets/js/owl.carousel.min.js"></script>
<script src="view/assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="view/assets/js/wow.min.js"></script>
<script src="view/assets/js/animated.headline.js"></script>
<script src="view/assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="view/assets/js/gijgo.min.js"></script>

<!-- Video bg -->
<script src="view/assets/js/jquery.vide.js"></script>

<!-- Nice-select, sticky -->
<script src="view/assets/js/jquery.nice-select.min.js"></script>
<script src="view/assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="view/assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="view/assets/js/jquery.counterup.min.js"></script>
<script src="view/assets/js/waypoints.min.js"></script>
<script src="view/assets/js/jquery.countdown.min.js"></script>
<script src="view/assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="view/assets/js/contact.js"></script>
<script src="view/assets/js/jquery.form.js"></script>
<script src="view/assets/js/jquery.validate.min.js"></script>
<script src="view/assets/js/mail-script.js"></script>
<script src="view/assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="view/assets/js/plugins.js"></script>
<script src="view/assets/js/main.js"></script>

</body>
</html>

<%@include file="../model/footer.jsp" %>