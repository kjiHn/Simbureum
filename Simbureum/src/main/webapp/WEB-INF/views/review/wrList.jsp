<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar1.jsp" %>


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
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    


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
#message{
 	font-size: 15px;
 	resize: none;
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
</style>

</head>
<body>

<!-- Modal -->

	<div class="col-md-auto">
	
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">삭제</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">게시물 삭제</h2>
						</div>
						<div class="modal-body">게시물을 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="bigBtn" id="btn1" onclick="clickDel(Delete)">삭제하기</button>
							<button type="button" class="bigBtn" id="btn1" data-dismiss="modal">취소하기</button>
						</div>
					</div>
				</div>
			</div>
			<script>
				function clickDel(formName) {
					formName.action = "/review/wreDelete";
					formName.method = "post";
					formName.submit();
				}
				
			</script>
		
	</div>
	
	<div class="col-md-auto">
			<!-- Modal -->
			<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">리뷰 수정</h2>
						</div>
						<form name="updateOk" >
						<div class="modal-body">
							<input type="hidden" name="mb_id_pk" value="${wrList.mb_id_pk }">
							<input type="hidden" name="vr_rvn_pk" value="${wrList.vr_rvn_pk }">
							<input type="hidden" id="vr_grd" value="${wrList.vr_grd }">
														
							<table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                        <tr>
                           <th>TO.</th>
                           <td >${wrList.vr_mbid }</td>                                                      
                        </tr >
                        <tr>
                        	 <th >별점</th>
                             <td> 
                             	<div class="star-vr_grd" >									
								  <input type="radio" id="5-stars" name="vr_grd" value="5"/>
								  <label for="5-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="4-stars" name="vr_grd" value="4" >
								  <label for="4-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="3-stars" name="vr_grd" value="3" />
								  <label for="3-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="2-stars" name="vr_grd" value="2" />
								  <label for="2-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="1-star" name="vr_grd" value="1" />
								  <label for="1-star" class="star" style="font-size: 25px;">★</label>									  
							    </div>
                           	</td>
                        </tr>
                        <tr style="border-top: 2px solid  #eceff8; ">
                           <th>내용</th>
                           <td style="height: 200px;">
                           <div class="form-group"><textarea class="form-control w-100" name="vr_rvc" id="message" cols="10" rows="10">${wrList.vr_rvc }</textarea>
                             <div id="text_cnt">(0 / 500)</div>
								</div>
                           </td>                            
                        </tr>
                        
                     </thead>
                 	 </table>
					
						</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="bigBtn" id="btn1"  onclick="clickUpdate(updateOk)" >수정하기</button>
							<button type="button" class="bigBtn" id="btn1" data-dismiss="modal">취소하기</button>
						</div>
						
						 
						 
					</div>
				</div>
			</div>
			
			
			<!-- 글자수 제한 -->
			 <script type="text/javascript">
			 $(document).ready(function() {
				    $('#message').on('focus',function() {
				        $('#text_cnt').html("("+$(this).val().length+" / 500)");
				        $('#message').on('keyup',function() {
				        	 $('#text_cnt').html("("+$(this).val().length+" / 500)");
				        
				 
				        if($(this).val().length > 500) {
				            $(this).val($(this).val().substring(0, 500));
				            $('#text_cnt').html("(500 / 500)");
				        }
				        });
				    });
				});
			</script>
			
			
			
			<script>
			 function clickUpdate(formName) {
		
			    alert("리뷰수정이 완료되었습니다.");
			    formName.action = "/review/wreUpdate";
				formName.method = "post";
				formName.submit();  
			} 
		
			 var checked = 'checked';
			 var grd = $("#vr_grd").val();
		
			 
			  if(grd == 5){				 
			 	$('input[id=5-stars]').attr('checked',checked);
			 }else if(grd==4){
				$('input[id=4-stars]').attr('checked',checked);
			 }else if(grd==3){
				$('input[id=3-stars]').attr('checked',checked);
			 }else if(grd==2){
				$('input[id=2-stars]').attr('checked',checked);
			 }else if(grd==1){
				$('input[id=1-stars]').attr('checked',checked);
			 } 
			 
			 
			 
			 
			 
			</script>
			</div>
	
	
	



    <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list">
					<h2 class="contact-title" align="center">심부름꾼 일때 작성한 리뷰</h2><hr>
					<div class="slider-shape d-none d-lg-block">
                
                <form name="Delete">
                	<input type="hidden"  name="vr_rvn_pk" value="${wrList.vr_rvn_pk }">
                	<input type="hidden"  name="mb_id_pk" value="<%=session.getAttribute("mid")%>">                	
                </form>
             	
             	<div>						   
						    <p align="right">작성자: <c:out value=" ${wrList.mb_id_pk }"></c:out>&nbsp;
						    	작성일: <fmt:formatDate value="${wrList.vr_date }" pattern="yyyy.MM.dd"/></p>
							<p align="left" style="margin-left: 100px;">해당 게시글 : <c:out value=" ${wrList.post_title}"></c:out></p> 					                           		 
						   <p style="margin-left: 100px; position: absolute;">별점 : <p align="left" style="color: #ffc107; margin-left: 150px;">
						    	<c:if test="${wrList.vr_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${wrList.vr_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${wrList.vr_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${wrList.vr_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${wrList.vr_grd == 5}">★★★★★</c:if></p>
							<table style="text-align: center; width: 800px; height: 300px; margin: auto; ">
								<tr>
									<td style="vertical-align: text-top;">
									<c:out value=" ${wrList.vr_rvc}"></c:out>
									</td>
								</tr>
							</table>
							<hr>
						</div>
                 <div style="margin-left: 30%;">
            		<button  class="bigBtn" data-toggle="modal" data-target="#exampleModal1" id="btn_up">수정하기</button>
					<button  class="bigBtn"  data-toggle="modal" data-target="#exampleModal" id="btn_del">삭제하기</button>
				</div>
             
               </div>
               </div>
            </div>

         </div>
     
   </section>
   
   	<!-- textarea 커서 설정, 글자수 확인 -->
	 <script type="text/javascript">
			 $("#btn_up").click(function(){
				
			  	setTimeout(function(){
					$("textarea").focus();
				}, 200); 
			 });  
	 </script>
   






</body>
</html>
<%@include file="../model/footer.jsp" %>
