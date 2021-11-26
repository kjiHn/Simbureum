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
	border-right: 6px solid  #e3c4ff;
}
table {
	
	
}

#btn_up{
	padding: 10px 44px; position: absolute;
}
#btn_del{
	padding: 10px 44px; margin-left:  200px; position: absolute;
}

</style>

</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-8 posts-list">
               <div class="slider-shape d-none d-lg-block">
                <div class="col-lg-8 posts-list" style=" padding:  30px 50px; height:600px; border: 4px solid #e3c4ff; ">
                
                
                <form action="/review/wreUpdate" method="POST" name="wreUpdate">
               <table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                     	
                        <tr>
                           <th>From.</th>
                           <td ><c:out value=" ${wrList.mb_id_pk }"></c:out></td>                                                      
                        </tr >
                        <tr>
                        	<th>해당 게시글</th>
                            <td><c:out value=" ${wrList.post_title}"></c:out></td>
                        </tr>
                        
                        <tr>
                        	<th >작성일</th>                           
                           <td><fmt:formatDate value="${wrList.vr_date }" pattern="yyyy.MM.dd"/></td>
                        </tr>
                        <tr>
                        	 <th >별점</th>
                             <td style="color: #ffc107"><c:if test="${wrList.vr_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${wrList.vr_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${wrList.vr_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${wrList.vr_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${wrList.vr_grd == 5}">★★★★★</c:if>
                           	</td>
                        </tr>
                        <tr>
                           <th>내용</th>
                           <td><c:out value=" ${wrList.vr_rvc}"></c:out></td> 
                        </tr>
                     </thead>
                  </table>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                 <div class="form-group mt-3" style="margin-left: 20px;">
                 <a href="wreUpdate?mb_id_pk=${vrdto.mb_id_pk }"><button  class="button button-contactForm boxed-btn" id="btn_up">수정하기</button></a>
					<button  class="button button-contactForm boxed-btn" id="btn_del">삭제하기</button>
				</div>
               </form>
               </div>
               </div>
            </div>

         </div>
      </div>
   </section>







</body>
</html>
<%@include file="../model/footer.jsp" %>
