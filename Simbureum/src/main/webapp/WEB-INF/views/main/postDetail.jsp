<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../model/topBar_login.jsp" %>
<%
	pageContext.setAttribute("mNum", session.getAttribute("mNum"));

	pageContext.setAttribute("replaceChar", "\n");
%>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">

a {
	color: black;
}

.postTable {
	width: 900px;
	word-break: break-all;
}

.postTable th{
	padding: 10px;
	width: 200px;
}

.postTable td{
	text-align: left;
}

.searchDiv {
	float: right;
}

.content {
	width: 300px;
	height: 180px;
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
					 <table style="text-align: left; width: 300px;  word-break: break-all;">
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
                           <td style="border-top: 1px solid gray;">ID : ${vrdto.mb_id_pk}</td>
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

					<div class="modal-body" style="overflow: auto; height: 250px; ">
						<h3 style="float:left">신고 사유 :</h3><br>
						<form id="writeReport" action="/main/postDetail/writeReport/${post_num_pk}" method="post">
							<textarea name="porp_con" id="porp_con" class="content" placeholder="내용을 입력해주세요"></textarea>
						
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="bigBtn" id="submitReport">완료</button>
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
							<button type="button" class="bigBtn" id="submitVol">확인</button>
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
								<th>위치</th>
								<td>${post.pbigc_name} ${post.pmidc_name} ${post.psmallc_name}</td>
								<td id="map" style="width:500px; height:400px; z-index: -1" rowspan="4"></td>
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
							<tr style="height: 250px">
								<td colspan="3">${fn:replace(post.post_con, replaceChar, "<br/>")}</td>
							</tr>
							<c:if test="${post.mb_num_pk != mNum}">
							<tr>
								<td colspan="3"><button class="smallBtn" onclick="checkReport()" style="float: right">신고하기</button></td>
							</tr>
							</c:if>
						</table>
					</div>
					<br>
					<div style="text-align: center">
						<c:if test="${post.mb_num_pk != mNum}">
							<button class="bigBtn" onclick="checkVol()">심부름꾼 지원</button>
						</c:if>
					</div>

					</div>
				</div>
			</div>
		
	</section>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c11e1620d5e96294da73f9c7ec269f0e"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(${post.post_lat}, ${post.post_lng}), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${post.post_lat}, ${post.post_lng}); 
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 지도에 표시할 원을 생성합니다
		circle = new daum.maps.Circle({
			center : new daum.maps.LatLng(${post.post_lat}, ${post.post_lng}),  // 원의 중심좌표 입니다 
			radius: 100, // 미터 단위의 원의 반지름입니다 
			strokeWeight: 2, // 선의 두께입니다 
			strokeColor: '#75B8FA', // 선의 색깔입니다
			strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle: 'dashed', // 선의 스타일 입니다
			fillColor: '#CFE7FF', // 채우기 색깔입니다
			fillOpacity: 0.7  // 채우기 불투명도 입니다   
		});
		
		// 지도에 원을 표시합니다 
		circle.setMap(map);
	</script>
	
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
<%@include file="../model/footer.jsp" %>
</html>
