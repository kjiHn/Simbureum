<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../model/topBar1.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style type="text/css">
.borderMain {
	padding: 20px;
	width: 600px;
	height: 500px;
	background: rgba(155, 89, 182, 0.2);
	position: absolute;
	top: 100%;
	left: 35%;
	box-shadow: 0 15px 20px rgb(0 0 0 / 20%);
	border-radius: 5px;
}

.subTitle {
	margin-bottom: 30px;
	font-size: 24px;
}

.subTitle_box {
	margin-left: 20px;
}

.headerName {
	font-size: 40px;
	font-weight: bold;
}

.headerNameSize {
	text-align: center;
	padding: 10px;
}

.fontcolor {
	color: black;
	font-weight: bold;
}

.input_detail {
	display: inline;
}

.input_main {
	width: 300px;
	outline: none;
    height: 40px;
    padding: 10px;
    box-sizing: border-box;
    background: transparent;
    font-size: 18px;
    border: none;
    color: #fff;
    border-bottom: 1px solid #fff;
}

.input_p {
	margin-right: 20px;
	
}
.input_box{
margin-bottom: 20px;
padding: 10px;
}

.input_box_all{

	padding: 20px;
	margin-left: 40px;


}

#name{
	margin-right: 40px;

}

#btn{
text-align: center;

}

.borders-btn:hover {
	cursor: pointer;
	background-color: #da6bff;
	color:#ffffff;
}
</style>
</head>
<body>
	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="borderMain">
						<div class="headerNameSize">
							<p class="headerName fontcolor">해줘~ 할게!</p>
						</div>
						<div class="subTitle_box">
							<p class="fontcolor subTitle">아이디 찾기</p>
						</div>
						<form id = "submitForm" action="" method="post">
						<div class = "input_box_all">
							<div class="input_name_box input_box">
								<span class="fontcolor input_p" id="name">이름 :</span>
								<div class="input_detail">
									<input type="text" name="mb_name" id="name_Find" class="input_main"
										placeholder=" 이름을 입력해주세여">
								</div>
							</div>
							<div class="input_email_box input_box">
								<span class="fontcolor input_p">이메일 :</span>
								<div class="input_detail">
									<input type="text" name="mb_emaile" id="emailFind" class="input_main"
										placeholder=" 이메일을 입력해 주세여">
								</div>
							</div>
						</div>
						</form>
						<div>
							<div id="btn">
								<button id="nextBtn"
									class="borders-btn">아이디 찾기</button>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	
	<script type="text/javascript">
	
	 
	 
	 $("#nextBtn").click(function() {
		 event.preventDefault();
		 
		 var mb_name = $("#name_Find").val();
		 var mb_emaile = $("#emailFind").val();
		 var allData = {"mb_name":mb_name , "mb_emaile":mb_emaile};
		 $.ajax({
				url :'/user/checkIdEmail',
				type : 'get',
				data:allData,
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					if (data == 1) {		
						 alert("이메일로 아이디를 전송하였습니다."+
						 "확인하여 로그인 해주세요.");
						$("#submitForm").submit();							
						} else {
							alert("이메일이 존재하지 않거나 틀리셨습니다");	
						}
					}, error : function() {
							console.log("실패");
					}	 
		 }); 
	 });
	</script>


</body>
</html>