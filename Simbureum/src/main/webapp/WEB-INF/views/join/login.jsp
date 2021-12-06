<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../model/topBar1.jsp" %>
<html class="no-js" lang="zxx">
<head>
<style type="text/css">
#submitButton{
	background: #F067FF;
    color: #fff;
    border: none;
    cursor: pointer;
    text-transform: capitalize;
    line-height: 1;
    font-size: 18px;
    font-weight: 700;
    border-radius: 20px;
    transition: .4s;
    outline: none;
    height: 40px;
    padding: 10px;
    box-sizing: border-box;
    width: 100%;

}


</style>
</head>
<body>
   
<main class="login-body">
    <!-- Login Admin -->
    <form id = "testForm"class="form-default" action="" method="POST">
        <div class="login-form"> 
            <h2>해줘~할게</h2> 
            
           <div> <!-- 일반, 관리자 체크 -->
                <input type="radio" name="chk_info" value="1" checked="checked">일반 회원    &nbsp;&nbsp;&nbsp;       
             	<input type="radio" name="chk_info" value="2" >관리자 
           </div>
            
            <div class="form-input">
                <label for="ID">ID</label>
                <input id="Id"  type="text" name="ID" placeholder="아이디를 입력해주세여">
            </div>
            <div class="form-input">
                <label for="password">Password</label>
                <input id="pswd" type="password" name="password" placeholder="Password" >
                <p id="login_error" class="validation-check"></p>
            </div>
            <div class="form-input pt-30">
                <!-- <input type="submit" name="submit" value="login" id ="submitButton"> -->
                 <button id ="submitButton" class="borders-btn">login</button> 
            </div>
            
             <!-- Forget id -->
            <a href="/user/findIdPage" class="forget">아이디 찾기</a> <!-- 변경해야함 -->
            <!-- Forget Password -->
            <a href="/user/findPswdPage" class="registration">비밀번호 찾기</a>
            <!-- join -->
            <a href="/user/join1" class="registration">회원가입</a>
        </div>
    </form>
    <!-- /end login form -->
</main>

<script type="text/javascript">
		$("#submitButton").click(function() {
			event.preventDefault();
			$("#login_error").text("");
			var id = $("#Id").val();
			var psw = $("#pswd").val();
			var inputValue = $("input[name='chk_info']:checked").val(); 
			
			$.ajax({
				url : '/login/loginCheck',
				type : 'post',
				cache: false,
				data: {
			        ID:id,
			        password:psw,
			        chk_info:inputValue
			    },
			    dataType: 'text',
			    success: function(data) {
			   		if (data ==1) {
			   			window.location.href = '/';
					}else if (data == 0){
						$("#login_error").text("회원이 존재하지 않습니다");
						$("#login_error").css("color","red");
					}else if (data == -1){
						$("#login_error").text("비밀번호가 일치하지 않습니다");
						$("#login_error").css("color","red");
						
					}else if (data == 3){
						window.location.href = '/MNGhome';
					}
			    },
			    error: function(data) {
			    	
			    }
				
			});
		});
		
	
	


</script>


<%@include file="../model/footer.jsp" %>
</body>
</html>

