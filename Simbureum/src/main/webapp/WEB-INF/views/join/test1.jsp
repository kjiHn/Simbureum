<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
  <section>
    <h1>할게해줘</h1>
  </section>
  <br>
  <h4>회원가입</h4>
  <section>
    <form  name="login" action="index.html" method="post">
      아이디확인<br>
      <input type="text" name="user_ID" placeholder="아이디 입력" >
      <input type="button" name="user_IDcheck" value="아이디 확인">
      <br>
      비밀번호<br> 
      <input type="password" name="user_PW1" value="123456"><br>
      비밀번호 재확인<br> 
      <input type="password" name="user_PW2" value="123456">
      <input type="button" name="user_PWcheck" value="비밀번호 재확인">
      <br><br>
      이름<br>  <input type="text" name="user_name" value=""> <br>
      이메일<br><input type="email" name="user_email" placeholder="email@gmail.com">
      <input type="button" name="certification" value="인증번호 받기"><br>
      <input type="text" name="certification" placeholder="인증번호를 입력하세요">
      <input type="button" name="certification" value="확인"><br><br>
      휴대전화<br>  
      <input type="text" name="user_phone" placeholder="010-****-****">
    	<br><br>
      <input type="submit" name="" value="제출">
      
    </form>
  </section>
  
  
</body>
</html>