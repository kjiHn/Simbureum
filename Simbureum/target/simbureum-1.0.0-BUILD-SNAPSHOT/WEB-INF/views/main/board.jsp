<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar1.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시판</title>

<style type="text/css">

thead > tr ,tr:nth-of-type(even){
	background-color: #eeeeee;


}

</style>	

</head>
<body>
<%@ include file="../model/siderbar2.jsp" %>
	<!-- 게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center;  border: 1px solid #dddddd" width="1000" align="center">
				<thead>
					<tr>
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>위치</th>
						<th>조회수</th>
						<th>작성일</th>
					</tr>
					
				</thead>
				<tbody>
					<tr>
						<!-- 테스트 코드 -->
						<td>1</td>
						<td>벌레 잡아주세요ㅠㅠ</td>
						<td>벌레시러</td>
						<td>서울 서초구</td>
						<td>11</td>
						<td>2021.11.09</td>
					</tr>
					
					<tr>
						<!-- 테스트 코드 -->
						<td>1</td>
						<td>벌레 잡아주세요ㅠㅠ</td>
						<td>벌레시러</td>
						<td>서울 서초구</td>
						<td>11</td>
						<td>2021.11.09</td>
					</tr>
				
				</tbody>
			</table>
		</div>
	</div>
	
	<!-- 게시판 메인 페이지 영역 끝 -->
 <%@ include file="../model/footer.jsp" %>
</body>
</html>