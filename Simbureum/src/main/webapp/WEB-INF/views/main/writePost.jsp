<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../model/topBar1.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>심부름 올리기</title>

<style type="text/css">

.button {
  background-color: white; 
  color: black; 
  border: 2px solid #BFA0ED;
  padding: 8px 80px;
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

</style>	

</head>
<body>

	<section class="blog_area single-post-area section-padding">
	<div class="container">
	<div class="row">
	<div class="col-lg-8 posts-list">
	<h2>심부름 작성</h2>
	
	<form:form commandName="post" method="POST" action="writePost">
		<table>
			<tr>
				<th>제목 : </th>
				<td><form:input path="post_title"/></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><form:textarea path="post_con"/></td>
			</tr>
			<tr>
				<th>위치 : </th>
				<td></td>
			</tr>
			<tr>
				<th>심부름 가격 : </th>
				<td><form:input path="post_price"/></td>
			</tr>
		</table>
		
		<input type="submit" class="button" value="완료">
		
	</form:form>
	</div>
	</div>
	</div>
	</section>

</body>

</html>
<%@ include file="../model/footer.jsp" %>