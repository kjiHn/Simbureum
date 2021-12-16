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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
.postTable {
	text-align: center;
	width: 1200px;
	align: center;
	border: 1px solid #e3c4ff;
	margin-top: 10px;
}

.postTable tr {
	border: 1px solid #e3c4ff;
}

.postTable thead{
	background-color: #e3c4ff; 
	height: 32px;
}

.filter {
	width: 799px;
	display: inline-block;
}

.searchDiv {
	display: inline-block;
}

.textinput {
	width: 200px;
	height: 30px;
}
</style>	

<title>게시글 보기</title>
</head>
<body>
	

	<section class="blog_area single-post-area section-padding" style="margin-bottom: 349px;padding-top: 160px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list" style="height: 258px;">
					<h2 class="contact-title" align="center" style="width: 1200px">심부름 게시판<hr></h2>
					<div class="slider-shape d-none d-lg-block" style="width: 1200px">
						<div class="filter">
							<form id="locFilter" action="/main/postLocFilter" method="get">
							위치 선택 :
							<select id="bigCategory" name="pbigc_pk">
								<option value="0">시/도</option>
								<option value="1">서울</option>
								<option value="2">경기도</option>
							</select>
							<select id="midCategory" name="pmidc_pk">
								<option value="0">시/군/구</option>
							</select>
							<select id="smallCategory" name="psmallc_pk">
								<option value="0">읍/면/동</option>
							</select>
							
								<input type="button" class="smallBtn" id="changeLoc" value="조회" />
							</form>
						</div>
						
						<div class="searchDiv">
							<form id="searchFilter" action="/main/postSearchFilter" method="get">
								<select id="searchCategory" name="catNum">
									<option value="1">제목</option>
									<option value="2">제목+내용</option>
									<option value="3">작성자</option>
								</select>
								
								<input id="searchInput" name ="value" class="textinput" placeholder="심부름 검색" />
								<input type="button" class="smallBtn" id="search" value="검색" />
							</form>
						</div>
					</div>
						
						<c:if test="${pageMaker.totalCount == 0}">
							<h2 style="text-align: center; font-weight: bold; padding-top: 100px; width: 1000px">선택한 지역에 심부름이 없습니다.</h2>
						</c:if>
						
						<c:if test="${pageMaker.totalCount != 0}">
							<table class="postTable">
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
										end="${fun:length(postList)}" step="1" varStatus="status">
										<tr>
											<td style="padding: 10px">${status.index + 1}</td>
											<td style="width: 760px"><a href="javascript:checkLogin(${post.post_num_pk});" style="color: black">${post.post_title}</a></td>
											<td>${post.mb_id}</td>
											<td>${post.pbigc_name} ${post.pmidc_name} ${post.psmallc_name}</td>
											<td>${post.post_views}</td>
											<td><fmt:formatDate value="${post.post_date}" pattern="yyyy.MM.dd" /></td>
										</tr>
										<script type="text/javascript" >
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
							<nav class="blog-pagination justify-content-center d-flex" style="width: 1200px">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="page-item">
											<a href="${pageMaker.startPage -1}" class="page-link">이전</a>
										</li>
									</c:if>
	
									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li class='page-item ${pageMaker.cri.pageNum == num ? "active":""} '>
											<a href="${num}" class="page-link">${num}</a>
										</li>
									</c:forEach>
	
									<c:if test="${pageMaker.next}">
										<li class="page-item ">
											<a href="${pageMaker.endPage +1 }" class="page-link">다음</a>
										</li>
									</c:if>
								</ul>
							</nav>
						</c:if>

					</div>
				</div>

			</div>
		
	</section>
	
	<form id="actionForm" action="/main/postLocFilter" method="get"> 
      	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
     	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
     	<input type='hidden' name='pbigc_pk' value='${pbigc}' />
     	<input type='hidden' name='pmidc_pk' value='${pmidc}' />
     	<input type='hidden' name='psmallc_pk' value='${psmallc}' />
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
  
	</script>
	
	<!-- 위치 필터 버튼 실행-->
	<script>	
		$("#changeLoc").on('click', function(){
			var form = $("#locFilter");
			var catNum = $("#smallCategory").val();
			if(catNum != 0){
				$('input[name=psmallc]').attr('value', catNum);
				form.action = "/main/postLocFilter?catNum="+catNum;
				form.submit();
			}else{
				alert("카테고리를 선택해주세요.");
			}
		});
	</script>
	
   <!-- 검색 버튼 실행-->
   <script>	
		$("#search").on('click', function(){
			var form = $("#searchFilter");
			var value = $("#searchInput").val();
			if(value != ''){
				form.submit();
			}else{
				alert("검색어를 입력해주세요.");
			}
		});
	</script>
	
	<!-- 선택했던 위치 카테고리 selected 주기-->
	<script>	
		var target = document.getElementById("midCategory");
		var category;
		var category_val;
		var val;	
		var text;	
		
		if(${pbigc} == 1){	
			$("#bigCategory option:eq(1)").prop("selected", true);	
			category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];	
			category_val = [1, 2, 3, 4, 5];	
				
		} else if(${pbigc} == 2){	
			$("#bigCategory option:eq(2)").prop("selected", true);	
			category = ["화성시", "시흥시", "오산시", "남양주시", "광주시"];	
			category_val = [6, 7, 8, 9, 10];	
		}
		
		text = category;	
		val = category_val;
		
		for (x in val){	
			var opt = document.createElement("option");	
			opt.value = val[x];	
			opt.innerHTML = text[x];	
			target.appendChild(opt);	
		}	
			
		$("#midCategory").val(${pmidc}).prop("selected", true);
		
		target = document.getElementById("smallCategory");
		
		if(${pmidc} == 1){
			category = ["강일동", "고덕동", "길동"];	
			category_val = [1, 2, 3];	
		} else if(${pmidc} == 2){
			category = ["마포동", "망원동", "상수동"];	
			category_val = [4, 5, 6];	
		} else if(${pmidc} == 3){
			category = ["당산동", "대림동", "문래동"];	
			category_val = [7, 8, 9];	
		} else if(${pmidc} == 4){
			category = ["반포동", "방배동", "서초동"];	
			category_val = [10, 11, 12];	
		} else if(${pmidc} == 5){
			category = ["노량진동", "동작동", "사당동"];	
			category_val = [13, 14, 15];	
		} else if(${pmidc} == 6){
			category = ["금곡동", "기안동", "남양읍"];	
			category_val = [16, 17, 18];	
		} else if(${pmidc} == 7){
			category = ["군자동", "매화동", "포동"];	
			category_val = [19, 20, 21];	
		} else if(${pmidc} == 8){
			category = ["당산동", "대림동", "문래동"];	
			category_val = [22, 23, 24];	
		} else if(${pmidc} == 9){
			category = ["가수동", "오산동", "원동"];	
			category_val = [25, 26, 27];	
		} else if(${pmidc} == 10){
			category = ["도척면", "목동", "오포읍"];	
			category_val = [28, 29, 30];	
		}
		
		text = category;	
		val = category_val;
		
		for (x in val){	
			var opt = document.createElement("option");	
			opt.value = val[x];	
			opt.innerHTML = text[x];	
			target.appendChild(opt);	
		}	
			
		$("#smallCategory").val(${psmallc}).prop("selected", true);
		
	</script>
	
	<script>
		$(document).ready(function(){
			$("#bigCategory").change(function(){
				var seoul_category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];
				var seoul_category_val = [1, 2, 3, 4, 5];
				var gyeonggi_category = ["화성시", "시흥시", "오산시", "남양주시", "광주시"];
				var gyeonggi_category_val = [6, 7, 8, 9, 10];
				var target = document.getElementById("midCategory");
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
				
				$("#midCategory").empty();
				
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
				
				changeSmallCat();
				
			});
			
			
		});
		
		$("#midCategory").change(function(){
			changeSmallCat();
		});
		
		function changeSmallCat(){
			var category1 = ["강일동", "고덕동", "길동"];
			var category_val1 = [1, 2, 3];
			var category2 = ["마포동", "망원동", "상수동"];
			var category_val2 = [4, 5, 6];
			var category3 = ["당산동", "대림동", "문래동"];
			var category_val3 = [7, 8, 9];
			var category4 = ["반포동", "방배동", "서초동"];
			var category_val4 = [10, 11, 12];
			var category5 = ["노량진동", "동작동", "사당동"];
			var category_val5 = [13, 14, 15];
			var category6 = ["금곡동", "기안동", "남양읍"];
			var category_val6 = [16, 17, 18];
			var category7 = ["군자동", "매화동", "포동"];
			var category_val7 = [19, 20, 21];
			var category8 = ["당산동", "대림동", "문래동"];
			var category_val8 = [22, 23, 24];
			var category9 = ["가수동", "오산동", "원동"];
			var category_val9 = [25, 26, 27];
			var category10 = ["도척면", "목동", "오포읍"];
			var category_val10 = [28, 29, 30];
			var target = document.getElementById("smallCategory");
			var basic_category = "읍/면/동";
			var basic_category_val = 0;
			
			var midCategory = $("#midCategory").val(); 
			
			var val;
			var text;
			
			if(midCategory == 1){
				text = category1;
				val = category_val1;
			}else if(midCategory == 2){
				text = category2;
				val = category_val2;
			}else if(midCategory == 3){
				text = category3;
				val = category_val3;
			}else if(midCategory == 4){
				text = category4;
				val = category_val4;
			}else if(midCategory == 5){
				text = category5;
				val = category_val5;
			}else if(midCategory == 6){
				text = category6;
				val = category_val6;
			}else if(midCategory == 7){
				text = category7;
				val = category_val7;
			}else if(midCategory == 8){
				text = category8;
				val = category_val8;
			}else if(midCategory == 9){
				text = category9;
				val = category_val9;
			}else if(midCategory == 10){
				text = category10;
				val = category_val10;
			}else{
				text = basic_category;
				val = basic_category_val;
			}
			
			$("#smallCategory").empty();
			
			if(midCategory >= 1){
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
		}
		
	</script>
	
</body>
<%@include file="../model/footer.jsp" %>
</html>
