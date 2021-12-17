<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login_MNG.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar_MNG.jsp"%>
</c:if>



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
	
	<h2>공지 수정</h2>
	
	<form method="post" action="MNGancmodify1">
		<table>
			<tr>
				<th>제목 : </th>
				<td><input name="ntc_title" class="textinput" value="${ancmodify.ntc_title}" /></td>
			</tr>
			<tr>
				<th>내용 : </th>
				<td><textarea name="ntc_con" class="content">${ancmodify.ntc_con}</textarea></td>
			</tr>
			
		</table>
		<input type="hidden" name="ntc_num_pk" value="${ancmodify.ntc_num_pk}"/>
		<div align="right" ><input type="submit" id="Mdf" class="button" value="완료"></div>
		
	</form>
	</div>
	</div>
	</section>
	
	


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	$("#Mdf").click(function(){
		alert("수정이 완료되었습니다");
	});
</script>

</html>
