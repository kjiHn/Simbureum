<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login_home.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar1.jsp"%>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
</head>
<body>


<section class="blog_area single-post-area section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-10 posts-list" style="padding: 40px 100px;">
				<h2 class="contact-title" align="center">공지 사항</h2><hr>
	<div>
	    <h3 align="center">${userancboardDetail.ntc_title}</h3><br>
	    <p align="right">작성자: 관리자&nbsp;&nbsp;조회수:${userancboardDetail.ntc_views}&nbsp;&nbsp;작성일:<fmt:formatDate value="${announce.ntc_date}" pattern="yyyy-MM-dd"/></p><br><br>
	    <p>${userancboardDetail.ntc_con}</p>
	</div>
	
			</div>
		</div>
	</div>
</section>

</body>
</html>