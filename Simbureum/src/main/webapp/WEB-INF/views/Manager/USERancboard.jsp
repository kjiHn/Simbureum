<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar1.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
            <%-- <jsp:include page="../model/siderbarMNG1.jsp" flush="false"/> --%>
            <div class="col-lg-10 posts-list">
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
                        <tr style="border: 1px solid #e3c4ff;">
                           <!-- 테스트 코드 -->
                           <td>${announce.get(0).getNtc_num_pk()}</td>
                           <td>${announce.get(0).getNtc_title()}</td>
                           <td>관리자</td>
                           <td>${announce.get(0).getNtc_views()}</td>
                           <td><fmt:formatDate value="${announce.get(0).getNtc_date()}" pattern="yyyy-MM-dd"/></td>
                        </tr>


                        <%-- <tr>
                           <!-- 테스트 코드 -->
                           <td>${ancbd.get(1).getNtc_num_pk()}</td>
                           <td>${ancbd.get(1).getNtc_title()}</td>
                           <td>관리자</td>
                           <td>${ancbd.get(1).getNtc_views()}</td>
                           <td>${ancbd.get(1).getNtc_date()}</td>
                        </tr> --%>

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
