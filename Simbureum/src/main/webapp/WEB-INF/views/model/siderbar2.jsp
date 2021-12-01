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
</head>
<body>


	<!-- section class="blog_area section-padding">
		<div class="container" style="margin-left: 10%;">
			<div class="row"> -->
				<div class="col-lg-2" style=" background-color: #e3c4ff; height: 600px">
					<!-- <div class="blog_left_sidebar"> -->
					<div class="blog_right_sidebar" >

						<aside class="single_sidebar_widget post_category_widget"
							style="margin-top: 40px; background-color: #e3c4ff;">
							<h4 class="widget_title" style="color: #2d2d2d;">마이페이지</h4>
							<!-- 제목 -->
							<ul class="list cat-list">
								<li><a href="/user/my_Info?mb_name=<%=session.getAttribute("mid") %>" class="d-flex">
										<p id = "myInfo">내정보</p> <!-- 마이페이지 내용 적어요 -->
										<!--  소제목? -->

								</a></li>
								<li><a href="/mypage/upPost?mb_num_pk=<%=session.getAttribute("mNum") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
										<p id = "uploadPost">올린 심부름</p>

								</a></li>
								<li><a href="/mypage/supPost?mb_num_pk=<%=session.getAttribute("mNum") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
										<p id = "supPost">심부름꾼 지원</p>

								</a></li>
								<li><a href="/mypage/endPost?mb_num_pk=<%=session.getAttribute("mNum") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
										<p id = "endPost">심부름 한 내역</p>

								</a></li>
								<li><a href="/review/writeList?mb_id_pk=<%=session.getAttribute("mid") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
										<p>작성한 리뷰</p>

								</a></li>
								<li><a href="/review/receiveList?vr_mbid=<%=session.getAttribute("mid") %>" class="d-flex">
										<p style="font-weight: ">받은리뷰</p>

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
 
 if (link =='/user/my_Info') {
	$("#myInfo").css("font-weight", "bold");
	$("#myInfo").css("text-decoration", "underline");
	
}else if(link =='/mypage/upPost'){
	
	$("#uploadPost").css("font-weight", "bold");
	$("#uploadPost").css("text-decoration", "underline");
	
	
}else if(link =='/mypage/supPost'){
	
	$("#supPost").css("font-weight", "bold");
	$("#supPost").css("text-decoration", "underline");
	
	
}else if(link =='/mypage/endPost'){
	
	$("#endPost").css("font-weight", "bold");
	$("#endPost").css("text-decoration", "underline");
	
	
}
 console.log(link);

 </script>


</body>
</html>


