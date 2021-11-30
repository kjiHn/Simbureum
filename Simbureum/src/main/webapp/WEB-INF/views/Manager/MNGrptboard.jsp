<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"  %> --%>
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
			<jsp:include page="../model/siderbarMNG2.jsp" flush="false"/>
    

<div class="col-lg-8 posts-list">
	
	 <div class="slider-shape d-none d-lg-block" >
			<h2 class="mb-30"><b>신고된 게시글</b></h2>
	 </div>
	 
	<div id="div1">
		<table width = "100%" height = "100%" >
			<tr>
				<td><b>제목</b></td>
				<%-- <td>${reportpost.get(0).getPost_title()}</td> --%>
				<%-- <td>${post.get(0).getPost_num_pk()}</td> --%>
			</tr>
			<tr>
				<td><b>작성자</b></td>
				<%-- <td>${reportpost.get(0).getMb_id()}</td> --%>
			</tr>
			<tr>
				<td><b>작성일</b></td>
				<%-- <td><fmt:formatDate value="${reportpost.get(0).getPost_date()}" pattern="yyyy-MM-dd"/></td> --%>
			</tr>
			<tr>
				<td><b>내용</b></td>
				<%-- <td>${reportpost.get(0).getPost_con()}</td> --%>
			</tr>
			<tr>
				<td><b>위치</b></td>
				<%-- <td>${post.get(0).getPbigc_name()}&nbsp;${post.get(0).getPsmallc_name()}</td> --%>
			</tr>
			<tr>
			<td><b>심부름가격</b></td>
			<%-- <td>${reportpost.get(0).getPost_price()}</td> --%>
			</tr>
			<tr>
				<td><b>신고자</b></td>
				<%-- <td>${reportpost.get(0).getMb_id()}</td> --%>
			</tr>
			<tr>
				<td><b>신고일</b></td>
				<%-- <td><fmt:formatDate value="${reportpost.get(0).getPorp_date()}" pattern="yyyy-MM-dd"/></td> --%>
			</tr>
			<tr>
				<td><b>신고사유</b></td>
				<%-- <td>${reportpost.get(0).getPorp_con()}</td> --%>
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
                 	<button id="btn1">신고 취소</button>
                 	<button id="btn1">신고 처리</button>
                </div>
            </div>
</footer>
</html>
<%@include file="../model/footer.jsp" %>

