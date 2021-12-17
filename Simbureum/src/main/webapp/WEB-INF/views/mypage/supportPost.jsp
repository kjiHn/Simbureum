<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../model/topBar_login.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>   
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
.postTable{
	text-align: center; 
	width: 1000px; 
	align: center; 
	border: 1px solid #e3c4ff;
	height: auto;
}

.postTable thead{
	background-color: #e3c4ff; 
	height: 32px;
}
</style>

<title>해줘~ 할게</title>
</head>
<body>

   <section class="blog_area single-post-area section-padding" style="padding-top: 175px;margin-bottom: 77px; height: 810px;">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-10 posts-list" style="padding: 40px 100px;">
               <h2 class="contact-title">심부름꾼 지원</h2>

               <div class="slider-shape d-none d-lg-block">
					<c:if test="${pageMaker.totalCount == 0}">
						<h2 style="text-align: center; font-weight: bold; padding-top: 100px; width: 1000px">지원한 심부름이 없습니다.</h2>
					</c:if>
					
					<c:if test="${pageMaker.totalCount != 0}">
	                     <table class="postTable">
	                        <thead>
	                           <tr>
	                              <th>No.</th>
	                              <th>제목</th>
	                              <th>위치</th>
	                              <th>상태</th>
	                              <th>선택</th>
	                           </tr>
	                        </thead>
	
	                        <c:forEach items="${myList }" var="postdto" begin="0"
	                           end="${fun:length(myList) }" step="1" varStatus="status">
	
	                           <tbody>
	                              <tr style="border: 1px solid #e3c4ff;">
	                                 <td style="padding: 10px;">${status.index +1}</td>
	                                 <td style="width: 500px"><a href="/mypage/supportPostDetail/${postdto.post_num_pk}"
	                                    style="color: black">${postdto.post_title}</a></td>
	                                 <td>${postdto.plant }</td>
	                                 <td>
	                                 <c:if test="${empty postdto.sel_vr}">모집중</c:if>
	                                 <c:if test="${!empty postdto.sel_vr}">진행중</c:if>
	                                 </td>
	                                 <td style="text-align: center;"><input type="button"
	                                    class="smallBtn" value="취소" name="${postdto.post_num_pk}">
	                                 </td>
	                              </tr>
	                           </tbody>
	                        </c:forEach>
	                     </table>
                  
						<nav class="blog-pagination justify-content-center d-flex" style="width: 1000px">
							<ul class="pagination">
							   <c:if test="${pageMaker.prev}">
							      <li class="page-item"><a href="${pageMaker.startPage -1}" class="page-link">Previous</a></li>
							   </c:if>
							
							   <c:forEach var="num" begin="${pageMaker.startPage}"
							      end="${pageMaker.endPage}">
							      <li class='page-item ${pageMaker.cri.pageNum == num ? "active":""} '>
							         <a href="${num}" class="page-link" id="page">${num}</a>
							      </li>
							   </c:forEach>
							
							   <c:if test="${pageMaker.next}">
							      <li class="page-item"><a href="${pageMaker.endPage +1 }" class="page-link">Next</a></li>
							   </c:if>
							
	                    	</ul>
						</nav>
                  </c:if>
               </div>

            </div>
         </div>

      </div>

   </section>
   
   
 <form id='actionForm' action="/mypage/supPost" method='get'> 
         <input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
        <input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
        <input type='hidden' name='mb_num_pk' value='${sessionScope.mNum}' />
        </form>
   

   <script type="text/javascript">
   
   $(".smallBtn").click(function() {
      event.preventDefault();
      var num = $(this).attr("name");
      var mb_num = "<%=session.getAttribute("mNum")%>";
      var allData = {'post_num_pk':num,"mb_num_pk":mb_num};
      console.log("자바스크립트!!");
      $.ajax({
         type: "POST", //요청 메소드 방식
         url:"/mypage/supPostDel",
         data:allData,
         success : function(data){
        	console.log("성공~~~");
            if (data == 1) {
               alert("심부름꾼 지원이 취소되었습니다.");
               location.reload();
            }
         },
         error : function(data){
            alert(data);
         }
      });
   }); 
   
   </script>



<script>
  // p 312
  var actionForm = $("#actionForm");
  $(".page-item a").on("click", function (e){
     e.preventDefault();
     console.log("click");
     actionForm.find("input[name='pageNum']").val($(this).attr("href"));
     actionForm.submit();
  });
</script>

<script type="text/javascript">
   $("#regBtn").on("click", function() {
      self.location = "/test";
   });
</script>


<script type="text/javascript">
$(".move").on("click",function(e) {
         e.preventDefault();
         actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href")+ "'>");
         actionForm.attr("action","/test");
         actionForm.submit();

      });
      
$(".active > a").click(function() {
     event.preventDefault();
});

</script>

</body>
<%@include file="../model/footer.jsp" %>
</html>