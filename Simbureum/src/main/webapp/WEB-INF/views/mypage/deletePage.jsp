<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="shortcut icon" type="image/x-icon"
	href="view/assets/img/logo/loder1.jpg">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">
.header {
	margin-bottom: 15px;
}

#btn_up {
	padding: 10px 24px;
	position: absolute;
}

.col-lg-8 {
	margin-left: 70px;
}

.posts-list {
	line-height: 17px;
	font-size: 15px;
}

.pContent {
	padding: 10px;
	font-size: 18px;
	font-weight: bold;
	color: black;
}

.checkContent {
	
}

#checkMust {
	transform: scale(1.5);
	margin-right: 10px;
}

.modal{
	position: absolute;
	width: 100%;height: 100%;
	background: rgba(255,255,255,0.8);
	top: 0;left: 0;
	display: none;
}


.modal_content{
  width:400px; height:200px;
  background:#E0E0E0; border-radius:10px;
  position:relative; top:50%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px;
}


div i{
    position: absolute;
    left: 60%;
    top: 50%;
    color: black;
}
</style>

</head>
<body>
	<section class="blog_area single-post-area section-padding" style="padding-top: 175px;">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						<br> <br> <br> <br>
						<h1 class="header">탈퇴 안내</h1>
						<div class="col-lg-8 posts-list"
							style="padding: 30px 50px; height: 600px; max-width: 100%;">
								<p class="pContent">사용하고 계신 아이디(${mb_id})는 탈퇴할 경우 복구가 불가능합니다.</p>

								<p class="pContent">탈퇴할 경우 회원정보와 심부름꾼이 지원하지 않은 게시글이 삭제됩니다.
								<p>
								<p class="pContent">탈퇴 후에도 심부름이 완료된 게시글 및 리뷰에 관한 정보는 삭제되지
									않습니다.</p>
								<div class="checkContent">

									<div style="padding: 20px; margin-bottom: 15px;">
										<input type="checkbox" name="check" id=checkMust><label
											for="checkMust">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label>
									</div>
									<div class="main" style="display: block;">
										<label
											style="font-weight: bold; font-size: 20px; margin-right: 15px;">비밀번호:</label>
										<input type="password" name="pswdCheck" placeholder="비밀번호를 입력해주세요."
											class="single-input" style="display: inline; width: 50%;"
											disabled="disabled" id ="inputPswd">
										<i class="fa fa-eye fa-lg"></i>
									</div>
								</div>
								<br> <br> <br>
								<div class="form-group mt-3" style="margin-left: 33%;">
									<button class="bigBtn" id="btn_up">회원탈퇴</button>
								</div>
								<input type="hidden" value="${mb_id}" name="mb_id" id = "mb_id"/>
						</div>
					</div>
				</div>

	
			</div>
		</div>
	</section>
	
	<div class="modal" id="modal">
		<div class="modal_content"
		title="클릭하면 창이 닫힙니다.">
		회원탈퇴가 완료되었습니다.<br>
		그동안 이용해 주셔서 감사합니다.<br>
		<button id="deleteMb" class="button  boxed-btn" style="height: 40px; padding: 10px; margin-top: 10px; width: 100px;">창닫기</button>
		</div>
	</div>
	<div class="modal" id="nomodal">
		<div class="modal_content"
		title="클릭하면 창이 닫힙니다.">
		회원탈퇴가 실패하였습니다<br>
		다시 한번 확인 부탁드립니다<br>
		<button id="nodeleteMb" class="button  boxed-btn" style="height: 40px; padding: 10px; margin-top: 10px; width: 100px;">창닫기</button>
		</div>
	</div>
	
	
	<script type="text/javascript">

$(document).ready(function(){
    $('.main i').on('click',function(){
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
		$("#checkMust").click(function() {
	
			if ($("#checkMust").prop("checked")) {
				$("#inputPswd").attr("disabled",false);
			}
	
		});
	</script>
	<script type="text/javascript">
	
		$(function() {
			$("#btn_up").click(function() {
				event.preventDefault();
				var pswd = $("#inputPswd").val();
				var id = $("#mb_id").val();
				var allData = {"mb_id": id , "mb_pswd":pswd};
				$.ajax({
					type: "POST", //요청 메소드 방식
					url:"/user/mbDelete",
					data:allData,
					dataType:"text", //서버가 요청 URL을 통해서 응답하는 내용의 타입
					success : function(data){
						if (data == 1) {
							$("#modal").fadeIn();
						}else if(data == 0) {
							$("#nomodal").fadeIn();
						}
					},
					error : function(data){
						alert(data);
					}
				});
				
				
				
				
				
			});
			$("#deleteMb").click(function() {
				$(location).attr("href", "/");
				
			});
			$("#nodeleteMb").click(function() {
				$("#nomodal").fadeOut();
				
			});
		});
	 
	</script>


<%@ include file="../model/footer.jsp"%>
</body>
</html>
