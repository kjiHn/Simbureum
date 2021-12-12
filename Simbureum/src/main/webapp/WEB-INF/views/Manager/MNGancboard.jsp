<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">
    
    <style>
    .button{
    border-radius: 5px;
    
    }
    </style>
</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbarMNG.jsp" flush="false"/>
            <div class="col-lg-10 posts-list">
            	<div class="form-group mt-3" align = "right">
            	<form action="MNGwriteanc" method="post">
            	<input type="submit" class="button button-contactForm boxed-btn" value="공지작성">
            	</form>
            	
            	
            	</div>
            	<h2 class="contact-title" align="center">공지 사항</h2><hr>
               <div class="slider-shape d-none d-lg-block">
               		
                  <table style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>제목</th>
                           <th>작성자</th>
                           <th>조회수</th>
                           <th>작성일</th>
                        </tr>
                     </thead>

                     <tbody>
                     <c:forEach items="${announce}" var="announce">
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${announce.ntc_num_pk}</td>
                           <td><a href="/MNGancboardDetail?ntc_num_pk=${announce.ntc_num_pk }"><u>${announce.ntc_title}</u></a></td>
                           <td>관리자</td>
                           <td>${announce.ntc_views}</td>
                           <td><fmt:formatDate value="${announce.ntc_date}" pattern="yyyy-MM-dd"/></td>
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
</html>
<%@include file="../model/footer.jsp" %>
