<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login_MNG.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar_MNG.jsp"%>
</c:if>

<style>
.button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: left;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 20px;
	/* float: right; */
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}



</style>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">
    
    <!-- Modal -->
  <div class="modal fade" id="postModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div><h4 class="modal-title">신고된 게시글</h4></div>
          <div><button type="button" class="close" data-dismiss="modal">×</button></div>
        </div>
        <div class="modal-body">
          <c:forEach items="${popuppost}" var="popuppost">
		<div>
			<p><b>신고자</b>&nbsp; ${ popuppost.mbn_id}</p>
			<p><b>작성자</b>&nbsp; ${ popuppost.mb_id}</p>
			<p><b>제목</b>&nbsp;<a href="MNGrptboard?mb_num_pk=${popuppost.mb_num_pk }"> ${ popuppost.post_title}</a></p>
		</div>
	</c:forEach>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
   <!-- Modal -->
  <div class="modal fade" id="reviewModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <div><h4 class="modal-title">신고된 리뷰</h4></div>
          <div><button type="button" class="close" data-dismiss="modal">×</button></div>
        </div>
        <div class="modal-body">
          <c:forEach items="${popupreview}" var="popupreview">
		<div>
			<p><b>신고자</b>&nbsp; ${popupreview.rembn_id}</p>
			<p><b>작성자</b>&nbsp; ${popupreview.mb_id}</p>
			<p><b>내용</b>&nbsp; <a href="MNGrvboard?mb_num_pk=${popupreview.mb_num_pk }">${ popupreview.vr_rvc}</a></p>
		</div>
		</c:forEach>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
</head>
<body>


   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbarMNG.jsp" flush="false"/>
            <div class="col-lg-6 posts-list">
               <div class="slider-shape d-none d-lg-block">
              <!--  <br>
               <br>
               <br>
               <br> -->
               <h2 class="contact-title" align="center">&nbsp;</h2>
               <br>
                  <table style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr  style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>아이디</th>
                           <th>게시글 신고</th>
                           <th>리뷰 신고</th>
                           <th>선택</th>
                        </tr>
                     </thead>

                     <tbody>
                        <c:forEach items="${mnguser}" var="mnguser">
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${mnguser.mb_num_pk}</td>
                           <td>${mnguser.mb_id}</td>
                          <%--  <td><a data-toggle="modal" href="#postModal?mb_num_pk=${mnguser.mb_num_pk}" ><u>${mnguser.report}회</u></a></td>
                           <td><a data-toggle="modal" href="#reviewModal?mb_num_pk=${mnguser.mb_num_pk}" ><u>${mnguser.review}회</u></a></td> --%>
                           <td><a href='MNGPopupPost?mb_num_pk=${mnguser.mb_num_pk}'><u>${mnguser.report}회</u></a></td>
						   <td><a href='MNGPopupReview?mb_num_pk=${mnguser.mb_num_pk}'><u>${mnguser.review}회</u></a></td> 
                           <td>
                           <form action="userdelete" method="post">
	                           <input  type="hidden" name="mb_num_pk" value="${mnguser.mb_num_pk}"/>
	                           <input class ="button" type="submit" value="강제탈퇴"/>
                           </form>
                           </td>
                        </tr>
					   </c:forEach>

                     </tbody>
                  </table>
            
               </div>
            </div>

         </div>
      </div>
   </section>
   
   	<!-- 게시판 신고 창 열기 -->
	<!-- <script type="text/javascript">
		function openPost(){
			var popWidth = 400;
			var popHeight = 400;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			/* url="../MNGPopupPost/"+${post.post_num_pk}; */
			var openWin = window.open(url, "MNGPopupPost", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		} -->
	</script>
	
	<!-- 리뷰 신고 창 열기 -->
	<!-- <script type="text/javascript">
		function openReview(){
			var popWidth = 400;
			var popHeight = 400;
			var winHeight = document.body.clientHeight;
			var winWidth = document.body.clientWidth;
			var winX = window.screenLeft;
			var winY = window.screenTop;
			var popX = winX + (winWidth - popWidth)/2;
			var popY = winY + (winHeight - popHeight)/2;
			/* url="../MNGPopupReview/"+${post.post_num_pk}; */
			var openWin = window.open(url, "MNGPopupReview", "left="+popX+",top="+popY+",width="+popWidth+",height="+popHeight);
		}
	</script> -->





</body>
</html>
<%@include file="../model/footer.jsp" %>
