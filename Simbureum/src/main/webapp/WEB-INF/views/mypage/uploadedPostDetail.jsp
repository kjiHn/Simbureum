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

.star-er_grd {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:6em;
}

.star-er_grd input {
  display:none;
}

.star-er_grd label {
  color:#ccc;
  cursor:pointer;
}

.star-er_grd :checked ~ label {
  color:#f90;
}

.star-er_grd label:hover,
.star-er_grd label:hover ~ label {
  color:#fc0;
}


</style>	

<title>올린 심부름</title>
</head>
<body>

<div class="col-md-auto">
	
			<!-- 심부름꾼에게 리뷰 작성 Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">리뷰 작성</h2>
						</div>
						<form name="EreInsert" >
						<div class="modal-body">
							<input type="hidden" id="post_num_pk" name = "post_num_pk" value="${post.post_num_pk }">
							<input type="hidden" id="mb_id_pk" name = "mb_id_pk" value="<%=session.getAttribute("mid")%>">							
							<input type="hidden" id=mb_num_pk name = "mb_num_pk" value="${post.mb_num_pk }">
							
							<h3>심부름꾼 목록</h3>
							 <div>
								<c:forEach items="${vr }" var="vr">
									<label for="${vr }">${vr }</label>
									<input  type="radio" name="er_mbid" id="${vr}" value="${vr}">
								</c:forEach>
							</div>
							
													
							<table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                        <tr>
                        	 <th >별점</th>
                             <td> 
                             	<div class="star-er_grd" >									
								  <input type="radio" id="5-stars" id="er_grd" name="er_grd" value="5"/>
								  <label for="5-stars" class="star"  style="font-size: 25px;">★</label>
								  <input type="radio" id="4-stars" id="er_grd" name="er_grd" value="4" />
								  <label for="4-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="3-stars" id="er_grd" name="er_grd" value="3" />
								  <label for="3-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="2-stars" id="er_grd" name="er_grd" value="2" />
								  <label for="2-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="1-star" id="er_grd" name="er_grd" value="1" />
								  <label for="1-star" class="star" style="font-size: 25px;">★</label>									  
							    </div>
                           	</td>
                        </tr>
                        <tr style="border-top: 2px solid  #eceff8; ">
                           <th>내용</th>
                           <td style="height: 200px;">
                           <div class="form-group">
                           <textarea class="form-control w-100" style="resize: none; font-size: 15px;" name="er_rvc"
													id="message" cols="30" rows="9"
													onfocus="this.placeholder = ''"
													onblur="this.placeholder = '리뷰를 작성해 주세요'"
													placeholder="리뷰를 작성해 주세요"></textarea>
													<div id="text_cnt">(0 / 500)</div>
								</div>
                           </td>                            
                        </tr>
                        
                     </thead>
                  </table>
					
						</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="bigBtn" id="btn1"  onclick="clickDel(EreInsert)" >작성하기</button>
							<button type="button" class="bigBtn" id="btn1" data-dismiss="modal">취소하기</button>
						</div>
						
						 
						 
					</div>
				</div>
			</div>
			<!-- 글자수 제한 -->
			<script type="text/javascript">
			$(document).ready(function() {
			    $('#message').on('keyup', function() {
			        $('#text_cnt').html("("+$(this).val().length+" / 500)");
			 
			        if($(this).val().length > 100) {
			            $(this).val($(this).val().substring(0, 500));
			            $('#text_cnt').html("(500 / 500)");
			        }
			    });
			});

			</script>
			
			
			<script>
			 function clickDel(formName) {
				  var post_num_pk = $("#post_num_pk").val();
				  var mb_id_pk = $("#mb_id_pk").val();
				  var er_mbid = $("input:radio[name=er_mbid]:checked").val();
				  var er_rvc = $("#message").val();
				 
				  if(er_mbid == null){
					  alert("심부름꾼을 선택해주세요");
				  }else if(er_rvc ==''){
					  alert("리뷰를 작성해주세요");
				  }else{
				 
				  $.ajax({
					  url : "/Ereview/EreInsertCheck",
					  type : "POST",
					  dataType : "json",
					  data : {"post_num_pk" : post_num_pk, "mb_id_pk" : mb_id_pk, "er_mbid" : er_mbid},	
					  success : function(data){
						  if(data==0){
							    alert("리뷰작성이 완료되었습니다.");
							    formName.action = "/Ereview/EreInsert";
								formName.method = "post";
								formName.submit();  
						  }
					  }
					  
					  
				  });  
				  }
				  
				
			}	
			</script>	
			</div>
			

	<!-- 심부름 삭제 Modal -->
	<div class="col-md-auto">
		<div class="modal fade" id="delPost" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">심부름 삭제</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">심부름을 삭제하시겠습니까?</div>
					<input type="hidden" name="post_num_pk" value="${post.post_num_pk}"/>
					<div class="modal-footer">
						<button type="button" class="bigBtn" id="clickDel" >삭제</button>
						<button type="button" class="bigBtn" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$("#clickDel").on("click", function(){
				deletePost.action = "/mypage/postDelete";
				deletePost.method = "post";
				deletePost.submit();
			});
		});
	</script>

	<!-- 심부름 완료 Modal -->
	<div class="col-md-auto">
		<div class="modal fade" id="complete" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">심부름 완료</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="completeForm" action="/mypage/completeProcess/${post_num_pk}" method="POST">
							심부름을 완료 하시겠습니까?<br>
							* 심부름꾼에게 심부름 한 비용을 지불하신 후<br>확인을 눌러주셔야 합니다.
						</form>
					</div>
					<input type="hidden" name="post_num_pk" value="${post.post_num_pk}"/>
					<div class="modal-footer">
						<button type="button" class="bigBtn" id="clickComplete">확인</button>
						<button type="button" class="bigBtn" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$("#clickComplete").on("click", function(){
			alert("심부름이 완료되었습니다.");
			document.getElementById('completeForm').submit();
		});
	</script>
	
	<!-- 심부름꾼 보기 Modal -->
	<div class="col-md-auto">
		<div class="modal fade" id="volList" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title" id="exampleModalLabel">지원한 심부름꾼</h2>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true" style="font-size: 25px;">&times;</span>
						</button>
					</div>
					<div class="modal-body" style="overflow: auto; height: 300px;">
						<c:if test="${checkVol == 0}">지원한 심부름꾼이 없습니다.</c:if>
						<c:if test="${checkVol == 1}">
							<table id="volTable" style="width: 100%">
								<c:forEach var="volRe" items="${volRe}" varStatus="status">
									<tr>
										<td>
											<a  data-toggle="modal" data-target="#exampleModal3" class="bt" href="" style="color: black" data-value ="${volRe.mb_id}">ID : ${volRe.mb_id}</a>
										</td>
										<td rowspan="2">
											&nbsp;&nbsp;&nbsp;<input type="checkbox" name="selected" value="${volRe.mb_id}">
										</td>
									</tr>
									<tr>
										<td>평점 ${volRe.vrRe_avg} / 리뷰 수 ${volRe.vrRe_count}</td>
									</tr>
									<c:if test="${!status.last}">
										<tr>
										    <th colspan="2"><hr></th>  
										</tr>
									</c:if>
								</c:forEach>
							</table>
						</c:if>
					</div>
					<input type="hidden" name="post_num_pk" value="${post.post_num_pk}"/>
					<div class="modal-footer">
						<c:if test="${checkVol == 0}">
							<button type="button" class="bigBtn" data-dismiss="modal">확인</button>
						</c:if>
						<c:if test="${checkVol == 1}">
							<button type="button" class="bigBtn" id="clickChoose">선택</button>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 심부름꾼 선택 -->
	<script>
		$("#clickChoose").on("click", function(){
			let selected = $("input:checkbox[name=selected]:checked").length;
			let sentence = "심부름꾼 "+${post.post_numof}+"명을 선택해 주세요.";
			if(selected == ${post.post_numof}){
				let sel_vol = "";
				let url = "../selectedVolunteer?sel_vol="+sel_vol;
				$("input:checkbox[name=selected]:checked").each(function(index){
					sel_vol += $(this).val();
					if(index+1 != selected){
						sel_vol += ", ";
					}
				});
				$.ajax({
					type: "POST",
					url: "../volunteerList?postNum="+${post.post_num_pk}+"&sel_vol="+sel_vol,
					success: function(data){
						if(selected == 1){
							alert(sel_vol+"님이 심부름꾼으로 선택되었습니다.\n"+sel_vol+"님의 전화번호는 "+data+"입니다.");
						}else{
							alert(sel_vol+"님이 심부름꾼으로 선택되었습니다.\n"+sel_vol+"님의 전화번호는 각각 "+data+"입니다.");	
						}
						alert("* 심부름 하면서 문제가 발생할 경우 저희가 책임지지 않습니다.\n* 심부름이 완료될 경우 \'심부름 완료\' 버튼을 눌러주세요.");
						window.location.reload();
					}
				});
				
			}else if(selected > ${post.post_numof}){
				alert("필요한 심부름꾼 수보다 많이 선택하셨습니다.\n"+sentence);
			}else if(selected < ${post.post_numof}){
				alert("필요한 심부름꾼 수보다 적게 선택하셨습니다.\n"+sentence);
			}else{
				alert(sentence);
			}
		});
		
		</script>
		
	
	
	
	
	
	<div class="col-md-auto">
			<!-- Modal -->
			<div class="modal fade" id="exampleModal3" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true" 
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content" style="width: 350px; margin: auto;">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">심부름꾼 리뷰 정보</h2>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <h1><span aria-hidden="true">&times;</span></h1> 
					        </button>
						</div>
						
						<div class="modal-body" style="height: 300px; overflow: auto; ">
								
							<div id="review" style="text-align: center; padding-top: 80px; "></div>	
								<div>	
								<table id="reviewTable" style="text-align: left; width: 300px; word-break: break-all; margin-top: -80px;" ></table>	
								</div>	
						 	
						</div>	
					</div>	
				</div>	
			</div>	
				
			</div>	
		
	<script type="text/javascript">	
		$(".bt").click(function(){	
			const value =  $(this).attr("data-value"); /*test6  */	
			/* alert(value); */	
			 $.ajax({		
				  url : "/Ereview/EgrdAvg",		
				  type : "POST",		
				  dataType : "json",		
				  data : {"er_mbid" : value},		
				  success : function(data){						
					  if(data == 0){	
						  $("#review").empty();	
						   $("#review").append("<h2>선택한 심부름꾼의 리뷰가 없습니다</h2>"); 	
						   $("#review").append("<h4>심부름꾼을 선택하고 첫 리뷰를 작성해주세요</h4>");	
					  }else{	
						  	
					  	
					  	
					  	
					  $("#reviewTable").empty();	
					  for(var i=0; i < data.length; i++){	
						  $("#reviewTable").append("<h2>리뷰</h2>");	
						 $("#reviewTable").append("<tr><td style='border-top: 1px solid gray;'>ID : " + data[i].mb_id_pk + "</td></tr>");	
						 	
						 $("#reviewTable").append("<tr><td> 작성일 : " + data[i].er_date + "</td></tr>");	
						  if(data[i].er_grd == 5){	
						 	$("#reviewTable").append("<tr><td style='color: #ffc107;'>★★★★★</td>");	
						 }else if(data[i].er_grd == 4){	
							 $("#reviewTable").append("<tr><td style='color: #ffc107;'>★★★★☆</td>"); 	
						 }else if(data[i].er_grd == 3){	
							 $("#reviewTable").append("<tr><td style='color: #ffc107;'>★★★☆☆</td>");	
						 }else if(data[i].er_grd == 2){	
							 $("#reviewTable").append("<tr><td style='color: #ffc107;'>★★☆☆☆</td>");	
						 }else if(data[i].er_grd == 1){	
							 $("#reviewTable").append("<tr><td style='color: #ffc107;'>★☆☆☆☆</td>");	
						 }	
						 	
						 $("#reviewTable").append("<tr><td>" + data[i].er_rvc + "</td></tr>"); 	
						 	
					 }	
						
					  }	
					  	
					  	
				  }		
			  }); 	 	
		});	
			
	</script>
	
	
	
	
	<section class="blog_area single-post-area section-padding" style="padding-top: 170px; width: 1900px">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list" style="padding-left: 70px;">
					<h2 class="contact-title" align="center">올린 심부름</h2><hr>
					<div class="slider-shape d-none d-lg-block">
					
						<div>
						    <h3 align="center">${post.post_title}</h3><br>
						    <p align="right">조회수: ${post.post_views}&nbsp;&nbsp;작성일: <fmt:formatDate value="${post.post_date}" pattern="yyyy-MM-dd"/></p><br><br>
						</div>
						
						<table class="postTable">
							<tr>
								<th>상태</th>
								<td>
									<c:if test="${empty post.sel_vr}">
										모집중
										<button class="smallBtn"  data-toggle="modal" data-target="#volList" >심부름꾼 보기</button>
									</c:if>
									<c:if test="${!empty post.sel_vr && empty post.vh_date}">진행중</c:if>
									<c:if test="${!empty post.sel_vr && !empty post.vh_date}">완료</c:if>
									<br>
									<c:if test="${!empty post.sel_vr}">
										(심부름꾼 : ${post.sel_vr})
									</c:if>
								</td>
								<td id="map" style="width:450px; height:360px; z-index: 0" rowspan="5"></td>
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
						<br><br>
						<div style="text-align: center">
							<c:if test="${empty post.sel_vr}">
								<input type="button" class="bigBtn" onclick="location.href='/mypage/updatePost/${post.post_num_pk}'" value="수정">
								<button class="bigBtn"  data-toggle="modal" data-target="#delPost">삭제</button>
								
							</c:if>
							<c:if test="${!empty post.sel_vr && empty post.vh_date}">
								<button class="bigBtn"  data-toggle="modal" data-target="#complete">심부름 완료</button>
							</c:if>
							<c:if test="${!empty post.sel_vr && !empty post.vh_date}">
								<button  class="bigBtn"  data-toggle="modal" data-target="#exampleModal" name="EreInsert" id="EreInsert" >심부름꾼에게 리뷰 작성</button>
							</c:if>
						</div>
						
						<!-- Modal에서 사용하는 form -->
						<form id="deletePost">
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
						</form>
						
						<input type="hidden" id="mbid" value="${post.sel_vr}">
						<input type="hidden" id="numof" value="${post.post_numof}">
						
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
	
	<script type="text/javascript">
	 $("#EreInsert").ready(function(){	  	  	
	  	   var post_num_pk = $("#post_num_pk").val();	
		   var mb_id_pk = $("#mb_id_pk").val();	
		   var er_mbid = $("#mbid").val();
		   var numof = $("#numof").val();
		   $.ajax({	
			  url : "/Ereview/EreInsertCheck",	
			  type : "POST",	
			  dataType : "json",	
			  data : { "post_num_pk" : post_num_pk, "mb_id_pk" : mb_id_pk, "er_mbid" : er_mbid},	
			  success : function(data){	
					if(numof==data){
						$("#EreInsert").attr("disabled","disabled").trigger("create");
						$("#EreInsert").attr("style",'border-color: gray').trigger("create");
						$("#EreInsert").text("리뷰작성 완료").trigger("create");
					}
			  }	
		  }); 	 
  	});	
	
	</script>
	
	
	<form name="EreInsertCheck" >	
		<input type="hidden" id="post_num_pk" name = "post_num_pk" value="${post.post_num_pk }">	
		<input type="hidden" id="mb_id_pk" name = "mb_id_pk" value="<%=session.getAttribute("mid")%>">	
		<input type="hidden" id=er_mbid name = "er_mbid" value="${post.sel_vr }">	
		<input type="hidden" id=mb_num_pk name = "mb_num_pk" value="${post.mb_num_pk }">	
	</form>	
		
</body>
<%@include file="../model/footer.jsp" %>
</html>