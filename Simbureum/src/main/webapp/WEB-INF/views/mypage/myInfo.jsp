<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${sessionScope.mid ne null }">
<%@ include file="../model/topBar_login.jsp"%>
</c:if>
<c:if test="${sessionScope.mid eq null }">
<%@ include file="../model/topBar1.jsp"%>
</c:if>


<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>해줘~ 할게</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="#">
<link rel="shortcut icon" type="image/x-icon"
	href="view/assets/img/logo/loder1.jpg">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
td {
	text-align: left;
	padding: 15px;
	width: 500px;
	word-break: break-all;
}

th {
	padding: 5px;
	padding-left: 30px;
	width: 150px;
	text-align: right;
	border-right: 6px solid #e3c4ff;
}

#btn_up {
	padding: 10px 24px;
	position: absolute;
}

#btn_del {
	padding: 10px 34px;
	margin-left: 200px;
	position: absolute;
}

.col-lg-8 {
	margin-left: 70px;
	width: 100%;
}

.modal {
	position: absolute;
	width: 100%;
	height: 100%;
	background: rgba(255, 255, 255, 0.8);
	top: 0;
	left: 0;
	display: none;
}

.modal_content {
	width: 400px;
	height: 300px;
	background: #E0E0E0;
	border-radius: 10px;
	position: relative;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -200px;
	text-align: center;
	box-sizing: border-box;
	padding: 74px 0;
	line-height: 23px;
}
div i{
    position: absolute;
    left: 80%;
    bottom:56%;
    color: black;
}
</style>

</head>
<body>



	<section class="blog_area single-post-area section-padding" id = "sec" style="padding-top: 175px;">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						<div class="col-lg-8 posts-list"
							style="padding: 30px 50px; height: 600px; border: 4px solid #e3c4ff;">
							<br> <br>
							<h1>내정보</h1>
							<br> <br>
							<table style="text-align: center; width: 400px; align: center;">
								<thead>

									<tr>
										<th>아이디</th>
										<td><c:out value=" ${mb_info.mb_id }"></c:out></td>
									</tr>
									<tr>
										<th>이메일</th>
										<td><c:out value=" ${mb_info.mb_emaile}"></c:out></td>
									</tr>

									<tr>
										<th>가입일</th>
										<td><fmt:formatDate value="${mb_info.mb_date}"
												pattern="yyyy.MM.dd" /></td>
									</tr>
								</thead>
							</table>
							<br> <br> <br>
							<div class="form-group mt-3" style="margin-left: 20px;">
								<button class="bigBtn" id="btn_up">회원정보
									변경</button>
								<a href="/user/mbDelete?mb_id=${mb_info.mb_id }"><button
										class="bigBtn" id="btn_del">회원
										탈퇴</button></a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<div class="modal" id="modal">
		<div class="modal_content" title="클릭하면 창이 닫힙니다.">
			<h2>비밀번호 확인</h2> 
			<label
				style="font-weight: bold; font-size: 20px; margin-right: 15px;">비밀번호:</label>
			<input type="password" name="pswdCheck" placeholder="비밀번호 입력"
				class="single-input" style="display: inline; width: 50%;" id="inputPswd">
				<i class="fa fa-eye fa-lg"></i>
				<p class="validation-check" id="join_pswd_error"></p>
			<button id="goUpdate" class="smallBtn"
				style="height: 40px; padding: 10px; margin-top: 10px; width: 100px;">확인</button>
			<button id="close" class="smallBtn"
				style="height: 40px; padding: 10px; margin-top: 10px; width: 100px;">닫기</button>
		</div>
	</div>

<script type="text/javascript">

$(document).ready(function(){
    $('.modal_content i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa fa-eye-slash fa-lg")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa fa-eye fa-lg")
            .prev('input').attr('type','password');
        }
    });
});

</script>



	<script type="text/javascript">
$("#btn_up").click(function() {
	$("#modal").fadeIn();	
});

$("#close").click(function() {
	$("#modal").fadeOut();	
});


$("#goUpdate").click(function() {
	var pswd = $("#inputPswd").val();
	var mb_id = "${mb_info.mb_id}";
	var allData = {"mb_pswd":pswd , "mb_id":mb_id};
	$.ajax({
		type: "POST", //요청 메소드 방식
		url:"/user/mbmatching",
		data:allData,
		dataType:"text", //서버가 요청 URL을 통해서 응답하는 내용의 타입
		success : function(data){
			if (data == 1) {
				$(location).attr("href", "/user/mbUpdate?mb_id=${mb_info.mb_id }");		
			}else if(data == 0) {
				$("#join_pswd_error").text("비밀번호가 맞지 않습니다.");
				$("#join_pswd_error").css("color","red");
			}
		},
		error : function(data){
			alert(data);
		}
	});
	
});



</script>



<%@ include file="../model/footer.jsp"%>

<script type="text/javascript">
$(document).ready(function() {
	
$("footer").css("position","fixed");
$("footer").css("bottom","0px");
});


</script>
</body>
</html>
