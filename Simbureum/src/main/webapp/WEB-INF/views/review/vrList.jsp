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
            <div class="col-lg-8 posts-list">
               <div class="slider-shape d-none d-lg-block">
            	
                  <table style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>내용</th>
                           <th>아이디</th>
                           <th>별점</th>
                           <th>작성일</th>                           
                        </tr>
                     </thead>
					<c:forEach items="${writeList }" var="vrdto">
                     <tbody>                    
                         <tr style="border: 1px solid #e3c4ff;">
                           <td>${vrdto.vr_rvn_pk}</td>
                           <td><a href="review/vrList?vt_mbid=${vrdto.vr_mbid }" style="color: black">${vrdto.vr_rvc}</a></td>
                           <td>${vrdto.vr_mbid }</td>
                           <td>${vrdto.vr_grd}</td>
                           <td>${vrdto.vr_date}</td>
                        </tr>
                     </tbody>
                   </c:forEach>
                  </table>
           	
               </div>
            </div>

         </div>
      </div>
   </section>





</body>
</html>
<%@include file="../model/footer.jsp" %>
