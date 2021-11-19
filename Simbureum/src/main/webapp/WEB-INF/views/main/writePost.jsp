<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../model/topBar1.jsp" %>


<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>심부름 올리기</title>

<style type="text/css">

#centerBody{
  display: grid;
  place-items: center;
}

#centerCon{
  display: grid;
  place-items: center;
 
}

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

.textinput{
	width: 300px;
	height: 40px;
	margin-bottom: 20px;
	margin-top: 20px;
	

}

.content{
	width: 300px;
	height: 200px;
	margin-bottom: 20px;
	margin-top: 20px;
	

}
</style>	

</head>
<body>

	<section class="blog_area single-post-area section-padding" id="centerBody">
	<div class="container" style="width: 500px; height:500px">
	
	<div class="col-lg-11 posts-list" id="centerCon">
	<h2>심부름 작성</h2>
	
	<form:form commandName="post" method="POST" action="writePost">
		<table>
			<tr>
				<th>제목 : </th>
				<td ><form:input path="post_title" class="textinput" placeholder="제목을 입력해주세요" /></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><form:textarea path="post_con" class="content" placeholder="내용을 입력해주세요"/></td>
			</tr>
			<tr>
				<th>위치 : </th>
				<td></td>
			</tr>
			<tr>
				<th>심부름 가격 : </th>
				<td><form:input path="post_price" class="textinput" placeholder="심부름 가격을 입력해주세요"/></td>
			</tr>
		</table>
		
		<input type="submit" class="button" value="완료">
		
	</form:form>
	</div>
	</div>
	</section>

</body>

</html>
<%@ include file="../model/footer.jsp" %>