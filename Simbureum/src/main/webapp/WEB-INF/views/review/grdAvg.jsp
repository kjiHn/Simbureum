<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.button {
  background-color: white; 
  color: black; 
  border: 2px solid #BFA0ED;
  padding: 8px 60px;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
}

.button:hover {
  background-color: #BFA0ED;
  color: white;
}

</style>

<title>심부름 완료</title>
</head>
<body>
<section class="blog_area single-post-area section-padding">
		
					<div class="slider-shape d-none d-lg-block">
					</div>
					<c:if test="${grdAvg.vr_grd ==null }">
					<body style="background-color: #b66dff; text-align: center;" >
					<div style="color: white;">
					<br><br>
					<h3>선택하신 고용자의 리뷰가 없습니다</h3>
					<p>심부름을 완료하고 첫 리뷰를 작성해주세요</p>
					</div>
					
					</body>	
					</c:if>
					
					<c:if test="${grdAvg.vr_grd != null }">
					 <table style="text-align: left; width: 330px;">
                     <thead>
                        <tr >
                           <th>
                           		<c:out value="${grdAvg.vr_mbid }"></c:out>
                           		<p>평점 <c:out value="${grdAvg.vr_grd }"></c:out> | 리뷰 수 <c:out value="${grdAvg.vr_rvn_pk }"></c:out> 
                           
                           </th>
                        </tr>
                     </thead>
					<c:forEach items="${reviewList }" var="vrdto">
					<tr><td>리뷰</td></tr>				
                         <tr>                 
                           <td style="border-top: 1px solid gray;">ID : ${vrdto.vr_mbid}</td>
                         </tr>
                         <tr>
                           <td>${vrdto.vr_date}</td>
                           </tr>
                           <tr>
                           <td style="color: #ffc107;"> 
	                            <c:if test="${vrdto.vr_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${vrdto.vr_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${vrdto.vr_grd == 5}">★★★★★</c:if>
                            </td>
                            </tr>
                            
                            <tr>
                           <td>${vrdto.vr_rvc }</td>
                    	</tr>
                    
                   </c:forEach>
                  </table>
                  </c:if>
                
	</section>
	
	
</body>
</html>