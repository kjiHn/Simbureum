<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>

<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style type="text/css">
.button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
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

#postTable {
	text-align: center;
	width: 1000px;
	align: center;
	border: 1px solid #e3c4ff;
}

#postTable td{
	height: 30px;
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
							  
						  }else{
							alert("이미 작성된 리뷰입니다.");
							
							 
						  }
						  
					  }
					  
					  
				  }); 
				  
				
			} 
			
			</script>
			
			
			</div>




	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<h2 class="contact-title">심부름 한 내역</h2>
					<div class="slider-shape d-none d-lg-block">
						<table id="postTable">
							<tr>
								<th>제목</th>
								<td>${post.post_title}</td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><a onclick="openReview()" href="" style="color: black; font-weight: bold;">${post.mb_id}</a></td>
								
							</tr>
							<tr>
								<th>작성일</th>
								<td><fmt:formatDate value="${post.post_date}" pattern="yyyy.MM.dd" /></td>
							</tr>
							<tr>
								<th>조회수</th>
								<td>${post.post_views}</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>${post.post_con}</td>
							</tr>
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
						</table>
						<br><br>
						
						<button  class="button button-contactForm boxed-btn"  data-toggle="modal" data-target="#exampleModal" name="reInsert" id="reInsert" >고용자에게 리뷰 작성</button>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- 심부름 완료 창 열기 -->
	<script type="text/javascript">
		function openReview(){
			var popWidth = 400;
			var popHeight = 200;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="/review/grdAvg?vr_mbid=${post.mb_id}";
			var openWin = window.open(url, "grdAvg", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>
	
	
	
	
</body>
</html>
