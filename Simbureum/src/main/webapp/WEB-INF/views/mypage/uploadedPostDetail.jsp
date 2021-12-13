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

.postTable {
	text-align: center;
	width: 970px;
	align: center;
	border: 1px solid #e3c4ff;
}

.postTable td{
	height: 30px;
	width: 800px;
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

#btn1{
	padding: 10px 44px;
}

</style>	

<title>올린 심부름</title>
</head>
<body>
	<!-- 심부름꾼에게 리뷰 작성 Modal -->
	<div class="col-md-auto">
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">신고</button>

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
						<input type="hidden" id=er_mbid name = "er_mbid" value="${post.sel_vr }">
						<input type="hidden" id=mb_num_pk name = "mb_num_pk" value="${post.mb_num_pk }">
												
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
							</div>
                          </td>                            
                       </tr>
                       
                    </thead>
                 </table>
				
					</div>
					</form>
					<div class="modal-footer">
						<button type="button" class="button button-contactForm boxed-btn" id="btn1"  onclick="clickRe(EreInsert)" >작성하기</button>
						<button type="button" class="button button-contactForm boxed-btn" id="btn1" data-dismiss="modal">취소하기</button>
					</div>
					
					 
				</div>
			</div>
		</div>
		<script>
		 function clickRe(formName) {
			  var post_num_pk = $("#post_num_pk").val();
			  var mb_id_pk = $("#mb_id_pk").val();
			  var er_mbid = $("#er_mbid").val();
			  var mb_num_pk = $("#mb_num_pk").val();
			 
			  $.ajax({
				  url : "/Ereview/EreInsertCheck",
				  type : "POST",
				  dataType : "json",
				  data : {"post_num_pk" : post_num_pk, "mb_id_pk" : mb_id_pk, "er_mbid" : er_mbid, "mb_num_pk" : mb_num_pk},	
				  success : function(data){
					  if(data==0){
						    alert("리뷰작성이 완료되었습니다.");
						    formName.action = "/Ereview/EreInsert";
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
						<button type="button" class="btn btn-primary" id="clickDel" >삭제</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
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
						<button type="button" class="btn btn-primary" id="clickComplete">확인</button>
						<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
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
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" style="overflow: auto; height: 300px;">
						<c:if test="${checkVol == 0}">지원한 심부름꾼이 없습니다.</c:if>
						<c:if test="${checkVol == 1}">
							<table id="volTable" style="width: 100%">
								<c:forEach var="volRe" items="${volRe}" varStatus="status">
									<tr>
										<td>
											<a href="#" style="color: black">ID : ${volRe.mb_id}</a>
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
							<button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
						</c:if>
						<c:if test="${checkVol == 1}">
							<button type="button" class="btn btn-primary" id="clickChoose">선택</button>
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
	
	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list">
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
										<button class="button"  data-toggle="modal" data-target="#volList" style="position: relative; right: 300px">심부름꾼 보기</button>
									</c:if>
									<c:if test="${!empty post.sel_vr && empty post.vh_date}">진행중</c:if>
									<c:if test="${!empty post.sel_vr && !empty post.vh_date}">완료</c:if>
									<br>
									<c:if test="${!empty post.sel_vr}">
										(심부름꾼 : ${post.sel_vr})
									</c:if>
								</td>
							
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
						</table>
						<br><br>
						<c:if test="${empty post.sel_vr}">
							<input type="button" class="button" onclick="location.href='/mypage/updatePost/${post.post_num_pk}'" value="수정">
							<button class="button"  data-toggle="modal" data-target="#delPost">삭제</button>
							
						</c:if>
						<c:if test="${!empty post.sel_vr && empty post.vh_date}">
							<button class="button"  data-toggle="modal" data-target="#complete">심부름 완료</button>
						</c:if>
						<c:if test="${!empty post.sel_vr && !empty post.vh_date}">
							<button  class="button button-contactForm boxed-btn"  data-toggle="modal" data-target="#exampleModal" name="EreInsert" id="EreInsert" >심부름꾼에게 리뷰 작성</button>
						</c:if>
						
						<!-- Modal에서 사용하는 form -->
						<form id="deletePost">
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 지원한 심부름꾼 보는 창 열기 -->
	<script type="text/javascript">
		function openVol(){
			var popWidth = 460;
			var popHeight = 300;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			url="../volunteerList/"+${post.post_num_pk};
			var openWin = window.open(url, "volunteerList", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script>

</body>
</html>
