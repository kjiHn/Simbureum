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
    
    <style type="text/css">
    .button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 20px;
	float: none;
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}
    
    </style>
</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list" style="padding: 40px 100px;">
            <h2 class="contact-title">지원한 심부름</h2>
           
               <div class="slider-shape d-none d-lg-block">
            	<form method="post">
                  <table style="text-align: center; width: 900px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>제목</th>
                           <th>위치</th>                         
                           <th>상태</th>                         
                           <th>선택</th>                         
                        </tr>
                     </thead>
   
					<c:forEach items="${myList }" var="postdto" begin="0" end="${fun:length(myList) }" step="1" varStatus="status">
					
                     <tbody>                     
                         <tr style="border: 1px solid #e3c4ff;">
                           <td style="padding: 10px;">${status.index +1}</td>
                           <td><a href="/main/postDetail/${postdto.post_num_pk}" style="color: black">${postdto.post_title}</a></td>
                           <td>${postdto.plant }</td>
                           <td> 
	               				모집중
                            </td>
                           <td style="text-align: center;">
                           <input type="button" class="button"  value="취소" name="${postdto.post_num_pk}">
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
   
   <script type="text/javascript">
   
   $(".button").click(function() {
	   event.preventDefault();
	   var num = $(this).attr("name");
	   var mb_num = "<%=session.getAttribute("mNum")%>";
	   alert(num);
	   alert(mb_num);
	   var allData = {'post_num_pk':'asd',"mb_num_pk":mb_num};
	   
	   
	   
	}); 
   
   
   
   </script>





</body>
</html>
