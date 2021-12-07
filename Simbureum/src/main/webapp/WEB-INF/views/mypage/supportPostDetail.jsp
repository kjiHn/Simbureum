<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

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

#postTable {
	text-align: center;
	width: 1000px;
	align: center;
	border: 1px solid #e3c4ff;
}

#postTable td{
	height: 30px;
}


</style>	

<title>심부름 한 내역</title>
</head>
<body>

	<!-- Modal -->
	<div class="col-md-auto">
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">삭제</button>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">심부름꾼 지원 취소</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">심부름꾼 지원을 취소하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" id="clickDel" >확인</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<script>
		$(document).ready(function(){
			$("#clickDel").on("click", function(){
				deleteSupportPost.action = "/mypage/supportPostDelete";
				deleteSupportPost.method = "post";
				deleteSupportPost.submit();
			});
		});
		</script>
	</div>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<h2 class="contact-title">심부름꾼 지원</h2>
					<div class="slider-shape d-none d-lg-block">
						<table id="postTable">
							<tr>
								<th>제목</th>
								<td>${post.post_title}</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><a href="<c:url value="#" />" style="color: black">${post.mb_id}</a></td>
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
									<c:if test="${empty post.sel_vr}">모집중</c:if>
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
						<button class="button"  data-toggle="modal" data-target="#exampleModal">심부름꾼 지원 취소</button>
						</c:if>
						
						<!-- Modal에서 사용하는 form -->
						<form id="deleteSupportPost">
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
</body>
</html>
