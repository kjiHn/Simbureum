<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <style>
    	#btn1{
    		margin-right:40px;
    		border-top-left-radius:5px;
    		border-bottom-left-radius:5px;
    		border-top-right-radius:5px;
    		border-bottom-right-radius:5px;
    		background-color: #E3C4FF;
    		border: 1px solid #E3C4FF;
    		padding : 10px;
    	}
    	#div1{
    		height: 400px;
			width: 50%;
			float: left;
    	}
    	#div2{
    		margin-left:500px;
    		height: 400px;
			width: 50%;
			float: right;
    	}
   	
    </style>
    
    
</head>
<body>



	<section class="blog_area single-post-area section-padding">
     <div class="container">
      <div class="row">
<jsp:include page="../model/siderbarMNG.jsp" flush="false"/>
    

<div class="col-lg-8 posts-list">
	
	 <div class="slider-shape d-none d-lg-block" >
			<h2 class="mb-30"><b>리뷰 관리</b></h2>
	 </div>
	 
<div id="div1">
	<table width = "100%" height = "100%" >
			<tr>
				<td><b>작성자</b></td>
				<td>${sbrreportreview.mb_id_pk}</td>
			</tr>
			<tr>
				<td><b>해당 게시글</b></td>
				<td>${sbrreportreview.post_title}</td>
			</tr>
			<tr>
				<td><b>작성일</b></td>
				<td><fmt:formatDate value="${sbrreportreview.post_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
			<%-- <tr>
				<td><b>별점</b></td>
				<td>${report.get(3)}</td>
			</tr> --%>
			<tr>
				<td><b>내용</b></td>
				<td>${sbrreportreview.er_rvc}</td>
			</tr>
			<tr>
				<td><b>신고자</b></td>
				<td>${sbrreportreview.mb_id}</td>
			</tr>
			<tr>
				<td><b>신고일</b></td>
				<td><fmt:formatDate value="${sbrreportreview.rerp_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td><b>신고사유</b></td>
				<td>${sbrreportreview.rerp_con}</td>
			</tr>
	</table>
</div>
	 
		
</div>

</div>
</div>
</section>

 
        
 

</body>
<footer>
 <div class="container">
                <div class="row justify-content-center" >                   
                 	<form action="/repoertreviewcancle" method="get"> 
						<input type="hidden" name="rerp_num_pk" value="${sbrreportreview.rerp_num_pk}"/>
						<input id="btn1" class ="button" type="submit" value="신고 취소"/>
					</form>
                 	<form action="/sbrrepoertreviewdelete" method="get"> 
						<input type="hidden" name="er_num_pk" value="${sbrreportreview.er_num_pk}"/>
						<input id="btn1" class ="button" type="submit" value="신고 처리"/>
					</form>
                </div>
            </div>
</footer>
</html>
<%@include file="../model/footer.jsp" %>

