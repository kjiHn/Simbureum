<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">                                                                            
.postTable {
	text-align: center;
	width: 970px;
	align: center;
}

.postTable th{
	padding: 10px;
	width: 200px;
}



.star-vr_grd {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:6em;
}

.star-vr_grd input {
  display:none;
}

.star-vr_grd label {
  color:#ccc;
  cursor:pointer;
}

.star-vr_grd :checked ~ label {
  color:#f90;
}

.star-vr_grd label:hover,
.star-vr_grd label:hover ~ label {
  color:#fc0;
}



/* explanation */

article {
  background-color:#ffe;
  box-shadow:0 0 1em 1px rgba(0,0,0,.25);
  color:#006;
  font-family:cursive;
  font-style:italic;
  margin:4em;
  max-width:30em;
  padding:2em;
}
#btn1{
	padding: 10px 44px;
}
</style>	

<title>심부름 한 내역</title>
</head>
<body>

<div class="col-md-auto">
	
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">신고</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">리뷰 작성</h2>
						</div>
						<form name="reInsert" >
						<div class="modal-body">
							<input type="hidden" id="post_num_pk" name = "post_num_pk" value="${post.post_num_pk }">
							<input type="hidden" id="mb_id_pk" name = "mb_id_pk" value="<%=session.getAttribute("mid")%>">
							<input type="hidden" id=vr_mbid name = "vr_mbid" value="${post.mb_id }">						
							<table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                        <tr>
                        	 <th >별점</th>
                             <td> 
                             	<div class="star-vr_grd" >									
								  <input type="radio" id="5-stars" id="vr_grd" name="vr_grd" value="5"/>
								  <label for="5-stars" class="star"  style="font-size: 25px;">★</label>
								  <input type="radio" id="4-stars" id="vr_grd" name="vr_grd" value="4" />
								  <label for="4-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="3-stars" id="vr_grd" name="vr_grd" value="3" />
								  <label for="3-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="2-stars" id="vr_grd" name="vr_grd" value="2" />
								  <label for="2-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="1-star" id="vr_grd" name="vr_grd" value="1" />
								  <label for="1-star" class="star" style="font-size: 25px;">★</label>									  
							    </div>
                           	</td>
                        </tr>
                        <tr style="border-top: 2px solid  #eceff8; ">
                           <th>내용</th>
                           <td style="height: 200px;">
                           <div class="form-group">
                           <textarea class="form-control w-100" style="resize: none; font-size: 15px;" name="vr_rvc"
													id="message" cols="30" rows="9"
													onfocus="this.placeholder = ''"
													onblur="this.placeholder = '리뷰를 작성해 주세요'"
													placeholder="리뷰를 작성해 주세요"></textarea>
								</div>
                           </td>                            
                        </tr>
                        
                     </thead>
                  </table>
					
						</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="button button-contactForm boxed-btn" id="btn1"  onclick="clickDel(reInsert)" >작성하기</button>
							<button type="button" class="button button-contactForm boxed-btn" id="btn1" data-dismiss="modal">취소하기</button>
						</div>
						
						 
						 
					</div>
				</div>
			</div>
			<script>
			 function clickDel(formName) {
				  var post_num_pk = $("#post_num_pk").val();
				  var mb_id_pk = $("#mb_id_pk").val();
				  var vr_mbid = $("#vr_mbid").val();
				 
				  $.ajax({
					  url : "/review/reInsertCheck",
					  type : "POST",
					  dataType : "json",
					  data : {"post_num_pk" : post_num_pk, "mb_id_pk" : mb_id_pk, "vr_mbid" : vr_mbid},	
					  success : function(data){
						  if(data==0){
							    alert("리뷰작성이 완료되었습니다.");
							    formName.action = "/review/reInsert";
								formName.method = "post";
								formName.submit();  
						  }
					  }
				  }); 
			} 
			
			</script>
			</div>
			
			<div class="col-md-auto">
			<!-- Modal -->
			<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true" 
			>
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




	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list">
					<h2 class="contact-title" align="center">심부름 한 내역</h2><hr>
					<div class="slider-shape d-none d-lg-block">
					
						<div>
						    <h3 align="center">${post.post_title}</h3><br>
						    <p align="right">작성자: <a  data-toggle="modal" data-target="#exampleModal1" href="" style="color: black; font-weight: bold;">${post.mb_id}</a>&nbsp;
						    	조회수: ${post.post_views}&nbsp;&nbsp;작성일: <fmt:formatDate value="${post.post_date}" pattern="yyyy-MM-dd"/></p><br><br>
						</div>
					
						<table class="postTable">
							<tr>
								<th>위치</th>
								<td>${post.pbigc_name} ${post.psmallc_name}</td>
							</tr>
							<tr>
								<th>완료일</th>
								<td><fmt:formatDate value="${post.vh_date}" pattern="yyyy.MM.dd" /></td>
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
								<td colspan="2" style="padding: 20px">${post.post_con}</td>
							</tr>
						</table>
						
						<div style="text-align: center">
							<button class="bigBtn" data-toggle="modal" data-target="#exampleModal" name="reInsert" id="reInsert" >고용자에게 리뷰 작성</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
		
	<script type="text/javascript">	
   	
   $("#reInsert").ready(function(){	  	  	
	  	  var post_num_pk = $("#post_num_pk").val();	
		  var mb_id_pk = $("#mb_id_pk").val();	
		  var vr_mbid = $("#vr_mbid").val();	
		  	
		  	
		  $.ajax({	
			  url : "/review/reInsertCheck",	
			  type : "POST",	
			  dataType : "json",	
			  data : { "post_num_pk" : post_num_pk, "mb_id_pk" : mb_id_pk, "vr_mbid" : vr_mbid},	
			  success : function(data){	
				  if(data==1){	
					$("#reInsert").attr("disabled","disabled").trigger("create");	
					$("#reInsert").text("리뷰 작성 완료").trigger("create");	
				  }	
			  }	
		  }); 	
   });	
   	
   	
   	
   	 	
   	
   </script>
	
	
	
	
	
	
</body>
</html>
