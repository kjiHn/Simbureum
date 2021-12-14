<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fun" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<link rel="shortcut icon" type="image/x-icon"
	href="view/assets/img/logo/loder1.jpg">

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


	<section class="blog_area single-post-area section-padding" style="padding-top: 175px;">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-10 posts-list" style="padding: 40px 100px;">
					<h2 class="contact-title">심부름한 내역</h2>

					<div class="slider-shape d-none d-lg-block">
					<c:if test="${pageMaker.totalCount == 0}">
						<h2 style="text-align: center; font-weight: bold; padding-top: 100px; width: 1000px">심부름 한 내역이 없습니다.</h2>
					</c:if>
					
					<c:if test="${pageMaker.totalCount != 0}">
						<table
							style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
							<thead>
								<tr style="background-color: #e3c4ff;">
									<th>No.</th>
									<th>제목</th>
									<th>위치</th>
									<th>완료일</th>
								</tr>
							</thead>

							<c:forEach items="${myList }" var="postdto" begin="0"
								end="${fun:length(myList) }" step="1" varStatus="status">

								<tbody>
									<tr style="border: 1px solid #e3c4ff;">
										<td style="padding: 10px;">${status.index +1}</td>
										<td style="width: 500px"><a href="/mypage/finishedPostDetail/${postdto.post_num_pk}"
											style="color: black">${postdto.post_title}</a></td>
										<td>${postdto.plant }</td>
										<td><fmt:formatDate value="${postdto.vh_date }"
												pattern="yyyy.MM.dd" /></td>
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
									<li class='page-item ${pageMaker.cri.pageNum == num ? " active":""} '>
										<a href="${num}" class="page-link">${num}</a>
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
	  <form id='actionForm' action="/mypage/endPost" method='get'> 
      	<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
     	<input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
     	<input type='hidden' name='mb_id' value='${sessionScope.mid}' />
   	  </form>



<script>
  // p 312
  var actionForm = $("#actionForm");
  $(".page-item a").on("click", function (e){
     event.preventDefault();
     console.log("click");
     actionForm.find("input[name='pageNum']").val($(this).attr("href"));
     actionForm.submit();
  });
  
  $(".active > a").click(function() {
	  event.preventDefault();
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

</script>





</body>
</html>
<%@include file="../model/footer.jsp"%>
