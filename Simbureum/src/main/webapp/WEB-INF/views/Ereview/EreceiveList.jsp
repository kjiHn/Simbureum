<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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



   <section class="blog_area single-post-area section-padding" style="padding-top: 175px;  margin-bottom: 77px; height: 810px;">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list" style="padding: 40px 100px;">
            <h2 class="contact-title">받은 리뷰</h2>
           
               <div class="slider-shape d-none d-lg-block">
              	
              
               
            	<h3>WHEN.<a href="/review/receiveList?vr_mbid=<%=session.getAttribute("mid")%>">고용자</a> | <a href="/Ereview/EreceiveList?er_mbid=<%=session.getAttribute("mid")%>" style="font-weight: bold; font-size: 20px;">심부름꾼</a></h3>            	
            	<c:if test="${EretotalPage == 0}">
            		<h2 style="text-align: center; font-weight: bold; padding-top: 100px; width: 1000px">받은 리뷰가 없습니다.</h2>
            	</c:if>  
       			
            	<c:if test="${EretotalPage != 0}">
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
					<c:forEach items="${EreceiveListPaging }" var="erdto" varStatus="status">
					
                     <tbody>                     
                         <tr style="border: 1px solid #e3c4ff;">
                           <td style="padding: 10px;">${status.count}</td>
                           <td><a href="EreList?er_num_pk=${erdto.er_num_pk }" style="color: black">${erdto.er_rvc}</a></td>
                           <td>${erdto.mb_id_pk }</td>
                           <td style="color: #ffc107;"> 
	                            <c:if test="${erdto.er_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${erdto.er_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${erdto.er_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${erdto.er_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${erdto.er_grd == 5}">★★★★★</c:if>
                            </td>
                           <td>${erdto.er_date}</td>
                        </tr>
                     </tbody>
                   </c:forEach>
                  </table>
                  </c:if>
                  <nav class="blog-pagination justify-content-center d-flex">
								<ul class="pagination">
									<c:if test="${pageMaker.prev}">
										<li class="page-item"><a
											href="${pageMaker.startPage -1}" class="page-link">이전</a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage}"
										end="${pageMaker.endPage}">
										<li class='page-item ${pageMaker.cri.pageNum == num ? "active":""} '>
											<a href="${num}" class="page-link">${num}</a>
										</li>
									</c:forEach>

									<c:if test="${pageMaker.next}">
										<li class="page-item "><a
											href="${pageMaker.endPage +1 }" class="page-link">다음</a></li>
									</c:if>


								</ul>
							</nav>
			
				
           </div>
           
               </div>
            </div>

         </div>
     
   </section>
    <form id='actionForm' action="/Ereview/EreceiveList" method='get'> 
      	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
     	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
     	<input type='hidden' name='er_mbid' value='${sessionScope.mid}' />
   	  </form>
   
   <script>
   var actionForm = $("#actionForm");
   $(".page-item a").on("click", function (e){
      e.preventDefault();
      console.log("click");
      actionForm.find("input[name='pageNum']").val($(this).attr("href"));
      actionForm.submit();
   });
   
   
   $(".active > a").click(function() {
 	  event.preventDefault();
 });
   
   </script>
  





</body>
</html>
<%@include file="../model/footer.jsp" %>
