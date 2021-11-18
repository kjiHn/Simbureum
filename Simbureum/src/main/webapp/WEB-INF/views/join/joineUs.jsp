<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해줘~할게</title>
<link rel="stylesheet" href="/resources/css5/style.css">
 <link rel="shortcut icon" type="image/x-icon" href="/resources/view/assets/img/favicon.ico">
<style type="text/css">
body {
	background-color: #e3c4ff;
}

#mainHeader {
	text-align: center;
	font-size: 50px;
	color: #2d0a31;
}

#container #contents{
	width: 400px;
	position: absolute;
	right: 39%;
}

.emailButton{
	padding: 10px;
	border-radius: 5px 5px 5px 5px;
	background-color: #ffffff;
	border: 1px solid black;
}

.emailButton:hover {
	background-color: #b05fdd;
}
</style>
</head>
<body>
	<div class="wrap" id="wrap">
	<section id="mainHeader">
	<h1>할게해줘</h1>
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
					<div class="pct">
						<div class="poptents">
							<form id="join_form"
								action="/AboutPet/Project/aboutPet/sign_up.do" method="post">
								<!-- 회원 정보 입력 -->
								<div class="member-input">
									<ul class="list">
										<li><strong class="tit requied">아이디</strong>
											<p class="info">필수입력정보</p>
											<div class="input del">
												<input type="text" id="join_login_id"
													class="required_join_input cleanValMsg" name="loginId"
													placeholder="6자 이상 입력해주세요." maxlength="40" value=""
													style="ime-mode: disabled;">
											</div>
											<p class="validation-check" id="join_login_id_error"></p></li>
										<li><strong class="tit requied">비밀번호</strong>
											<div class="input del">
												<input type="password" name="pswd" id="join_pswd"
													placeholder="영문, 숫자, 특수문자 포함 8자 이상" maxlength="15"
													autocomplete="new-password"
													class="required_join_input cleanValMsg ">
											</div>
											<p class="validation-check" id="join_pswd_error"></p></li>
										<li><strong class="tit requied">비밀번호 확인</strong>
											<div class="input del">
												<input type="password" id="join_pswd_check"
													placeholder="비밀번호를 다시 한번 입력해주세요." maxlength="15"
													autocomplete="new-password"
													class="required_join_input cleanValMsg">
											</div>
											<p class="validation-check" id="join_pswd_check_error"></p></li>
										<li><strong class="tit requied">이름</strong>
											<div class="input del">
												<input type="text" class="cleanValMsg" id="join_mbr_nm"
													name="mbrNm" value="" maxlength="10"
													placeholder="이름을 입력해주세요.">
											</div>
											<p class="validation-check" id="join_mbr_nm_error"></p></li>
										<li><strong class="tit requied">이메일</strong>
											<div class="input del">
												<input type="text" id="join_email_id" name="email"
													class="required_join_input cleanValMsg"
													placeholder="이메일을 입력해주세요." maxlength="40" value="">
												<br>
											<button class ="emailButton">인증번호보내기</button>
											</div>
											<p class="validation-check" id="join_email_error"></p></li>
										<li><strong class="tit requied">인증번호확인</strong>
											<div class="input del">
												<input type="text" id="join_nickname" name="nickNm"
													class="required_join_input cleanValMsg"
													placeholder="인증번호를 입력해주세요." maxlength="20" value="">
											</div>
											<p id="join_nickNm_error" class="validation-check"></p></li>

										<li>
											<strong class="tit requied">휴대폰 번호</strong>
											<div class="input del">
												<input type="number" class="cleanValMsg" id="join_mobile" name="mobile" title="휴대폰번호" value="" maxlength="20" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="-없이 번호만 입력해주세요">
											</div>
											<p class="validation-check" id="join_mobile_error"></p>
										</li>
									</ul>
								</div>
								<!-- // 회원 정보 입력 -->
							</form>
						</div>
					</div>
					<div class="pbt pull">
						<div class="bts" id="inactiveBtn">
							<a href="javascript:;" id="nextBtn" class="btn lg gray"
								data-content="" data-url="">다음</a>
						</div>
						<div class="bts" id="activeBtn" style="display: none;">
							<a href="javascript:insertMember();" id="nextBtn"
								class="btn lg a" data-content="" data-url="">다음</a>
						</div>
					</div>
					<form id="imgAppForm" style="display: none;"></form>
				</div>
			</div>

		</div>
		</main>
	</div>

	<!-- <div>
		<h4 style="text-align: center;">회원가입</h4>
		<section>
		<form name="login" action="index.html" method="post">
			아이디확인<br> <input type="text" name="user_ID" placeholder="아이디 입력">
			<input type="button" name="user_IDcheck" value="아이디 확인"> <br>
			비밀번호<br> <input type="password" name="user_PW1" value="123456"><br>
			비밀번호 재확인<br> <input type="password" name="user_PW2"
				value="123456"> <input type="button" name="user_PWcheck"
				value="비밀번호 재확인"> <br>
			<br> 이름<br> <input type="text" name="user_name" value="">
			<br> 이메일<br>
			<input type="email" name="user_email" placeholder="email@gmail.com">
			<button id="sendMail" name="sendMail" onclick="" value="인증번호 받기">인증번호
				받기</button>
			<br> <input type="text" name="certification"
				placeholder="인증번호를 입력하세요"> <input type="button"
				name="certification" value="확인"><br>
			<br> 휴대전화<br> <input type="text" name="user_phone"
				placeholder="010-****-****"> <br>
			<br> <input type="submit" name="" value="제출">

		</form>
		</section>
	</div> -->

</body>
</html>