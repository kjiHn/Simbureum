<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	if(session.getAttribute("mid") != null) {
%>
<%@ include file="../model/topBar_login.jsp"%>
<%
	}else{
		
%>
<%@ include file="../model/topBar1.jsp"%>
<%
	}
%>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
     <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico"> 
    <link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
td {
	text-align: left;
	padding: 15px;
	width: 500px;
	word-break:break-all;
}
th {
	padding: 5px;
	padding-left: 30px;
	width: 100px;
	text-align: right;
	/* border-right: 6px solid  #e3c4ff; */
}





</style>

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
							<h2 class="modal-title" id="exampleModalLabel">고용자일때 받은 리뷰 신고하기</h2>
						</div>
						<form name="Report" >
						<div class="modal-body">
							<h3 id="v">신고 사유</h3>
								<input type="hidden" name = "vr_mbid" value="<%=session.getAttribute("mid")%>">
                				<input type="hidden" id="RERP_TARGET_MBN" name="RERP_TARGET_MBN" value="${reList.mb_num_pk }">
                				<input type="hidden" id="RERP_MBN" name="RERP_MBN" value="<%=session.getAttribute("mNum")%>">
                				<input type="hidden" id="RERP_LNB" name="RERP_LNB" value="${reList.vr_rvn_pk }">    
                				<textarea rows="10" cols="40" class="form-control w-100" style="font-size: 14px; resize: none;" id="RRERP_CON" name="RRERP_CON"></textarea>            				
					
						</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="bigBtn" id="btn1" onclick="clickDel(Report)" >신고하기</button>
							<button type="button" class="bigBtn" id="btn1" data-dismiss="modal">취소하기</button>
						</div>
						
						 
						 
					</div>
				</div>
			</div>
			
			<!--  -->
		
	</div>
	<script src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js" />"></script>



		 <script>
		 var RRERP_CON = ("#RRERP_CON").val();
		 		if(RRERP_CON = ''){
		 			 alert("신고사유를 작성해주세요");
		 		}else{
				 function clickDel(formName) {
					 alert("신고가 완료되었습니다");
					  formName.action = "/review/Report";
					  formName.method = "post";
					  formName.submit(); 
				} 
		 		}
			</script> 
			
			
			
			
			
			
			
	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list">
					<h2 class="contact-title" align="center">받은 리뷰</h2><hr>
					<div class="slider-shape d-none d-lg-block">
					<form name="Delete">
                		<input type="hidden"  name="mb_id_pk" value="${reList.vr_mbid }">
                	</form>
					
						<div>						   
						    <p align="right">작성자: <c:out value=" ${reList.mb_id_pk }"></c:out>&nbsp;
						    	작성일: <fmt:formatDate value="${reList.vr_date }" pattern="yyyy.MM.dd"/></p>
							<p align="left" style="margin-left: 100px;">해당 게시글 : <c:out value=" ${reList.post_title}"></c:out> </p> 					                           		 
						    <p style="margin-left: 100px; position: absolute;">별점 : <p align="left" style="color: #ffc107; margin-left: 150px;"><c:if test="${reList.vr_grd == 1}">★☆☆☆☆</c:if>
													                             <c:if test="${reList.vr_grd == 2}">★★☆☆☆</c:if>
													                             <c:if test="${reList.vr_grd == 3}">★★★☆☆</c:if>
												                           		 <c:if test="${reList.vr_grd == 4}">★★★★☆</c:if>
												                           		 <c:if test="${reList.vr_grd == 5}">★★★★★</c:if> </p>
							<table style="text-align: center; width: 800px; height: 300px; margin: auto; ">
								<tr>
									<td style="vertical-align: text-top;">
									<c:out value=" ${reList.vr_rvc}"></c:out>
									</td>
								</tr>
							</table>
							<hr>
						</div>
						
						
						
						<div style="text-align: center;">
							<button  class="bigBtn"  data-toggle="modal" data-target="#exampleModal" name="Report" id="Report">신고하기</button>
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
			
		
   <script type="text/javascript">
   
   $("#Report").ready(function(){	  	  
		  var RERP_MBN = $("#RERP_MBN").val();
		  var RERP_LNB = $("#RERP_LNB").val();
		  
		  
		  $.ajax({
			  url : "/review/ReportCheck",
			  type : "POST",
			  dataType : "json",
			  data : { "RERP_MBN" : RERP_MBN, "RERP_LNB" : RERP_LNB},
			  success : function(data){
				  if(data==1){
					$("#Report").attr("disabled","disabled").trigger("create");
					$("#Report").attr("style",'border-color: gray').trigger("create");
					$("#Report").text("신고완료").trigger("create");
					
				  }
			  }
		  }); 
   });
   
   
   
   	 
   
   </script>
   
   
   
</body>
</html>
<%-- <%@include file="../model/footer.jsp" %> --%>
