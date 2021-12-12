<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>신고된 게시글</title>
</head>
<body>
	<h2>신고된 게시글</h2>
	<c:forEach items="${popuppost}" var="popuppost">
		<div>
			<p><b>신고자</b>&nbsp; ${ popuppost.mbn_id}</p>
			<p><b>작성자</b>&nbsp; ${ popuppost.mb_id}</p>
			<p><b>제목</b>&nbsp;<a href="MNGrptboard?mb_num_pk=${popuppost.mb_num_pk }"> ${ popuppost.post_title}</a></p>
		</div>
	</c:forEach>
</body>
</html>


