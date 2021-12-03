<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>

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

#postTable td{
	height: 30px;
}

.searchDiv {
	float: right;
}

.textinput {
	width: 200px;
	height: 30px;
}
</style>	

<title>올린 심부름</title>
</head>
<body>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						<h3>올린 심부름</h3>
						<table id="postTable">
							<tr>
								<th>제목</th>
								<td>${post.post_title}</td>
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
								<th>상태</th>
								<td>
									<c:if test="${empty post.sel_vr}">
										모집중
										<input type="button" class="button" onclick="openVol()" value="심부름꾼 보기">
									</c:if>
									<c:if test="${!empty post.sel_vr && empty post.vh_date}">진행중</c:if>
									<c:if test="${!empty post.sel_vr && !empty post.vh_date}">완료</c:if>
									<br>
									<c:if test="${!empty post.sel_vr}">
										(심부름꾼 : ${post.sel_vr})
									</c:if>
								</td>
							
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
						</table>
						<br><br>
						<c:if test="${empty post.sel_vr}">
							<input type="button" class="button" onclick="openVol()" value="게시글 수정">
							<input type="button" class="button" onclick="openVol()" value="게시글 삭제">
						</c:if>
						<c:if test="${!empty post.sel_vr && empty post.vh_date}">
							<input type="button" class="button" onclick="location:href='/mypage/completeProcess/${post.post_num_pk}'" value="심부름 완료">
						</c:if>
						<c:if test="${!empty post.sel_vr && !empty post.vh_date}">
							<input type="button" class="button" onclick="openVol()" value="심부름꾼에게 리뷰 작성">
						</c:if>

					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 지원한 심부름꾼 보는 창 열기 -->
	<script type="text/javascript">
		function openVol(){
			var popWidth = 460;
			var popHeight = 300;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../volunteerList/"+${post.post_num_pk};
			var openWin = window.open(url, "volunteerList", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>

</body>
</html>
