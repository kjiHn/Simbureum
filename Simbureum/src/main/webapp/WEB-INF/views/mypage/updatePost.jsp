<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<%@ include file="../model/topBar_login.jsp" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">

#centerBody{
  display: grid;
  place-items: center;
}

#centerCon{
  display: grid;
  place-items: center;
 
}

.button {
  background-color: white; 
  color: black; 
  border: 2px solid #BFA0ED;
  padding: 8px 80px;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius: 10px;
}

.button:hover {
  background-color: #BFA0ED;
  color: white;
}

.textinput{
	width: 300px;
	height: 40px;
	margin-bottom: 20px;
	margin-top: 20px;
}

.content{
	width: 300px;
	height: 200px;
	margin-bottom: 20px;
	margin-top: 20px
}
</style>	

<title>심부름 수정</title>

</head>
<body>
	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<h2 class="contact-title">심부름 수정</h2>
					<div class="slider-shape d-none d-lg-block">
	
						<form method="POST" action="/mypage/updatePost/${post.post_num_pk}">
							<table>
								<tr>
									<th>제목 : </th>
									<td><input name="post_title" class="textinput" placeholder="제목 입력" value="${post.post_title}"/></td>
								</tr>
								<tr>
									<th>내용 : </th>
									<td><textarea name="post_con" class="content" placeholder="내용 입력">${post.post_con}</textarea></td>
								</tr>
								<tr>
									<th>위치 : </th>
									<td>
										<select id="bigCategory" >
											<option value="0">시/도</option>
											<option value="1">서울</option>
											<option value="2">경기도</option>
										</select>
										<select name="psmallc_pk" id="smallCategory">
											<option value="0">시/군/구</option>
										</select>
									</td>
								</tr>
								<tr>
									<th>마감일 : </th>
									<td><input name="post_dline" class="textinput" placeholder="마감일 입력(ex.2021/01/01)" 
											value="<fmt:formatDate value="${post.post_date}" pattern="yyyy/MM/dd" />"/></td>
								</tr>
								<tr>
									<th>심부름꾼 수 : </th>
									<td><input name="post_numof" class="textinput" placeholder="심부름꾼 수 입력" value="${post.post_numof}"/></td>
								</tr>
								<tr>
									<th>심부름 가격 : </th>
									<td><input name="post_price" class="textinput" placeholder="심부름 가격 입력" value="${post.post_price}"/></td>
								</tr>
							</table>
							
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
							
							<input type="submit" class="button" value="완료">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script>
		var pbig = "${post.pbigc_name}";
		var target = document.getElementById("smallCategory");
		var val;
		var text;
		
		if(pbig == "서울"){
			$("#bigCategory option:eq(1)").prop("selected", true);
			var seoul_category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];
			var seoul_category_val = [1, 2, 3, 4, 5];
			text = seoul_category;
			val = seoul_category_val;
		} else if(pbig == "경기도"){
			$("#bigCategory option:eq(2)").prop("selected", true);
			var gyeonggi_category = ["화성시", "수원시", "오산시", "남양주시", "광주시"];
			var gyeonggi_category_val = [6, 7, 8, 9, 10];
			text = gyeonggi_category;
			val = gyeonggi_category_val;
		}
		
		for (x in val){
			var opt = document.createElement("option");
			opt.value = val[x];
			opt.innerHTML = text[x];
			target.appendChild(opt);
		}
		
		$("#smallCategory").val(${post.psmallc_pk}).prop("selected", true);
	</script>
	
	<script>
		$(document).ready(function(){
			$("#bigCategory").change(function(){
				var seoul_category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];
				var seoul_category_val = [1, 2, 3, 4, 5];
				var gyeonggi_category = ["화성시", "수원시", "오산시", "남양주시", "광주시"];
				var gyeonggi_category_val = [6, 7, 8, 9, 10];
				var target = document.getElementById("smallCategory");
				var basic_category = "시/군/구";
				var basic_category_val = 0;
				
				var category1 = $("#bigCategory").val(); 
				
				var val;
				var text;
				
				if(category1 == 1){
					text = seoul_category;
					val = seoul_category_val;
				}else if(category1 == 2){
					text = gyeonggi_category;
					val = gyeonggi_category_val;
				}else{
					text = basic_category;
					val = basic_category_val;
				}
				
				$("#smallCategory").empty();
				
				if(category1 >= 1){
					for (x in val){
						var opt = document.createElement("option");
						opt.value = val[x];
						opt.innerHTML = text[x];
						target.appendChild(opt);
					}
				}else{
					var opt = document.createElement("option");
					opt.value = val;
					opt.innerHTML = text;
					target.appendChild(opt);
				}
			});
		});
	</script>

</body>

</html>
