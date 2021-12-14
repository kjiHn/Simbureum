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




<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/logo/loder1.jpg">
 
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

#rint{background-color: #E5CCFF;}


</style>
</head>
<body>

   <!-- Modal -->
  <div class="modal fade" id="postModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" >
          <div ><h2 class="modal-title"><b>신고된 게시글</b></h2></div>
          <div><button type="button" class="close" data-dismiss="modal">×</button></div>
        </div>
        <div class="modal-body" id="rint" >
        </div>
        <div class="modal-footer" id="rint">
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
        <div class="modal-header" >
          <div><h2 class="modal-title"><b>신고된 리뷰</b></h2></div>
          <div><button type="button" class="close" data-dismiss="modal">×</button></div>
        </div>
        <div class="modal-body1" id="rint" id="rint">
        </div>
        <div class="modal-footer" id="rint">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>



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
                  <table id="tt1" style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
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
                           <td><a data-toggle="modal" href="#postModal" class="postModal" data-value="${mnguser.mb_num_pk}"><u>${mnguser.report}회</u></a></td>
                           <td><a data-toggle="modal" href="#reviewModal" class="reviewModal" data-value="${mnguser.mb_num_pk}"><u>${mnguser.review}회</u></a></td>
						   <td>
                           	<form action="userdelete" method="post">
	                           <input  type="hidden" name="mb_num_pk" value="${mnguser.mb_num_pk}"/>
	                           <input type="hidden" name="fw_name" value="${mnguser.mb_name}" />
	                           <input type="hidden" name="fw_emaile" value="${mnguser.mb_emaile}" />
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

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
/* 신고된 게시글 팝업 */
 $(".postModal").click(function(e) {
	 const value = $(this).attr("data-value");
	 
 	 $.ajax({
			type:"GET",
			url:"/MNGPopupPost?mb_num_pk=" + value,
			dataType:"json",
			success:function(datas){
				$(".modal-body").empty();
				var html ='';
				 $.each (datas,function(index,item){
					for (var i = 0; i < item.length; i++) {
					html +=	'<div>';
					  html +=	'<p><b>신고자</b>&nbsp;'+ item[i].mbn_id +'</p>'; 
					 html +=	'<p><b>작성자</b>&nbsp;'+ item[i].mb_id +'</p>'; 
					 html +=	 '<p><b>제목</b>&nbsp;<a href="MNGrptboard?mb_num_pk='+item[i].mb_num_pk +'">'+item[i].post_title +'</a></p>'; 
					 html += '<hr>';
					html +=	'</div>';
					}
				}); 	
				$(".modal-body").append(html);
			} 
		 }); 
});
/* 신고된 리뷰 팝업 */
 $(".reviewModal").click(function(e) {
		 const value = $(this).attr("data-value");
		 
	 	 $.ajax({
				type:"GET",
				url:"/MNGPopupReview?mb_num_pk=" + value,
				dataType:"json",
				success:function(datas){
					$(".modal-body1").empty();
					var html ='';
					 $.each (datas,function(index,item){
						for (var i = 0; i < item.length; i++) {
						html +=	'<div>';
						  html +=	'<p><b>신고자</b>&nbsp;'+ item[i].mbn_id +'</p>'; 
						 html +=	'<p><b>작성자</b>&nbsp;'+ item[i].mb_id +'</p>'; 
						 html +=	 '<p><b>내용</b>&nbsp;<a href="MNGrvboard?mb_num_pk='+item[i].mb_num_pk +'">'+item[i].er_rvc +'</a></p>'; 
						 html += '<hr>';
						html +=	'</div>';
						}
					}); 	
					$(".modal-body1").append(html);
				} 
			 }); 
	});
</script>
</html>
<%@include file="../model/footer.jsp" %>
