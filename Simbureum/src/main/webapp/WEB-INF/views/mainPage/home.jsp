<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 
<%
	if(session.getAttribute("mid") != null) {
%>
	<%@ include file="../model/topBar_login_home.jsp" %>
<%
	}else{
		
%>
	<%@ include file="../model/topBar1.jsp"%>
<%
	}
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/logo/loder1.jpg">

    <!-- CSS here -->
	<link rel="stylesheet" href="/resources/view/assets/css/total.css">
    
</head>
<body>

 <!-- Slider Area Start-->
       <div class="slider-area slider-bg" style="overflow: hidden; height: 890px">
            <!-- Single Slider -->
            <div class="single-slider d-flex align-items-center slider-height2" style="height: 650px;">
                 <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-xl-8 col-lg-9 col-md-12 ">
                            <div class="hero__caption hero__caption2 text-center">
                                <h1 data-animation="fadeInLeft" data-delay=".6" style="z-index: 1; position: relative">심부름 해줘~ 할게!</h1>
                                <h2 style="z-index: 1; position: relative; width: 700px; color: white">
                                	'해줘~ 할게!'는 누구든지 심부름을 시킬 수 있고 할 수도 있는 사이트입니다.<br>
                                	심부름을 작성하여 도움을 요청하거나 <br>등록된 심부름에 심부름꾼을 지원해보세요. 
                                </h2>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>    
            <!-- Slider Shape -->
            <div class="slider-shape d-none d-lg-block" >
                <img class="slider-shape1" src="/resources/view/assets/img/hero/home.jpg" style="width:100%;  height:100%;  object-fit:cover; opacity: 0.7">
                <!-- <img class="slider-shape1" src="view/assets/img/hero/home.jpg" style=" object-fit: cover;"> -->
            </div>
            <div class="pricing-card-area pricing-card-area2 fix section-bg1" >
            <div class="container">
                <div class="row justify-content-center" >                   
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10" >
                        <div class="single-card text-center mb-80" >
                            <div class="card-top">
                                <img src="/resources/view/assets/img/icon/register.png" style="width: 80px;height: 80px; ">
                                <h4>심부름 작성</h4>
                            </div>
                            
                            <div class="card-bottom">
                                <a href="javascript:checkLogin();" class="borders-btn">심부름 작성</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10"  >
                        <div class="single-card text-center mb-30">
                            <div class="card-top" style="background-color: white;">
                                <img src="/resources/view/assets/img/icon/select.png" style="width: 80px;height: 80px; ">
                                <h4>심부름 보기</h4>
                            </div>
                          
                            <div class="card-bottom">
                                <a href="/main/postPage" class="borders-btn">심부름 보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>
            
        </div>
        <!-- Slider Area End -->
      <!--? Pricing Card Start -->
        <!-- <section class="pricing-card-area pricing-card-area2 fix section-bg1" >
            <div class="container">
                <div class="row justify-content-center" >                   
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10" >
                        <div class="single-card text-center mb-80" >
                            <div class="card-top">
                                <img src="view/assets/img/icon/register.png" style="width: 80px;height: 80px; background-color: white;">
                                <h4>게시글 작성</h4>
                            </div>
                            
                            <div class="card-bottom">
                                <a href="#" class="borders-btn">게시글 작성</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10"  >
                        <div class="single-card text-center mb-30">
                            <div class="card-top" style="background-color: white;">
                                <img src="view/assets/img/icon/select.png" style="width: 80px;height: 80px; ">
                                <h4>게시글 보기</h4>
                            </div>
                          
                            <div class="card-bottom">
                                <a href="#" class="borders-btn">게시글 보기   </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        
<script type="text/javascript">
	function checkLogin(){
		var id = '<%=session.getAttribute("mid")%>';
		if(id == "null"){
			alert("로그인이 필요한 서비스 입니다. 로그인 후 이용해주세요.");
		}else{
			location.replace("/main/writePost");
		}
	}	
</script>        
</body>
</html>
<%@include file="../model/footer.jsp" %>
