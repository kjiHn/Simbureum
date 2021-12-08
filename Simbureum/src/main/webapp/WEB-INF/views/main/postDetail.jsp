<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>
<%
	pageContext.setAttribute("mNum", session.getAttribute("mNum"));
%>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
.button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 20px;
	float: right;
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}

a {
	color: black;
}

#postTable {
	text-align: center;
	width: 1000px;
	align: center;
	border: 1px solid #e3c4ff;
}

.searchDiv {
	float: right;
}

.textinput {
	width: 200px;
	height: 30px;
}
</style>	

<title>게시글 보기</title>
</head>
<body>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						
						<table id="postTable">
							<tr>
								<th>제목</th>
								<td>${post.post_title}</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><a onclick="openReview()" href="" style="color: black; font-weight: bold;">${post.mb_id}</a></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><fmt:formatDate value="${post.post_date}" pattern="yyyy.MM.dd" /></td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${post.post_views}</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>${post.post_con}</td>
							</tr>
							<tr>
								<th>위치</th>
								<td>${post.pbigc_name} ${post.psmallc_name}</td>
							</tr>
							<tr>
								<th>마감일</th>
								<td><fmt:formatDate value="${post.post_dline}" pattern="yyyy.MM.dd" /></td>
							</tr>
							<tr>
								<th>심부름꾼 수</th>
								<td>${post.post_numof}명</td>
							</tr>
							<tr>
								<th>심부름 가격</th>
								<td><fmt:formatNumber value="${post.post_price}" />원</td>
							</tr>
							<c:if test="${post.mb_num_pk != mNum}">
							<tr>
								<td></td>
								<td><input type="button" class="button" onclick="openReport()" value="신고하기"></td>
							</tr>
							</c:if>
						</table>
						
						<c:if test="${post.mb_num_pk != mNum}">
							<input type="button" class="button" onclick="openVol()" value="심부름꾼 지원하기">
						</c:if>

					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 신고하기 창 열기 -->
	<script type="text/javascript">
		function openReport(){
			var popWidth = 400;
			var popHeight = 400;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../writeReport/"+${post.post_num_pk};
			var openWin = window.open(url, "writeReport", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>
	
	<!-- 심부름꾼 지원하기 창 열기 -->
	<script type="text/javascript">
		function openVol(){
			var popWidth = 400;
			var popHeight = 200;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../volunteer/"+${post.post_num_pk};
			var openWin = window.open(url, "volunteer", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>
	
	<!-- 고용자의 리뷰, 평점 보기 -->
	<script type="text/javascript">
		function openReview(){
			var popWidth = 400;
			var popHeight = 200;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="/review/grdAvg?vr_mbid=${post.mb_id}";
			var openWin = window.open(url, "grdAvg", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>

</body>
</html>
