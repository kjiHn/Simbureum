<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>해줘~할게</title>
<link rel="stylesheet" href="/resources/css5/style.css">
 <link rel="shortcut icon" type="image/x-icon" href="/resources/view/assets/img/logo/loder1.jpg">
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

#container #contents{
	width: 450px;
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

.IdCheck{
	padding: 10px;
	border-radius: 5px 5px 5px 5px;
	background-color: #ffffff;
	border: 1px solid black;


}

select { 
		width: 45%;
		padding: 12px 35px 12px 12px;
		line-height: 2	;
		border: #dddddd solid 1px;
		border-radius: 5px;
		
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
					<div class="pct">
						<div class="poptents">
							<form id="join_form"
								action="/user/insertMember" method="post">
								<!-- 회원 정보 입력 -->
								<div class="member-input">
									<ul class="list">
										<li><strong class="tit requied">이름</strong>
											<p class="info">필수입력정보</p>
											<div class="input del">
												<input type="text" class="cleanValMsg" id="join_mbr_nm"
													name="mb_name" value="" maxlength="10"
													placeholder="이름을 입력해주세요.">
											</div>
											<p class="validation-check" id="join_mbr_nm_error"></p></li>
										<li><strong class="tit requied">아이디</strong>
											<div class="input del">
												<input type="text" id="join_login_id"
													class="required_join_input cleanValMsg" name="mb_id"
													placeholder="영어 숫자 8자 이상 입력해주세요." maxlength="40" value=""
													style="ime-mode: disabled;">
											</div>
											<p class="validation-check" id="join_login_id_error"></p></li>
										<li><strong class="tit requied">비밀번호</strong>
											<div class="input del">
												<input type="password" name="mb_pswd" id="join_pswd"
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
										<li><strong class="tit requied">이메일</strong>
											<div class="input del">
												<input type="text" id="join_email_id" 
													class="required_join_input cleanValMsg"
													placeholder="이메일을 입력해주세요." maxlength="40" value=""
													style="display: inline; width: 45%;">
												<span>@</span>	
												<select id="emialSelect">
													<option value="1">==선택하세요==</option>
													<option value="naver.com">naver.com</option>
													<option value="gmail.com">gmail.com</option>
													<option value="nate.com">nate.com</option>
													<option value="daum.net">daum.net</option>
													<option value="hanmail.net">hanmail.net</option>
													<option value="2">직접입력</option>
												</select>
											<input type="hidden" value="" name="mb_emaile" id="emailFull">
											<input class="validation-check" type="text" style="display: none; margin-top: 5px; width: 50%;" id="value2">
											<p class="validation-check" id="join_email_error"></p></li>
											<button id = "emailButton" class ="emailButton">인증번호보내기</button>
											</div>
										<li><strong class="tit requied">인증번호확인</strong>
											
											<div class="input del">
												<input type="text" id="join_emailCheck"
													class="required_join_input cleanValMsg"
													placeholder="인증번호를 입력해주세요." maxlength="20" value="" disabled="disabled">
											</div>
											<p id="join_email_check_error" class="validation-check"></p></li>

										<li>
											<strong class="tit requied">휴대폰 번호</strong>
											<div class="input del">
												<!--  -->
												<input type="number" class="cleanValMsg" id="join_mobile" title="휴대폰번호" value="" maxlength="13"  placeholder="-없이 번호만 입력해주세요">
												<input type="hidden"  id="join_mobile2" name="mb_pnb" title="휴대폰번호" value="">
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
							<a href="javascript:test();" id="nextBtn"
								class="btn lg a" data-content="" data-url="">다음</a>
						</div>
					</div> 
				</div>
			</div>
		</div>
		</main>
	</div>
	<script type="text/javascript">
		var autoHypenPhone = function(str) {
			str = str.replace(/[^0-9.]/g, '');
			var tem = '';
			if (str.length < 4) {
				return str;
			}else if (str.length < 7) {
				tem += str.substr(0,3);
				tem += '-';
				tem += str.substr(3);
				return tem;
			}else if (str.length < 11) {
				tem += str.substr(0,3);
				tem += '-';
				tem +=str.substr(3,3);
				tem += '-';
				tem +=str.substr(6);
				return tem;
			}
			else{
				tem += str.substr(0,3);
				tem += '-';
				tem +=str.substr(3,4);
				tem += '-';
				tem +=str.substr(7);
				return tem;
			}
			return str;
		}
		
		var phoneNum = document.getElementById('join_mobile');
		var phoneNum2 = document.getElementById('join_mobile2');
		phoneNum.onkeyup = function() {
			console.log(this.value);
			phoneNum2.value = autoHypenPhone(this.value);
		}
	
	
	</script>
	
	<script type="text/javascript">
	function Idcheck() {
		event.preventDefault();
		var Id = $("#join_login_id").val();	
	}
	
	const letterCheck = {
		    'checkNum': /[0-9]/,
		    'checkEngA': /[A-Z]/,
		    'checkEnga': /[a-z]/,
		    'checkEngAll': /[a-zA-Z]/,
		    'checkSpc': /[~!@#$%^&*()_+|<>?:{}]/,
		    'checkKor': /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/
		}
	
	const idCondition = {
		    'minLength': 8, // 8자리 이상
		    'maxLength': 20, // 20자리 이하
		    'withNum': true, // 숫자 포함
		    'withEngA': false, // 영문 대문자 미포함
		    'withEnga': true, // 영문 소문자 포함
		    'withSpc': false, // 특수문자 미포함
		    'withKor': false, // 한글 미포함
		}

		// ps의 조건
		const psCondition = {
		    'minLength': 8,
		    'maxLength': 20,
		    'withNum': true,
		    'withEngA': false,
		    'withEnga': true,
		    'withSpc': true,
		    'withKor': false,
		}
	
	const conditionMessage = {
		    'minLength': '자리 이상',
		    'maxLength': '자리 이하',
		    'withNum': '숫자 포함',
		    'withNoNum': '숫자 미포함',
		    'withEngA': '영문 대문자 포함',
		    'withNoEngA': '영문 대문자 미포함',
		    'withEnga': '영문 소문자 포함',
		    'withNoEnga': '영문 소문자 미포함',
		    'withSpc': '특수문자 포함',
		    'withNoSpc': '특수문자 미포함',
		    'withKor': '한글 포함',
		    'withNoKor': '한글 미포함'
		}
	var code = ""; 
	var idJ = /^[a-zA-Z0-9]{4,16}$/;
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var regExp1 =/\b((?=[a-z0-9-]{1,63}\.)(xn--)?[a-z0-9]+(-[a-z0-9]+)*\.)+[a-z]{2,63}\b/;
	var phoneExp = /^\d{3}-\d{3,4}-\d{4}$/;
	
/* 	function psConditionAlert() {
	    checkConditionValue("#join_login_id", psCondition) ;
	}
	document.querySelector("#join_login_id").addEventListener('blur', psConditionAlert); */
	
	$( document ).ready(function() {
		$("#join_login_id").blur(function() {
			var mb_id = $("#join_login_id").val();
			
			$.ajax({
				url : '/user/idCheck?mb_id='+ mb_id,
				type : 'get',
				 datatype: 'json',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#join_login_id_error").text("사용중인 아이디입니다 :p");
							$("#join_login_id_error").css("color", "red");
							$("#activeBtn").attr("display", "none");
							$("#inactiveBtn").attr("display", "");
						} else {
							
							if(idJ.test(mb_id)){
								// 0 : 아이디 길이 / 문자열 검사
								$("#join_login_id_error").text("사용가능한 아이디 입니다");
								$("#join_login_id_error").css("color", "blue");
								$("#activeBtn").attr("display", "");
								$("#inactiveBtn").attr("display", "none");
					
							} else if(mb_id == ""){
								
								$('#join_login_id_error').text('아이디를 입력해주세요 :)');
								$('#join_login_id_error').css('color', 'red');
								$("#reg_submit").attr("disabled", true);				
								
							} else {
								
								$('#join_login_id_error').text("아이디는 소문자와 숫자 4자리이상 16자 이하 가능합니다 :) :)");
								$('#join_login_id_error').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
							
						}
					}, error : function() {
							console.log("실패");
					}
				});
		});
		
	 	$("#join_email_id").blur(function() {
			var email = $("#join_email_id").val();
			
			if (email=="") {
				$("#join_email_error").text("이메일을 입력해주세여");
				$("#join_email_error").css("color","red");
			}else{
				$("#join_email_error").text("");
			}
			
		}); 
		
		
		
		/*
		$("#join_pswd").blur(function() {
			var pws = $("#join_pswd").val();
			
			
			
			
			if (pws=="") {
				$("#join_pswd_error").text("비밀번호를 입력해주세여");
				$("#join_pswd_error").css("color","red");
			}else if(!idJ2.test(pws)){
				$("#join_pswd_error").text("비밀번호는 영어와 숫자 8자리이상 16자 이하 가능합니다 :) :)");
				$("#join_pswd_error").css("color","red");
			}else{
				$("#join_pswd_error").text("");
			}
			
		});
		
		
		*/
		
		
		$("#join_pswd_check").blur(function() {
			var pwsCheck = $("#join_pswd_check").val();
			var pws = $("#join_pswd").val();
			
			
			if (pwsCheck == "") {
				$("#join_pswd_check_error").text("비밀번호를 입려해주세여");
				$("#join_pswd_check_error").css("color","red");
			}else{
				if (pwsCheck == pws) {
					$("#join_pswd_check_error").text("비밀번호가 일치합니다");
					$("#join_pswd_check_error").css("color","blue");
					}else if (pwsCheck != pws) {
						$("#join_pswd_check_error").text("비밀번호가 일치하지 않습니다");
						$("#join_pswd_check_error").css("color","red");
					}
			}
			
			
		});
		
		$("#emialSelect").change(function() {
			if ($("#join_email_id").val() != "") {
				
				if ($(this).val() != 2) {
					$("#value2").css("display","none");
				const emailvalue = $("#join_email_id").val() + "@" + $(this).val();
				$("#emailFull").val(emailvalue);
				}else if($(this).val() == 2){
					$("#value2").css("display","");
					$("#value2").on("keyup",function(event){
						const emailvalue = $("#join_email_id").val() + "@" + $("#value2").val();
						if (!regExp1.test(emailvalue)) {
							$("#join_email_error").text("이메일을 입력해주세여");
							$("#join_email_error").css("color","red");
							
						}else{
							$("#join_email_error").text("");
						}
					});
				}
				
			}else{			
				$("#join_email_error").text("이메일을 입력해주세여");
				$("#join_email_error").css("color","red");
				$(this).val("1");
			}
			
		});
		

		
		$("#emailButton").click(function() {
			event.preventDefault();
			var cehckBox  = $("#join_emailCheck");
			 var email = $("#emailFull").val(); //입력한 이메일
			 $.ajax({
				type:"GET",
				url:"/user/mailDupleCheck?mb_emaile=" + email,
				success:function(data){
					if (data == "1") {
						alert("사용중인 이메일 입니다 다시 한번 입력해 주세여");
						$("#join_email_id").val("");
						$("#join_email_id").focus();
						
					}else{
						
						 $.ajax({
						        
						        type:"GET",
						        url:"/user/mailCheck?email=" + email,
						        success:function(data){
						        	//console.log("data : " + data);
						        	cehckBox.attr("disabled",false);
						        	code = data;
						        }
						                
						    });
					}			
				} 
			 });
		});
	});
	
	
	$("#join_emailCheck").blur(function(){
	    
	    var inputCode = $("#join_emailCheck").val();        // 입력코드    
	    var checkResult = $("#join_email_check_error");    // 비교 결과     
	    
	    if(inputCode == code){                            // 일치할 경우
	        checkResult.html("인증번호가 일치합니다.");
	        checkResult.attr("class", "correct");
	        
	        
	    } else {                                            // 일치하지 않을 경우
	        checkResult.html("인증번호를 다시 확인해주세요.");
	        checkResult.attr("class", "incorrect");
	        $("#join_emailCheck").focus();
	    }    
	        
	});
	
	
	$("#join_mobile").blur(function() {
		
		var name = $("#join_mbr_nm").val();
		var id = $("#join_login_id").val();
		var pwsCheck = $("#join_pswd_check").val();
		var pws = $("#join_pswd").val();
		var email = $("#join_email_id").val();
		var join_emailCheck = $("#join_emailCheck").val();
		var phone = $("#join_mobile").val();
		
			if (name=="") {
				$("#join_mobile_error").text("이름을 채워주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_mbr_nm").focus();
				
			}else if(id ==""){
				$("#join_mobile_error").text("아이디를 채워주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_login_id").focus();
			}else if(pws ==""){
				$("#join_mobile_error").text("비밀번호를 채워주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_pswd").focus();
			}
			else if(pwsCheck ==""){
				$("#join_mobile_error").text("비밀번호확인을 해주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_pswd_check").focus();
			}
			else if(email ==""){
				$("#join_mobile_error").text("이메일을 채워주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_email_id").focus();
			}
			else if(join_emailCheck ==""){
				$("#join_mobile_error").text("이메일인증을 해주세여")
				$("#join_mobile_error").css("color","red");
				$("#join_emailCheck").focus();
			}else{
			$("#join_mobile_error").text("")
			$("#inactiveBtn").css("display","none");
			$("#activeBtn").css("display","");
		}
		
		
	});
	
	
	function insertMember() {
		$("#join_form").submit();
	}
	
	
	function checkConditionValue(inputCssSelector, conditionObj){
	    // 알림메세지에 넣을 조건들을 넣을 배열
	    let conditionAlert = [];
	  
	  	// input value의 표현식이 너무 길어서 변수로 할당
	    let idInput = document.querySelector(inputCssSelector).value;
	  
	  	
	    if (!(idInput.length >= conditionObj.minLength)) {
	        conditionAlert.push(`${conditionObj.minLength}` + conditionMessage.minLength);
	    } 
	  	
	    if (!(idInput.length <= conditionObj.maxLength)) {
	        conditionAlert.push(`${conditionObj.maxLength}` + conditionMessage.maxLength);
	    }
	    if (letterCheck.checkEngA.test(idInput) !== conditionObj.withEngA) {
	        if (conditionObj.withEngA) {
	            conditionAlert.push(conditionMessage.withEngA);
	        } else {
	            conditionAlert.push(conditionMessage.withNoEngA);
	        }
	    }
	    if (letterCheck.checkSpc.test(idInput) !== conditionObj.withSpc) {
	        if (conditionObj.withSpc) {
	            conditionAlert.push(conditionMessage.withSpc);
	        } else {
	            conditionAlert.push(conditionMessage.withNoSpc);
	        }
	    }
	    if (letterCheck.checkKor.test(idInput) !== conditionObj.withKor) {
	        if (conditionObj.withKor) {
	            conditionAlert.push(conditionMessage.withKor);
	        } else {
	            conditionAlert.push(conditionMessage.withNoKor);
	        }
	    }
	    if (letterCheck.checkEnga.test(idInput) !== conditionObj.withEnga) {
	        if (conditionObj.withEnga) {
	            conditionAlert.push(conditionMessage.withEnga);
	        } else {
	            conditionAlert.push(conditionMessage.withEnga);
	        }
	    }
	    if (letterCheck.checkNum.test(idInput) !== conditionObj.withNum) {
	        if (conditionObj.withNum) {
	            conditionAlert.push(conditionMessage.withNum);
	        } else {
	            conditionAlert.push(conditionMessage.withNoNum);
	        }
	    }
	  	// conditionAlert에 아무 것도 들어가 있지 않는다면 모든 조건이 충족한 것!
	    // 성취감을 느끼며 다음 메세지를 띄운다.. '제출되었습니다아......'
	    if (conditionAlert.length === 0) {
	    	$("#join_pswd_error").text('사용가능한 비밀번호입니다.');
	    	$("#join_pswd_error").css("color","blue");
	    } else {
	  	// 아니면 conditionAlert의 모든 엘리먼트들을 join해서 내보낸다.
	        $("#join_pswd_error").text('실패:' + conditionAlert.join(', '));
	        $("#join_pswd_error").css("color","red");
	    }
	    
	}
	function psConditionAlert() {
	    checkConditionValue("#join_pswd", psCondition) ;
	}
	document.querySelector("#join_pswd").addEventListener('blur', psConditionAlert);
	
	</script>
	
	<script type="text/javascript">
		function test() {
			 var email = $("#emailFull").val(); //입력한 이메일
			 $.ajax({
					type:"GET",
					url:"/user/mailFrc_WthCheck?mb_emaile=" + email,
					success:function(data){
						if (data == "1") {
							alert("강제 탈퇴 당하셔서 가입을 하실수 없습니다");
						}else{
							 insertMember();
						}			
					} 
				 });
		}
	
	</script>
</body>
</html>