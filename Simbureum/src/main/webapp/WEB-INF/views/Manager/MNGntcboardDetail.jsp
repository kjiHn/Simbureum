<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login_MNG.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar_MNG.jsp"%>
</c:if>

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
								<td>${postDetail.post_title}</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td>${postDetail.mb_id}</a></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><fmt:formatDate value="${postDetail.post_date}" pattern="yyyy.MM.dd" /></td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${postDetail.post_views}</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>${postDetail.post_con}</td>
							</tr>
							<tr>
								<th>위치</th>
								<td>${postDetail.pbigc_name} ${postDetail.psmallc_name}</td>
							</tr>
							<tr>
								<th>심부름 가격</th>
								<td>${postDetail.post_price}</td>
							</tr>
						</table>
						<form action="/postdelete" method="get"> 
						<input type="hidden" name="post_num_pk" value="${postDetail.post_num_pk}"/>
						<input class ="button" type="submit" value="게시글삭제"/>
						</form>
						<%-- <input type="button" class="button"  value="게시글 삭제" onclick = "location.href = 'MNGpostdelete?post_num_pk=${postDetail.post_num_pk}'"> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</body>
</html>
