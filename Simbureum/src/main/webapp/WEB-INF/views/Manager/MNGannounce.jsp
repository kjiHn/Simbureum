<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar1.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	    <h3 align="center">${announce.get(0).getNtc_title()}</h3><br>
	    <p align="right">작성자: 관리자&nbsp;&nbsp;조회수:${announce.get(0).getNtc_views()}&nbsp;&nbsp;작성일:<fmt:formatDate value="${announce.get(0).getNtc_date()}" pattern="yyyy-MM-dd"/></p><br><br>
	    <p>안녕하세요, 해줘~할게 입니다.
	
	      11월 13일(토) 20시부터 11월 14일(일) 9시까지
	
	      사이트 점검 및 업데이트가 있을 예정입니다.
	
	      이용에 불편을 드려 죄송합니다.</p>
	</div>
	
			</div>
		</div>
	</div>
</section>
	
	
</body>
</html>