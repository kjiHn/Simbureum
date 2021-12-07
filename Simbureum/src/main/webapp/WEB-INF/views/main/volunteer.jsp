<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.button {
  background-color: white; 
  color: black; 
  border: 2px solid #BFA0ED;
  padding: 8px 60px;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
}

.button:hover {
  background-color: #BFA0ED;
  color: white;
}

.content{
	width: 300px;
	height: 100px;
}
</style>

<title>심부름꾼 지원</title>
</head>
<body>
	
	<c:if test="${empty apPost}">
		<form method="POST" action="/main/volunteer/${post_num_pk}">
			심부름꾼 지원하시겠습니까?<br>
			* 심부름 하면서 문제가 발생하는 경우<br> 저희가 책임지지 않습니다.<br>
			<input type="button" class="button" value="취소" onclick="javascript:self.close()">
			<input type="submit" class="button" value="확인">
		</form>
	</c:if>
	<c:if test="${!empty apPost}">
		이미 지원한 심부름 입니다.<br>
		마이페이지로 이동하여 확인하시겠습니까?<br>
		<input type="button" class="button" value="취소" onclick="javascript:self.close()">
		<input type="button" class="button" value="마이페이지로 이동" onclick="javascript:opener.location.href='/mypage/supPost?mb_num_pk=<%=session.getAttribute("mNum") %>';self.close()">
	</c:if>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
</body>
</html>