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
    <!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />
    
    <style>
    .button{
    border-radius: 5px;
    
    }
    </style>
</head>
<body>



   <section class="blog_area single-post-area section-padding" style="padding-bottom: 199px">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbarMNG.jsp" flush="false"/>
            <div class="col-lg-10 posts-list">
            	<div class="form-group mt-3" align = "right">
            	<form action="MNGwriteanc" method="post">
            	<button type="submit" class="bigBtn">공지 작성</button>
            	</form>
            	
            	
            	</div>
            	<h2 class="contact-title" align="center">공지 사항</h2><hr>
               <div class="slider-shape d-none d-lg-block">
               		<c:if test="${announceCount == 0}">
               			<h2 style="text-align: center;">작성된 공지사항이 없습니다</h2>	
               		</c:if>
               		<c:if test="${announceCount != 0}">
                  <table style="text-align: center; width: 1000px; height:220px; align: center; border: 1px solid #e3c4ff;">
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
                     <c:forEach items="${list}" var="list" varStatus="status">
                        <tr style="border: 1px solid #e3c4ff;">
                           <td>${status.count}</td>
                           <td><a href="/MNGancboardDetail?ntc_num_pk=${list.ntc_num_pk }"><u>${list.ntc_title}</u></a></td>
                           <td>관리자</td>
                           <td>${list.ntc_views}</td>
                           <td><fmt:formatDate value="${list.ntc_date}" pattern="yyyy-MM-dd"/></td>
                        </tr>
					 </c:forEach>

                     </tbody>
                  </table>
                  <nav class="blog-pagination justify-content-center d-flex" style="width: 1000px">
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
       			 </c:if>
            
               </div>
            </div>

         </div>
      </div>
   </section>
 <form id='actionForm' action="/MNGancboard" method='get'> 
      	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
     	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
   	  </form>
<script>
  // p 312
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
