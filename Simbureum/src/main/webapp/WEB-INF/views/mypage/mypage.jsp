<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("mid") != null) {
%>
	<%@ include file="../model/topBar_login.jsp" %>
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
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/logo/loder1.jpg">
    
</head>
<body>



	<section class="blog_area single-post-area section-padding">
     <div class="container">
      <div class="row">
<jsp:include page="../model/siderbar.jsp" flush="false"/>
    

<div class="col-lg-8 posts-list">
	
	 <div class="slider-shape d-none d-lg-block" >
			<h3 class="mb-30">Form Element</h3>
			<form action="#">
				<div class="input-group-icon mt-10">
					<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
					<div class="form-select" id="default-select" "="">
						<select style="display: none;">
							<option value=" 1">City</option>
							<option value="1">Dhaka</option>
							<option value="1">Dilli</option>
							<option value="1">Newyork</option>
							<option value="1">Islamabad</option>
						</select><div class="nice-select" tabindex="0"><span class="current">Dilli</span><ul class="list"><li data-value=" 1" class="option focus">City</li><li data-value="1" class="option">Dhaka</li><li data-value="1" class="option selected">Dilli</li><li data-value="1" class="option">Newyork</li><li data-value="1" class="option">Islamabad</li></ul></div>
					</div>
				</div>
				<div class="input-group-icon mt-10">
					<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
					<div class="form-select" id="default-select" "="">
						<select style="display: none;">
							<option value=" 1">Country</option>
							<option value="1">Bangladesh</option>
							<option value="1">India</option>
							<option value="1">England</option>
							<option value="1">Srilanka</option>
						</select><div class="nice-select" tabindex="0"><span class="current">England</span><ul class="list"><li data-value=" 1" class="option focus">Country</li><li data-value="1" class="option">Bangladesh</li><li data-value="1" class="option">India</li><li data-value="1" class="option selected">England</li><li data-value="1" class="option">Srilanka</li></ul></div>
					</div>
				</div>
			</form>
		</div>
		
</div>

</div>
</div>
</section>

 
        
 

</body>
</html>
<%@include file="../model/footer.jsp" %>

