<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login_MNG.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar_MNG.jsp"%>
</c:if>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />
</head>
<body>


<section class="blog_area single-post-area section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-10 posts-list" style="padding: 40px 100px;">
				<h2 class="contact-title" align="center">공지 사항</h2><hr>
	<div>
	    <h3 align="center">${announceDetail.ntc_title}</h3><br>
	    <p align="right">작성자: 관리자&nbsp;&nbsp;조회수:${announceDetail.ntc_views}&nbsp;&nbsp;작성일:<fmt:formatDate value="${announceDetail.ntc_date}" pattern="yyyy-MM-dd"/></p><br><br>
	    <p>${announceDetail.ntc_con}</p>
	</div>
	
			</div>
		</div>
	</div>
</section>
			<div align="center">
				<Button type="button" class="bigBtn"  onclick="location.href = '/MNGancmodify?ntc_num_pk=${announceDetail.ntc_num_pk }'">공지 수정</Button>
				<Button type="button" class="bigBtn" id="Del" onclick="location.href = '/MNGancdelete?ntc_num_pk=${announceDetail.ntc_num_pk}'">공지 삭제</Button>
			</div>
	
	</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	$("#Del").click(function(){
		alert("삭제가 완료되었습니다");
	});
</script>
</html>