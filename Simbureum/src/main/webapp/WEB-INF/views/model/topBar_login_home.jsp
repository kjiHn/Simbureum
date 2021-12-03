<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 

response.setHeader("Cache-Control","no-store"); 

response.setHeader("Pragma","no-cache"); 

response.setDateHeader("Expires",0); 

if (request.getProtocol().equals("HTTP/1.1"))

        response.setHeader("Cache-Control", "no-cache");

%> 
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/view/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/resources/view/assets/css/total.css?ver=2" />
    
</head>
<body>
   
    
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent" style="background-color: #E3C4FF; height: 80px">
            <div class="main-header ">
                <div class="header-bottom">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-2 col-lg-2">
                                <div class="#">
	                                    <a href="/"> <img src="/resources/view/assets/img/logo/3.png" style="width: 80px; height: 80px;" >
	                                    
	                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-10 col-lg-10" style="height: 80px">
                                <div class="menu-wrapper d-flex align-items-center justify-content-end" style="height: 80px">
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">       
                                                <li><a href="#">공지 사항</a></li>
                                                <li><%=session.getAttribute("mid") %>님</li>                                        
                                                <li>	
                                                	<a href="/login/logout" class="btn">로그아웃</a>
                                                	<a href="/user/my_Info?mb_name=<%=session.getAttribute("mid") %>" class="btn">마이페이지</a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>

<!-- JS here -->

<script src="/resources/view/assets/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="/resources/view/assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="/resources/view/assets/js/popper.min.js"></script>
<script src="/resources/view/assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="/resources/view/assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="/resources/view/assets/js/owl.carousel.min.js"></script>
<script src="/resources/view/assets/js/slick.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="/resources/view/assets/js/wow.min.js"></script>
<script src="/resources/view/assets/js/animated.headline.js"></script>
<script src="/resources/view/assets/js/jquery.magnific-popup.js"></script>

<!-- Date Picker -->
<script src="/resources/view/assets/js/gijgo.min.js"></script>

<!-- Video bg -->
<script src="/resources/view/assets/js/jquery.vide.js"></script>

<!-- Nice-select, sticky -->
<script src="/resources/view/assets/js/jquery.nice-select.min.js"></script>
<script src="/resources/view/assets/js/jquery.sticky.js"></script>
<!-- Progress -->
<script src="/resources/view/assets/js/jquery.barfiller.js"></script>

<!-- counter , waypoint,Hover Direction -->
<script src="/resources/view/assets/js/jquery.counterup.min.js"></script>
<script src="/resources/view/assets/js/waypoints.min.js"></script>
<script src="/resources/view/assets/js/jquery.countdown.min.js"></script>
<script src="/resources/view/assets/js/hover-direction-snake.min.js"></script>

<!-- contact js -->
<script src="/resources/view/assets/js/contact.js"></script>
<script src="/resources/view/assets/js/jquery.form.js"></script>
<script src="/resources/view/assets/js/jquery.validate.min.js"></script>
<script src="/resources/view/assets/js/mail-script.js"></script>
<script src="/resources/view/assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->	
<script src="/resources/view/assets/js/plugins.js"></script>
<script src="/resources/view/assets/js/main.js"></script>
</body>
</html>