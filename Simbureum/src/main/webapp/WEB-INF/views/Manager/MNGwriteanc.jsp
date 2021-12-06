<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%@ include file="../model/topBar_login_homeMNG.jsp" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
	margin-top: 20px
}
</style>	

<title>공지 작성 페이지</title>

</head>
<body>
	<section class="blog_area single-post-area section-padding" id="centerBody">
	<div class="container" style="width: 500px; height:500px">
	
	<div class="col-lg-11 posts-list" id="centerCon">
	
	<h2>공지 작성</h2>
	
	<form method="post" action="MNGwriteancIns">
		<table>
			<tr>
				<th>제목 : </th>
				<td><input name="post_title" class="textinput" placeholder="제목 입력" /></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><textarea name="post_con" class="content" placeholder="내용 입력"></textarea></td>
			</tr>
			
		</table>
		
		<div align="right" ><input type="submit" class="button" value="완료"></div>
		
	</form>
	</div>
	</div>
	</section>
	
	


</body>

</html>
