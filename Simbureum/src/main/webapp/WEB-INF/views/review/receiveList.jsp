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
    
</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list" style="padding: 40px 100px;">
            <h2 class="contact-title">받은 리뷰</h2>
           
               <div class="slider-shape d-none d-lg-block">
              	
              
               
            	<h3>TO.<a href="#">고용자</a> | <a href="#">심부름꾼</a></h3>
            	<form method="post">
                  <table style="text-align: center; width: 900px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>내용</th>
                           <th>아이디</th>
                           <th>별점</th>
                           <th>작성일</th>                           
                        </tr>
                     </thead>
					<c:forEach items="${receiveList }" var="vrdto">
					
                     <tbody>                     
                         <tr style="border: 1px solid #e3c4ff;">
                           <td style="padding: 10px;">${vrdto.vr_rvn_pk}</td>
                           <td><a href="reList?post_num_pk=${vrdto.post_num_pk }" style="color: black">${vrdto.vr_rvc}</a></td>
                           <td>${vrdto.vr_mbid }</td>
                           <td style="color: #ffc107;"> 
	                            <c:if test="${vrdto.vr_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 5}">★★★★★</c:if>
                            </td>
                           <td>${vrdto.vr_date}</td>
                        </tr>
                     </tbody>
                   </c:forEach>
                  </table>
				</form>
           </div>
           
               </div>
            </div>

         </div>
     
   </section>
   
   <script type="text/javascript"></script>





</body>
</html>
<%@include file="../model/footer.jsp" %>
