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
        <!-- 만든 버튼 css -->
	<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />
    <style>
    	/* #btn1{
    		margin-right:40px;
    		border-top-left-radius:5px;
    		border-bottom-left-radius:5px;
    		border-top-right-radius:5px;
    		border-bottom-right-radius:5px;
    		background-color: #E3C4FF;
    		border: 1px solid #E3C4FF;
    		padding : 10px;
    	} */
    	
    	#btn{
    	padding-left: 500px;
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



	<section class="blog_area single-post-area section-padding" style="padding-top: 175px;  margin-bottom: 77px; height: 810px;">
     <div class="container">
      <div class="row">
<jsp:include page="../model/siderbarMNG.jsp" flush="false"/>
    

<div class="col-lg-8 posts-list" style="padding-left: 70px;">
	
	 <div class="slider-shape d-none d-lg-block" >
			<h2 class="mb-30"><b>리뷰 관리</b></h2>
	 </div>
	 
<div id="div1">
	<table width = "100%" height = "100%" >
			<tr>
				<td><b>작성자</b></td>
				<td>${gyzreportreview.mb_id_pk}</td>
			</tr>
			<tr>
				<td><b>해당 게시글</b></td>
				<td>${gyzreportreview.post_title}</td>
			</tr>
			<tr>
				<td><b>작성일</b></td>
				<td><fmt:formatDate value="${gyzreportreview.post_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
			<%-- <tr>
				<td><b>별점</b></td>
				<td>${report.get(3)}</td>
			</tr> --%>
			<tr>
				<td><b>내용</b></td>
				<td>${gyzreportreview.vr_rvc}</td>
			</tr>
			<tr>
				<td><b>신고자</b></td>
				<td>${gyzreportreview.mb_id}</td>
			</tr>
			<tr>
				<td><b>신고일</b></td>
				<td><fmt:formatDate value="${gyzreportreview.rerp_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td><b>신고사유</b></td>
				<td>${gyzreportreview.rerp_con}</td>
			</tr>
	</table>
</div>
	 
		
</div>
 <div class="row justify-content-center" id="btn" >                   
					<Button type="button" id="btn1" class="bigBtn" id="cle" onclick="location.href = '/repoertreviewcancle?rerp_num_pk=${gyzreportreview.rerp_num_pk}'">신고 취소</Button>
                 	<Button type="button" id="btn2" class="bigBtn" id="alt" onclick="location.href = '/gyzrepoertreviewdelete?vr_rvn_pk=${gyzreportreview.vr_rvn_pk}'">신고 처리</Button>
                </div>

</div>
</div>
</section>

 
        
 

</body>
<script type="text/javascript">
	$("#cle").click(function(){
		alert("취소가 완료되었습니다");
	});
	$("#alt").click(function(){
		alert("처리가 완료되었습니다");
	});
</script>

               
         

</html>
<%@include file="../model/footer.jsp" %>

