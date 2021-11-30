<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar1.jsp" %>

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
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${post.get(0).getPost_num_pk()}</td>
						   <td><a href="#"><u>${post.get(0).getPost_title()}</u></a></td>
                           <td>${post.get(0).getMb_id()}</td>
                           <td>${post.get(0).getPbigc_name()}&nbsp;${post.get(0).getPsmallc_name()}</td>
                           <td>${post.get(0).getPost_views()}</td>
                           <td><fmt:formatDate value="${post.get(0).getPost_date()}" pattern="yyyy-MM-dd"/></td>
                        </tr>


                        <tr>
                           <!-- 테스트 코드 -->
                           <td>1</td>
                           <td>벌레 잡아주세요ㅠㅠ</td>
                           <td>벌레시러</td>
                           <td>서울 서초구</td>
                           <td>11</td>
                           <td>2021.11.09</td>
                        </tr>

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
