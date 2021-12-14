<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해줘~할게</title>
<link rel="stylesheet" href="/resources/css5/style.css">
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/view/assets/img/logo/loder1.jpg">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
body {
	background-color: #e3c4ff;
}

#mainHeader {
	text-align: center;
	font-size: 50px;
	color: #2d0a31;
}

#container #contents {
	width: 400px;
	position: absolute;
	right: 42%;
}

.emailButton {
	padding: 10px;
	border-radius: 5px 5px 5px 5px;
	background-color: #ffffff;
	border: 1px solid black;
}

.emailButton:hover {
	background-color: #b05fdd;
}

.textBox {
	overflow-y: auto;
	padding: 46px 30px;
	border: 1px solid #dcdcdc;
	font-size: 16px;
	color: #6c6c6c;
	width: 600px;
	line-height:normal;
}

.textHeader,.textNum{
	font-size: 16px;
	font-weight: bold;
	color: black;

}

.textNum{

	margin-top: 20px;
	margin-bottom: 20px;
	

}

.textContent{
	margin-bottom: 20px;

}

#checkTest{
	margin-bottom: 60px;
	margin-top: 20px;
	


}
#checkMust{
	width: 20px; /*Desired width*/

	height: 20px; /*Desired height*/
	
	cursor: pointer;
	
	margin-right: 20px;	
}

.checkspan{
	font-size: 16px;


}

.pbt{
	position: absolute;
	left: 50%;
	width: 200px;
	

}

.h2Header{
	font-size: 30px;
	font-weight: bold;

}

</style>
</head>
<body>
	<div class="wrap" id="wrap">
		<section id="mainHeader">
		<h1><a href="/">해줘~할게!</a></h1>
		</section>
		<!-- 바디 - 여기위로 템플릿 -->
		<main class="container page login srch" id="container">
		<div class="inr" style="min-height: 354px;">
			<!-- 본문 -->
			<div class="contents" id="contents">
				<div class="pc-tit">
					<h2>회원가입</h2>
				</div>
				<div class="fake-pop">
					<h2 class = "h2Header">개인정보 수집 및 이용 약관</h2>
					<div class="pct">
						<div class="poptents">
							<form id="join_form"
								action="" method="post">
								<!-- 회원 정보 입력 -->
								<div class="member-input">
									<div class="textBox">
										<h5 class="textHeader">「해줘~할게!」는 「개인정보보호법」에 따라 아래와 같이
											개인정보의 수집, 이용에 관하여 귀하의 동의를 얻고자 합니다.</h5>
										<h5 class="textHeader"> 「해줘~할게!」
											는 이용자의 사전 동의 없이는 이용자의 개인정보를 함부로 공개하지 않으며,
											최소한의 개인정보만 수집합니다. 수집된 정보는 아래와 같이
											이용하고 있습니다. 이용자가 제공한 모든 정보는 아래의 목적에 필요한 용도
											 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 이를 알리고 동의를 구할 것입니다.</h5>

										<h5 class="textNum">1. 개인정보의 수집 이용 목적</h5>

										<p class ="textTitle">O 회원 가입 및 관리</p> 
										<p class ="textContent">- 회원가입, 회원제 서비스 이용, 개인식별, 부정이용방지 등의 목적으로
											개인정보를 처리합니다.</p>

										<p class ="textTitle">O 홈페이지 서비스 제공</p> 
										<p class ="textContent">- 심부름꾼과의 매칭 및 서비스 관련 신고 처리 등을 목적으로 개인정보를
											처리합니다.</p>

										<h5 class="textNum">2. 수집항목</h5>

										<p class ="textContent">성명, 이메일, 휴대폰 번호</p>

										<h5 class = "textNum">3. 개인정보의 보유 및 이용 기간</h5>

										<p class ="textContent">「해줘~할게!」은 정보주체의 삭제요청 또는 회원 탈퇴 시 지체 없이 파기합니다. 단, 회원 탈퇴할
											경우 심부름이 완료된 공고 및 리뷰에 관한 정보는 삭제되지 않습니다.</p>

										<h5 class = "textNum">4. 개인정보 수집 및 이용에 대한 동의거부권 및 불이익에 대한 안내</h5>

										<h5 class = "textHeader">이용자는 수집하는 개인정보에 대해 동의를 거부할 권리가 있으며, 동의 거부 시 회원가입이
											불가함을 알려드립니다.</h5>
									</div>
									<div id = "checkTest">
									<input type="checkbox" name="mustCheck" value="mustCheck"
										id="checkMust" onclick="activeBtn(this)"> <span class = "checkspan">해당 약관을 모두 확인하였으며, 이에
										동의합니다.</span>
									</div>
								</div>
								<!-- // 회원 정보 입력 -->
							</form>
						</div>
					</div>
					<div class="pbt pull">
					
						<div class="bts" id="inactiveBtn" style="display: ;">
							<a href="javascript:;" id="nextBtn" class="btn lg gray"
								data-content="" data-url="">다음</a>
						</div>
						<div class="bts" id="activeBtn" style="display:none ;">
							<a href="javascript:goNextPage();" id="nextBtn"
								class="btn lg a" data-content="" data-url="">다음</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		</main>
	</div>
	
	<script type="text/javascript">
	
	
	function activeBtn(checked) {
		if ( $("#checkMust").prop("checked")) {
			  $("#inactiveBtn").css("display","none"); 
			  $("#activeBtn").css("display","");
		}else{
			  $("#inactiveBtn").css("display",""); 
			  $("#activeBtn").css("display","none");
		}
	}
	

	
	
	$( document ).ready(function() {
		$("#activeBtn").click(function() {
			$(location).attr("href", "/user/join");
		});
	});
	
	
	</script>

</body>
</html>