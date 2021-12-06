<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar1.jsp" %>


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
td {
	text-align: left;
	padding: 15px;
	width: 500px;
	word-break:break-all;
}
th {
	padding: 5px;
	padding-left: 30px;
	width: 100px;
	text-align: right;
	/* border-right: 6px solid  #e3c4ff; */
}
table {
	
	
}

#btn_up{
	padding: 10px 44px; position: absolute;
}
#btn_del{
	padding: 10px 44px; margin-left:  200px; position: absolute;
}

</style>

</head>
<body>

<!-- Modal -->

	<div class="col-md-auto">
	
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModal">삭제</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true"
			>
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="modal-title" id="exampleModalLabel">게시물 삭제</h2>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">게시물을 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary" onclick="clickDel(Delete)">삭제하기</button>
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
						</div>
					</div>
				</div>
			</div>
			<script>
				function clickDel(formName) {
					formName.action = "/Ereview/EwreDelete";
					formName.method = "post";
					formName.submit();
				}
				
			</script>
		
	</div>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-8 posts-list" style="margin-left: 200px;">
               <div class="slider-shape d-none d-lg-block">
                <div class="col-lg-8 posts-list" style=" padding:  30px 50px; height:600px; border: 4px solid #e3c4ff; ">
                
                <form name="Delete">
                	<input type="hidden"  name="er_num_pk" value="${EwrList.er_num_pk }">
                	<input type="hidden"  name="mb_id_pk" value="<%=session.getAttribute("mid")%>">                	
                </form>
             
                
               <table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                     	
                        <tr>
                           <th>From.</th>
                           <td ><c:out value=" ${EwrList.mb_id_pk }"></c:out></td>                                                      
                        </tr > 
                        <tr>
                        	<th>해당 게시글</th>
                            <td><c:out value=" ${EwrList.post_title}"></c:out></td>
                        </tr>
                        
                        <tr>
                        	<th >작성일</th>                           
                           <td><fmt:formatDate value="${EwrList.er_date }" pattern="yyyy.MM.dd"/></td>
                        </tr>
                         <tr>
                        	 <th >별점</th>
                             <td style="color: #ffc107"><c:if test="${EwrList.er_grd == 1}">★☆☆☆☆</c:if>
	                            <c:if test="${EwrList.er_grd == 2}">★★☆☆☆</c:if>
	                            <c:if test="${EwrList.er_grd == 3}">★★★☆☆</c:if>
                           		<c:if test="${EwrList.er_grd == 4}">★★★★☆</c:if>
                           		<c:if test="${EwrList.er_grd == 5}">★★★★★</c:if>
                           	</td>
                        </tr>
                        <tr style="border-top: 2px solid  #eceff8;">
                           <th >내용</th>
                           
                           <td style="height: 200px;"><c:out value=" ${EwrList.er_rvc}"></c:out></td> 
                        </tr>
                     </thead>
                  </table>
                  <br>
                  <br>
                 <div class="form-group mt-3" style="margin-left: 20px;">
                 
             <a href="EwreUpdate?er_num_pk=${EwrList.er_num_pk  }"><button  class="button button-contactForm boxed-btn" id="btn_up">수정하기</button></a> 
					<button  class="button button-contactForm boxed-btn"  data-toggle="modal" data-target="#exampleModal" id="btn_del">삭제하기</button>
				</div>
             
               </div>
               </div>
            </div>

         </div>
      </div>
   </section>

<script type="text/javascript">


	$("#updateOk").click(function(){
	 
	 formObj.attr("action", "/review/wreUpdate");
	 formObj.attr("method", "get");  
	 formObj.submit(); 

	 </script>


</body>
</html>
<%@include file="../model/footer.jsp" %>
