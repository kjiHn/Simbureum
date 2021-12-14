<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar_login.jsp" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">

#centerBody{
  display: grid;
  place-items: center;
}

#centerCon{
  display: grid;
  place-items: center;
 
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

<title>심부름 올리기</title>

</head>
<body>
	<section class="blog_area single-post-area section-padding" id="centerBody">
	<div class="container" style="width: 500px; height:500px">
	
	<div class="col-lg-11 posts-list" id="centerCon">
	
		<h2 class="contact-title" align="center">심부름 작성</h2>
	
		<form method="POST" action="writePost" id="writeForm">
			<table>
				<tr>
					<th>제목 : </th>
					<td><input name="post_title" class="textinput" id="title" placeholder="제목 입력" /></td>
				</tr>
				<tr>
					<th>내용 : </th>
					<td><textarea name="post_con" class="content" id="content" placeholder="내용 입력"></textarea></td>
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
					<td><input name="post_dline" class="textinput" id="dline" placeholder="마감일 입력(ex.2021/01/01)" /></td>
				</tr>
				<tr>
					<th>심부름꾼 수 : </th>
					<td><input name="post_numof" class="textinput" id="numof" placeholder="심부름꾼 수 입력" /></td>
				</tr>
				<tr>
					<th>심부름 가격 : </th>
					<td><input name="post_price" class="textinput" id="price" placeholder="심부름 가격 입력"/></td>
				</tr>
			</table>
			<br><br>
			<div style="text-align: center">
				<input type="button" class="bigBtn" id="clickButton" value="완료">
			</div>
			
		</form>
	</div>
	</div>
	</section>
	
	<script type="text/javascript">
		$("#clickButton").on('click', function(){
			var title = $("#title").val();
			var content = $("#content").val();
			var loc = $("#bigCategory").val();
			var dline = $("#dline").val();
			var numof = $("#numof").val();
			var price = $("#price").val();
			var datatimeRegexp = /^([0-9]{4})\/(0?[1-9]|1[012])\/(0?[1-9]|[12][0-9]|3[01])$/;
			
			if(title == ''){
				alert("제목을 입력해주세요.");
			}else if(content == ''){
				alert("내용을 입력해주세요.");
			}else if(loc == 0){
				alert("위치를 선택해주세요.");
			}else if(dline == ''){
				alert("마감일을 입력해주세요.");
			}else if (!datatimeRegexp.test(dline)) {
		        alert("마감일은 yyyy-mm-dd 형식으로 입력해주세요.");
		    }else if(numof == ''){
				alert("심부름꾼 수를 입력해주세요.");
			}else if(price == ''){
				alert("심부름 가격을 입력해주세요.");
			}else{
				$("#writeForm").submit();
			}
		})
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
