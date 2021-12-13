<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>
<%
	pageContext.setAttribute("mNum", session.getAttribute("mNum"));
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
	float: right;
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}

a {
	color: black;
}

.postTable {
	width: 900px;
	align: center;
	border: 1px solid #e3c4ff;
}

.postTable td{
	padding: 10px;
	width: 700px;
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
	<!-- 리뷰 보는 Modal -->
	<div class="col-md-auto">
			<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true" >
				<div class="modal-dialog" role="document">
					<div class="modal-content" style="width: 350px; margin: auto;">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">고용자 리뷰 정보</h2>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <h1><span aria-hidden="true">&times;</span></h1> 
					        </button>
						</div>
					
						<div class="modal-body" style="overflow: auto; height: 300px; ">
						<c:if test="${grdAvg.vr_grd ==null }">
					<body style="text-align: center;" >
					<div style="color: white;">
					<br><br><br><br>
					<h3>선택하신 고용자의 리뷰가 없습니다</h3>
					<p>심부름을 완료하고 첫 리뷰를 작성해주세요</p>
					</div>
					
					</body>	
					</c:if>
					
					<c:if test="${grdAvg.vr_grd != null }">
					 <table style="text-align: left; width: 330px;">
                     <thead>
                        <tr >
                           <th>
                           		<h2> <c:out value="${grdAvg.vr_mbid }"></c:out></h2>
                           		<p>평점 <c:out value="${grdAvg.vr_grd }"></c:out> | 리뷰 수 <c:out value="${grdAvg.vr_rvn_pk }"></c:out></p> 
                           		<h3>리뷰</h3>
                           </th>
                        </tr>
                     </thead>
					<c:forEach items="${reviewList }" var="vrdto">
                         <tr>                 
                           <td style="border-top: 1px solid gray;">ID : ${vrdto.vr_mbid}</td>
                         </tr>
                         <tr>
                           <td>${vrdto.vr_date}</td>
                           </tr>
                           <tr>
                           <td style="color: #ffc107;"> 
	                            <c:if test="${vrdto.vr_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 5}">★★★★★</c:if>
                            </td>
                            </tr>
                            
                            <tr>
                           <td>${vrdto.vr_rvc }</td>
                    	</tr>
                    
                   </c:forEach>
                  </table>
                  </c:if>					
						</div>
					</div>
				</div>
			</div>		
		</div>

	<!-- 신고하기 Modal -->
	<div class="col-md-auto">
		<div class="modal fade" id="report" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true" >
			<div class="modal-dialog" role="document">
				<div class="modal-content" style="width: 450px; margin: auto;">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">신고하기</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
         					<h1><span aria-hidden="true">&times;</span></h1> 
       					</button>
					</div>

					<div class="modal-body" style="overflow: auto; height: 300px; ">
						<h3 style="float:left">신고 사유 :</h3>
						<form id="writeReport" action="/main/postDetail/writeReport/${post_num_pk}" method="post">
							<textarea name="porp_con" id="porp_con" class="content" placeholder="내용을 입력해주세요"></textarea>
						
							<button type="button" class="btn btn-primary" id="submitReport">완료</button>
						</form>
					</div>
					
				</div>
			</div>
		</div>		
	</div>
	<script>
		$("#submitReport").on("click", function(){
			alert("신고가 접수되었습니다.");
			document.getElementById('writeReport').submit();
		});
	</script>
	
	<!-- 심부름꾼 지원하기 Modal -->
	<div class="col-md-auto">
		<div class="modal fade" id="volunteer" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true" >
			<div class="modal-dialog" role="document">
				<div class="modal-content" style="width: 350px; margin: auto;">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">심부름꾼 지원</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
         					<h1><span aria-hidden="true">&times;</span></h1> 
       					</button>
					</div>

					<div class="modal-body" style="overflow: auto; height: 300px; ">
						<form id="volForm" action="/main/postDetail/volunteer/${post_num_pk}" method="POST">
							심부름꾼 지원 하시겠습니까?<br>
							* 심부름 하면서 문제가 발생하는 경우<br> 저희가 책임지지 않습니다.<br>
							<button type="button" class="btn btn-primary" id="submitVol">확인</button>
						</form>
					</div>
					
				</div>
			</div>
		</div>		
	</div>
	<script>
		$("#submitVol").on("click", function(){
			alert("심부름꾼 지원이 완료되었습니다.");
			document.getElementById('volForm').submit();
		});
	</script>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-11 posts-list" style="padding: 40px 100px;">
					<h2 class="contact-title" align="center">${post.post_title}</h2><hr>
					
					<div>
						 <p align="right">작성자: <a data-toggle="modal" data-target="#exampleModal1" href="" style="color: black; font-weight: bold;">${post.mb_id}</a>&nbsp;
						 	조회수: ${post.post_views}&nbsp;&nbsp;작성일: <fmt:formatDate value="${post.post_date}" pattern="yyyy-MM-dd"/>
						 </p><br><br>
						 
						 <table class="postTable">
						 	<tr>
								<th>내용</th>
								<td>${post.post_con}</td>
							</tr>
							<tr>
								<th>위치</th>
								<td>${post.pbigc_name} ${post.psmallc_name}</td>
							</tr>
							<tr>
								<th>마감일</th>
								<td><fmt:formatDate value="${post.post_dline}" pattern="yyyy.MM.dd" /></td>
							</tr>
							<tr>
								<th>심부름꾼 수</th>
								<td>${post.post_numof}명</td>
							</tr>
							<tr>
								<th>심부름 가격</th>
								<td><fmt:formatNumber value="${post.post_price}" />원</td>
							</tr>
							<c:if test="${post.mb_num_pk != mNum}">
							<tr>
								<td></td>
								<td><button class="button" onclick="checkReport()">신고하기</button></td>
							</tr>
							</c:if>
						</table>
					</div>
					
						<c:if test="${post.mb_num_pk != mNum}">
							<button class="button" onclick="checkVol()">심부름꾼 지원</button>
						</c:if>

					</div>
				</div>
			</div>
		
	</section>
	
	<!-- 이미 신고한 게시글인지 확인 후 모달창 띄우기 -->
	<script>
		function checkReport(){
			$.ajax({
				url : "/main/postDetail/checkReport/${post_num_pk}",
				type : "POST",
				success : function(data){
					if(data == 0){
				    	$("#report").modal();
					}else{
						alert("이미 신고한 게시글입니다.");
					}
				}
			});
		}
	</script>
	
	<!-- 이미 심부름꾼 지원한 게시글인지 확인 후 모달창 띄우기 -->
	<script>
		function checkVol(){
			$.ajax({
				url : "/main/postDetail/checkVolunteer/${post_num_pk}",
				type : "POST",
				success : function(data){
					if(data == 0){
				    	$("#volunteer").modal();
					}else{
						alert("이미 지원한 게시글입니다.");
					}
				}
			});
		}
	</script>

</body>
</html>
