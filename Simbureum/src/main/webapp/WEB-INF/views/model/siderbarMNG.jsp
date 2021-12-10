<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="/resources/view/assets/css/total.css?ver=2" />
    <script src="/webjars/jquery/dist/jquery.min.js"></script>
</head>
<body>



	<!-- section class="blog_area section-padding">
		<div class="container" style="margin-left: 10%;">
			<div class="row"> -->
	<div class="col-lg-2" style="background-color: #e3c4ff; height: 600px">
		<!-- <div class="blog_left_sidebar"> -->
		<div class="blog_right_sidebar">

			<aside class="single_sidebar_widget post_category_widget"
				style="margin-top: 40px; background-color: #e3c4ff;">
				<h4 class="widget_title" style="color: #2d2d2d;">마이페이지</h4>
				<!-- 제목 -->
				<ul class="list cat-list">
					<li><a href="/MNGancboard" class="d-flex" >
							<p id="notice">공지</p>
					</a></li>
					<li><a href="/MNGuserboard" class="d-flex">
							<p id="manager">회원 관리</p>
					</a></li>
				</ul>
			</aside>
		</div>
	</div>

	<!-- 	</div>
		</div>
	</section>
 -->
 <script type="text/javascript">
 var link = window.location.pathname;
 
 if (link =='/MNGancboard') {
	$("#notice").css("font-weight", "bold");
	$("#notice").css("text-decoration", "underline");
	
}else if(link =='/MNGuserboard'){
	
	$("#manager").css("font-weight", "bold");
	$("#manager").css("text-decoration", "underline");
}

 console.log(link);

 </script> 



</body>
</html>


