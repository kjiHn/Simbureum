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
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/logo/loder1.jpg">

    <!-- CSS here -->
    <link rel="stylesheet" href="/resources/view/assets/css/total.css?ver=2" />
    
    <style type="text/css"> 
   		aside {
		  list-style-type: none;
		  overflow: auto;
		  position: fixed;
		}
		
		.sidebar {
		  padding-top: 10px;
		  padding-bottom: 10px;
		}
   	</style>
</head>
<body>

		<div class="col-lg-2" >
			<!-- <div class="blog_left_sidebar"> -->
			<div class="blog_right_sidebar" >

				<aside class="single_sidebar_widget post_category_widget"
					style="background-color: #e3c4ff; height: 670px; width: 200px; padding-top: 70px; padding-left: 40px; padding-right: 40px">
					<h4 class="widget_title" style="text-align: center"><b>마이페이지</b></h4>
					<!-- 제목 -->
					<ul class="list cat-list">
						<li><a href="/user/my_Info?mb_name=<%=session.getAttribute("mid") %>" class="d-flex">
								<p id = "myInfo" class="sidebar">내정보</p> <!-- 마이페이지 내용 적어요 -->
								<!--  소제목? -->

						</a></li>
						<li><a href="/mypage/upPost?mb_num_pk=<%=session.getAttribute("mNum") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
								<p id = "uploadPost" class="sidebar">올린 심부름</p>

						</a></li>
						<li><a href="/mypage/supPost?mb_num_pk=<%=session.getAttribute("mNum") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
								<p id = "supPost" class="sidebar">심부름꾼 지원</p>

						</a></li>
						<li><a href="/mypage/endPost?mb_id=<%=session.getAttribute("mid") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
								<p id = "endPost" class="sidebar">심부름 한 내역</p>

						</a></li>
						<li><a href="/Ereview/EwriteList?mb_id_pk=<%=session.getAttribute("mid") %>" class="d-flex"> <!-- 마이페이지 내용 적어요 -->
								<p id="Ereview" class="sidebar">작성한 리뷰</p>

						</a></li>
						<li><a href="/review/receiveList?vr_mbid=<%=session.getAttribute("mid") %>" class="d-flex">
								<p id="review" class="sidebar">받은리뷰</p>

						</a></li>
					</ul>
				</aside>
			</div>
		</div>

 
 <script type="text/javascript">
 var link = window.location.pathname;

 
 if (link =='/user/my_Info') {
	$("#myInfo").css("font-weight", "bold");
	$("#myInfo").css("text-decoration", "underline");
	
}else if(link == '/mypage/upPost' || link.includes('uploadedPostDetail')){
	
	$("#uploadPost").css("font-weight", "bold");
	$("#uploadPost").css("text-decoration", "underline");
	
	
}else if(link == '/mypage/supPost' || link.includes('supportPostDetail')){
	
	$("#supPost").css("font-weight", "bold");
	$("#supPost").css("text-decoration", "underline");
	
	
}else if(link.includes('endPost') || link.includes('finishedPostDetail')){
	
	$("#endPost").css("font-weight", "bold");
	$("#endPost").css("text-decoration", "underline");
	
	
}else if(link.includes('EwriteList') || link.includes('writeList') || link.includes('EwrList')){
	$("#Ereview").css("font-weight", "bold");
	$("#Ereview").css("text-decoration", "underline");
	
}else if(link.includes('receiveList') || link.includes('EreceiveList') || link.includes('reList')){
	$("#review").css("font-weight", "bold");
	$("#review").css("text-decoration", "underline");
	
}
 console.log(link);

 </script>


</body>
</html>


