<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../model/topBar_login.jsp" %>
<%
	pageContext.setAttribute("replaceChar", "\n");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
.postTable {
	text-align: center;
	align: center;
	word-break: break-all;
}

.postTable td{
	height: 30px;
	width: 300px;
	text-align: left;
}

.postTable th{
	width: 170px;
}

</style>	

<title>심부름 한 내역</title>
</head>
<body>

	<!-- Modal -->
	<div class="col-md-auto">
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">심부름꾼 지원 취소</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">심부름꾼 지원을 취소하시겠습니까?</div>
					<div class="modal-footer">
						<button type="button" class="bigBtn" id="clickDel" >확인</button>
						<button type="button" class="bigBtn" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<script>
		$(document).ready(function(){
			$("#clickDel").on("click", function(){
				deleteSupportPost.action = "/mypage/supportPostDelete";
				deleteSupportPost.method = "post";
				deleteSupportPost.submit();
			});
		});
		</script>
	</div>
	
	
	<div class="col-md-auto">
			<!-- Modal -->
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
					 <table style="text-align: left; width: 300px; word-break: break-all;">
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
	
	
	<section class="blog_area single-post-area section-padding" style="padding-top: 173px; width: 1900px">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list" style="padding-left: 70px;">
					<h2 class="contact-title" align="center">심부름꾼 지원</h2><hr>
					<div class="slider-shape d-none d-lg-block">
					
						<div>
						    <h3 align="center">${post.post_title}</h3><br>
						    <p align="right">작성자: <a  data-toggle="modal" data-target="#exampleModal1" href="" style="color: black; font-weight: bold;">${post.mb_id}</a>&nbsp;
						    	조회수: ${post.post_views}&nbsp;&nbsp;작성일: <fmt:formatDate value="${post.post_date}" pattern="yyyy-MM-dd"/></p><br><br>
						</div>
					
						<table class="postTable">
							<tr>
								<th>상태</th>
								<td>
									<c:if test="${empty post.sel_vr}">모집중</c:if>
									<c:if test="${!empty post.sel_vr && empty post.vh_date}">진행중</c:if>
									<c:if test="${!empty post.sel_vr && !empty post.vh_date}">완료</c:if>
									<br>
									<c:if test="${!empty post.sel_vr}">
										(심부름꾼 : ${post.sel_vr})
									</c:if>
								</td>
								<td id="map" style="width:450px; height:360px;" rowspan="5"></td>
							</tr>
							<tr>
								<th>위치</th>
								<td>${post.pbigc_name} ${post.pmidc_name} ${post.psmallc_name}</td>
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
								<td colspan="3" style="padding: 20px">${fn:replace(post.post_con, replaceChar, "<br/>")}</td>
							</tr>
						</table>
						
						<div style="text-align: center">
							<button class="bigBtn"  data-toggle="modal" data-target="#exampleModal">심부름꾼 지원 취소</button>
						</div>
						<!-- Modal에서 사용하는 form -->
						<form id="deleteSupportPost">
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
						</form>
						
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
	
</body>
<%@include file="../model/footer.jsp" %>
</html>
