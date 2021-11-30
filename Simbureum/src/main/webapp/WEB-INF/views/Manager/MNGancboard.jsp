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
            <jsp:include page="../model/siderbarMNG1.jsp" flush="false"/>
            <div class="col-lg-10 posts-list">
            	<div class="form-group mt-3" align = "right" >
            		<a href="#"><button  class="button button-contactForm boxed-btn" class="button" id="btn_create">공지 작성</button></a>
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
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${announce.get(0).getNtc_num_pk()}</td>
                           <td><a href="MNGannounce"><u>${announce.get(0).getNtc_title()}</u></a></td>
                           <td>관리자</td>
                           <td>${announce.get(0).getNtc_views()}</td>
                           <td><fmt:formatDate value="${announce.get(0).getNtc_date()}" pattern="yyyy-MM-dd"/></td>
                        </tr>


                        <tr>
                           <!-- 테스트 코드 -->
                           <td>1</td>
                           <td><ins>공지사항</ins></td>
                           <td>관리자</td>
                           <td>11</td>
                           <td>2022.22.22</td>
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
