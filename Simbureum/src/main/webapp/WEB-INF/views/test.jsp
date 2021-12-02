<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<h1>List Page</h1>

<br>
   <a href="/board/register">register</a>
   <br>
   <br>
   
   <table class="table table-striped table-bordered table-hover">
      <thead>
         <tr>
            <th>#번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>수정일</th>
         </tr>
      </thead>

      <c:forEach items="${list}" var="board">
         <tr>
            <td><c:out value="${board.post_num_pk}" /></td>
            <td>
            <%-- <a href='/board/get?bno=<c:out value="${board.bno}"/>'><c:out value="${board.title}"/></a> --%>
            <a class = 'move' href='<c:out value="${board.post_num_pk}"/>'>
            	<c:out value="${board.post_title}"/>
            </a>
            </td>

            <%-- <td><a class='move' href='<c:out value="${board.bno}"/>'> <c:out
                     value="${board.title}" />
            </a></td> --%>

            <td><c:out value="${board.mb_num_pk}" /></td>
            <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.post_date}" /></td>
            <td><fmt:formatDate pattern="yyyy-MM-dd"
                  value="${board.post_date}" /></td>
         </tr>
      </c:forEach>
   </table>
   <br>
   <%-- <form id='searchForm' action="/board/list" method='get'>
      <select name='type'>
         <option value=""
            <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
         <option value="T"
            <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
         <option value="C"
            <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
         <option value="W"
            <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
         <option value="TC"
            <c:out value="${pageMaker.cri.type eq 'TC'?'selected':''}"/>>제목
            or 내용</option>
         <option value="TW"
            <c:out value="${pageMaker.cri.type eq 'TW'?'selected':''}"/>>제목
            or 작성자</option>
         <option value="TWC"
            <c:out value="${pageMaker.cri.type eq 'TWC'?'selected':''}"/>>제목
            or 내용 or 작성자</option>
      </select> <input type='text' name='keyword'
         value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
         type='hidden' name='pageNum'
         value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
         type='hidden' name='amount'
         value='<c:out value="${pageMaker.cri.amount}"/>' />
      <button class='btn btn-default'>Search</button>
   </form>
   
    --%>
   
<!-- p 311 -->
   <form id='actionForm' action="/test" method='get'> 
      <input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
      <input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
    </form>

   <!-- p 308 -->
   <div class='pull-right'>
               <ul class="pagination">

                  <%--             <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous"><a href="#">Previous</a>
              </li>
            </c:if>

            <c:forEach var="num" begin="${pageMaker.startPage}"
              end="${pageMaker.endPage}">
              <li class="paginate_button"><a href="#">${num}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="paginate_button next"><a href="#">Next</a></li>
            </c:if> --%>

                  <c:if test="${pageMaker.prev}">
                     <li class="paginate_button previous"><a
                        href="${pageMaker.startPage -1}">Previous</a></li>
                  </c:if>

                  <c:forEach var="num" begin="${pageMaker.startPage}"
                     end="${pageMaker.endPage}">
                     <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
                        <a href="${num}">${num}</a>
                     </li>
                  </c:forEach>

                  <c:if test="${pageMaker.next}">
                     <li class="paginate_button next"><a
                        href="${pageMaker.endPage +1 }">Next</a></li>
                  </c:if>


               </ul>
            </div>
            <!--  end Pagination -->
   
   
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   $(document).ready(function(){
      var result = '<c:out value="${result}"/>';
      
      checkModal(result);
      
      // p.257
      history.replaceState({}, null, null);
      
      function checkModal(result){
         if(result === '' || history.state) return;
         if( parseInt(result)>0 ) alert("게시글 " + parseInt(result) +" 번이 등록되었습니다. "); 
      }
   });
</script>

<script>
  // p 312
  var actionForm = $("#actionForm");
  $(".paginate_button a").on("click", function (e){
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

</script>

<script type="text/javascript">
var searchForm = $("#searchForm");
$("#searchForm button").on(
		"click",
		function(e) {

			if (!searchForm.find("option:selected")
					.val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find(
					"input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}

			searchForm.find("input[name='pageNum']")
					.val("1");
			e.preventDefault();

			searchForm.submit();

		});

</script>

</body>
</html>