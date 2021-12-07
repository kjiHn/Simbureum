<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	if(session.getAttribute("mid") != null) {
%>
	<%@ include file="../model/topBar_login.jsp" %>
<%
	}else{
		
%>
	<%@ include file="../model/topBar1.jsp"%>
<%
	}
%>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
.button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 20px;
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}

a {
	color: black;
}

#postTable {
	text-align: center;
	width: 1000px;
	align: center;
	border: 1px solid #e3c4ff;
}

#postTable tr {
	border: 1px solid #e3c4ff;
}

.filter {
	width: 1000px;
}

.searchDiv {
	float: right;
}

.textinput {
	width: 200px;
	height: 30px;
}
</style>	

<title>게시글 보기</title>
</head>
<body>
	

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						<div class="filter">
							위치 선택 : 
							<select id="bigCategory">
								<option value="0">시/도</option>
								<option value="1">서울</option>
								<option value="2">경기도</option>
							</select> <select name="psmallc_pk" id="smallCategory">
								<option value="0">시/군/구</option>
							</select>
							<input type="button" class="button" id="changeLoc" value="조회">
						
							<div class="searchDiv">
								<select id="searchCategory">
									<option value="1">제목</option>
									<option value="2">제목+내용</option>
									<option value="3">작성자</option>
								</select>
								<input id="searchInput" class="textinput" placeholder="심부름 검색" />
								<input type="button" class="button" id="search" value="검색" />
							</div>
						</div>
						
						<table id="postTable">
							<thead>
								<tr style="background-color: #e3c4ff;">
									<th>No.</th>
									<th>제목</th>
									<th>작성자</th>
									<th>위치</th>
									<th>조회수</th>
									<th>작성일</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${postList}" var="post" begin="0"
									end="${fun:length(postList) }" step="1" varStatus="status">
									<tr>
										<td>${status.index + 1}</td>
										<td><a href="javascript:checkLogin(${post.post_num_pk});">${post.post_title}</a></td>
										<td>${post.mb_id}</td>
										<td>${post.pbigc_name} ${post.psmallc_name}</td>
										<td>${post.post_views}</td>
										<td><fmt:formatDate value="${post.post_date}" pattern="yyyy.MM.dd" /></td>
									</tr>
									<script type="text/javascript">
									function checkLogin(postNum){
										var id = '<%=session.getAttribute("mid")%>';
										if(id == "null"){
											alert("로그인이 필요한 서비스 입니다. 로그인 후 이용해주세요.");
										}else{
											location.replace("/main/postDetail/"+postNum);
										}
									}
									</script>
								</c:forEach>

							</tbody>
						</table>
						
						<nav class="blog-pagination justify-content-center d-flex">
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
									<li class="page-item"><a
										href="${pageMaker.startPage -1}" class="page-link">이전</a></li>
								</c:if>

								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class='page-item ${pageMaker.cri.pageNum == num ? "active":""} '>
										<a href="${num}" class="page-link">${num}</a>
									</li>
								</c:forEach>

								<c:if test="${pageMaker.next}">
									<li class="page-item "><a
										href="${pageMaker.endPage +1 }" class="page-link">다음</a></li>
								</c:if>
							</ul>
						</nav>

					</div>
				</div>

			</div>
		</div>
	</section>
	
	<form id='actionForm' action="/main/postPage" method='get'> 
      	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
     	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
   	</form>
   	  
  	<script>
  		//p 312
		var actionForm = $("#actionForm");
  		$(".page-item a").on("click", function (e){
     		e.preventDefault();
     		console.log("click");
     		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
     		actionForm.submit();
  		});
  
  		$(".active > a").click(function() {
	  		event.preventDefault();
		});
	</script>
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(function(){
			$("#bigCategory").change(function(){
				var seoul_category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];
				var seoul_category_val = [1, 2, 3, 4, 5];
				var gyeonggi_category = ["화성시", "수원시", "오산시", "남양주시", "광주시"];
				var gyeonggi_category_val = [6, 7, 8, 9, 10];
				var target = document.getElementById("smallCategory");
				var basic_category = "시/군/구";
				var basic_category_val = 0;
				
				var category1 = $("#bigCategory").val(); 
				
				var val;
				var text;
				
				if(category1 == 1){
					text = seoul_category;
					val = seoul_category_val;
				}else if(category1 == 2){
					text = gyeonggi_category;
					val = gyeonggi_category_val;
				}else{
					text = basic_category;
					val = basic_category_val;
				}
				
				$("#smallCategory").empty();
				
				if(category1 >= 1){
					for (x in val){
						var opt = document.createElement("option");
						opt.value = val[x];
						opt.innerHTML = text[x];
						target.appendChild(opt);
					}
				}else{
					var opt = document.createElement("option");
					opt.value = val;
					opt.innerHTML = text;
					target.appendChild(opt);
				}
			
			});
		});
	</script>

	<script>	
		$("#changeLoc").on('click', function(){
			var catNum = $("#smallCategory").val();
			$.ajax({
				type: "GET",
				url : "/main/locFilter?catNum="+catNum,
				success : function(data){
					console.log(data);
					if(catNum != 0){
						if(data.length >= 1){
							$("#postTable > tbody").empty(); //테이블 초기화
							$.each(data, function(index, item){
								index += 1;
								str = "<tr>";
								str += "<td>"+index+"</td>";
								str += "<td><a href = '/main/postDetail/" + item.post_num_pk + "'>" + item.post_title + "</a></td>";
								str += "<td>"+item.mb_id+"</td>";
								str += "<td>"+item.pbigc_name+" "+item.psmallc_name+"</td>";
								str += "<td>"+item.post_views+"</td>";
								str += "<td>"+item.post_date+ "</td>";
								str += "</tr>";
								$("#postTable").append(str);
			        		});	
						}else{
							alert("해당되는 심부름이 없습니다.");
						}
					}else{
						alert("카테고리를 선택해주세요.");
					}
				}
			});
		});
	</script>
	
	<script>	
		$("#search").on('click', function(){
			var num = $("#searchCategory").val();
			var value = $("#searchInput").val();
			$.ajax({
				type: "GET",
				url : "/main/searchFilter?num="+num+"&search="+value,
				success : function(data){
					if(value != ''){
						if(data.length == 0){
							alert("해당되는 심부름이 없습니다.");
						}else{
							$("#postTable > tbody").empty(); //테이블 초기화
							$.each(data, function(index, item){
								index += 1;
								str = "<tr>";
								str += "<td>"+index+"</td>";
								str += "<td><a href = '/main/postDetail/" + item.post_num_pk + "'>" + item.post_title + "</a></td>";
								str += "<td>"+item.mb_id+"</td>";
								str += "<td>"+item.pbigc_name+" "+item.psmallc_name+"</td>";
								str += "<td>"+item.post_views+"</td>";
								str += "<td>"+item.post_date+ "</td>";
								str += "</tr>";
								$("#postTable").append(str);
			        		});
						}
					}else{
						alert("검색어를 입력해주세요.");
					}
				}
			});
		});
	</script>
	

</body>
</html>
