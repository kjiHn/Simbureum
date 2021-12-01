<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    
</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list" style="padding: 40px 100px;">
            <h2 class="contact-title">올린 심부름</h2>
           
               <div class="slider-shape d-none d-lg-block">
            	<form method="post">
                  <table style="text-align: center; width: 900px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>제목</th>
                           <th>위치</th>
                           <th>조회수</th>
                           <th>작성일</th>                           
                           <th>상태</th>                           
                        </tr>
                     </thead>
					<c:forEach items="${myList }" var="postdto" begin="0" end="${fun:length(myList) }" step="1" varStatus="status">
					
                     <tbody>                     
                         <tr style="border: 1px solid #e3c4ff;">
                           <td style="padding: 10px;">${status.index + 1}</td>
                           <td><a href="/main/postDetail/${postdto.post_num_pk}" style="color: black">${postdto.post_title}</a></td>
                           <td>${postdto.plant }</td>
                           <td style="color: #ffc107;"> 
	               				${postdto.post_views}
                            </td>
                           <td><fmt:formatDate value="${postdto.post_date }" pattern="yyyy.MM.dd"/></td>
                           <td>
								 <c:if test="${postdto.vh_hsn_pk != 0 && postdto.ap_apn_pk == 0}">완료</c:if>
								 <c:if test="${postdto.ap_apn_pk != 0 && postdto.vh_hsn_pk == 0}">진행중</c:if>
								 <c:if test="${postdto.ap_apn_pk == 0 && postdto.vh_hsn_pk == 0}">모집중</c:if>
						   </td>
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
