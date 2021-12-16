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

<style>
	 
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
    
</head>
<body>
  
        
        <%-- <p>제목:${notice.get(0).getPost_title()}</p>
        <p>작성자:${notice.get(0).getMb_name()}</p>
        <p>작성일:<fmt:formatDate value="${notice.get(0).getPost_date()}" pattern="yyyy-MM-dd"/></p>
        <p>조회수:${notice.get(0).getPost_views()}</p>
        <p>내용:${notice.get(0).getPost_con()}</p>
        <p>위치:${notice.get(0).getPsmallc_name()}</p>
        <p>심부름가격:${notice.get(0).getPost_price()}</p>
        <hr> --%>
        

        
      
    
   

   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <%-- <jsp:include page="../model/siderbar2.jsp" flush="false" /> --%>
             <div class="col-lg-10 posts-list">
            	<h2 class="contact-title" align="center">게시글 관리</h2><hr>
               <div class="slider-shape d-none d-lg-block">
            	
                  <table style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>제목</th>
						   <th>작성자</th>
                           <th>위치</th>
                           <th>조회수</th>
                           <th>작성일</th>
                        </tr>
                     </thead>

                    <tbody>
                      <c:forEach items="${post}" var="post">
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${post.post_num_pk}</td>
						   <td><a href="/MNGntcboardDetail?post_num_pk=${post.post_num_pk }"><u>${post.post_title}</u></a></td>
                           <td>${post.mb_id}</td>
                           <td>${post.pbigc_name}&nbsp;${post.psmallc_name}</td>
                           <td>${post.post_views}</td>
                           <td><fmt:formatDate value="${post.post_date}" pattern="yyyy-MM-dd"/></td>
                        </tr>
					   </c:forEach>
                     </tbody>
                  </table>
            
               </div>
            </div>

         </div>
      </div>
   </section>
<script type="text/javascript">
$(document).ready(function(){
	
});
	
</script>




</body>
</html>
<%@include file="../model/footer.jsp" %>
