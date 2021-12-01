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
    
<script type="text/javascript">
	//폼을 변수에 저장
	var formObj = $("form[role='form']");
	
	// 수정 버튼 클릭
	$("#updateOk").click(function(){
	 
	 formObj.attr("action", "/review/wreUpdate");
	 formObj.attr("method", "get");  
	 formObj.submit(); 
	 
 	 
</script>
    

    
    
    
    
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
	
}


/* component */

.star-vr_grd {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:6em;
}

.star-vr_grd input {
  display:none;
}

.star-vr_grd label {
  color:#ccc;
  cursor:pointer;
}

.star-vr_grd :checked ~ label {
  color:#f90;
}

.star-vr_grd label:hover,
.star-vr_grd label:hover ~ label {
  color:#fc0;
}



/* explanation */

article {
  background-color:#ffe;
  box-shadow:0 0 1em 1px rgba(0,0,0,.25);
  color:#006;
  font-family:cursive;
  font-style:italic;
  margin:4em;
  max-width:30em;
  padding:2em;
}
</style>
    
</head>
<body>



	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list" style="margin-left: 200px;">
					<div class="slider-shape d-none d-lg-block">
						<div class="col-lg-8 posts-list" style=" padding:  30px 50px; height:600px; border: 4px solid #e3c4ff; ">
						
					<form class="form-contact contact_form"	method="post"  role="form">	
					<input type="hidden" value="${wrList.post_num_pk }">
					<input type="hidden" value="${wrList.mb_id_pk }">
				    <table style="text-align: center; width: 400px; align: center;" >
                     <thead>
                        <tr>
                        	 <th >별점</th>
                             <td> 
                             	<div class="star-vr_grd" >									
								  <input type="radio" id="5-stars" name="vr_grd" value="5"/>
								  <label for="5-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="4-stars" name="vr_grd" value="4" />
								  <label for="4-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="3-stars" name="vr_grd" value="3" />
								  <label for="3-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="2-stars" name="vr_grd" value="2" />
								  <label for="2-stars" class="star" style="font-size: 25px;">★</label>
								  <input type="radio" id="1-star" name="vr_grd" value="1" />
								  <label for="1-star" class="star" style="font-size: 25px;">★</label>									  
							    </div>
                           	</td>
                        </tr>
                        <tr style="border-top: 2px solid  #eceff8; ">
                           <th>내용</th>
                           <td style="height: 200px;">
                           <div class="form-group"><textarea class="form-control w-100" name="vr_rvc"
										 style="font-size: 20px;"
										 id="message" cols="30" rows="9"></textarea>
								</div>
                           </td>                            
                        </tr>
                        
                     </thead>
                  </table>
                  
                 <div class="form-group mt-3">
					<button class="button button-contactForm boxed-btn" id="updateOk" style="padding: 10px 44px; margin-left: 150px; ">완료</button>
				</div>
                 </form>
				</div> 
						
						
						
						
						
						
						
						
<%-- 							<div class="col-12">				
								
							</div>
								
							<br>
							<div class="col-lg-12" > 
								<form class="form-contact contact_form"	method="post"  role="form">
								<h3>TO.</h3>${wrList.vr_mbid }
								<h3>해당게시글</h3>${wrList.post_title }
								
								<h3>별점</h3>
									<div class="star-vr_grd" >
									
									  <input type="radio" id="5-stars" name="vr_grd" value="5"/>
									  <label for="5-stars" class="star" style="font-size: 25px;">★</label>
									  <input type="radio" id="4-stars" name="vr_grd" value="4" />
									  <label for="4-stars" class="star" style="font-size: 25px;">★</label>
									  <input type="radio" id="3-stars" name="vr_grd" value="3" />
									  <label for="3-stars" class="star" style="font-size: 25px;">★</label>
									  <input type="radio" id="2-stars" name="vr_grd" value="2" />
									  <label for="2-stars" class="star" style="font-size: 25px;">★</label>
									  <input type="radio" id="1-star" name="vr_grd" value="1" />
									  <label for="1-star" class="star" style="font-size: 25px;">★</label>
									  
									  </div>	
									  <br>						
																		
									<div class="row">
										<div class="col-12">
											<div class="form-group">
											<h3>내용</h3>
												<textarea class="form-control w-100" name="vr_rvc"
												style="font-size: 25px;"
													id="message" cols="30" rows="9"
													>${wrList.vr_rvc }</textarea>
											</div>
										</div>
									</div>
									<div class="form-group mt-3">
										<button class="button button-contactForm boxed-btn" id="updateOk" style="padding: 10px 44px; ">완료</button>
									</div>
								</form>
							</div> --%>

					

					</div>
				</div>

			</div>
		</div>
	</section>





</body>
</html>
<%@include file="../model/footer.jsp" %>
