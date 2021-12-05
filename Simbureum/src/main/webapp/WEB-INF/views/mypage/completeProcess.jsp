<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.button {
  background-color: white; 
  color: black; 
  border: 2px solid #BFA0ED;
  padding: 8px 60px;
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

</style>

<title>심부름 완료</title>
</head>
<body>
	<form method="POST" action="/mypage/completeProcess/${post_num_pk}">
		심부름을 완료 하시겠습니까?<br>
		* 심부름꾼에게 심부름 한 비용을 지불하신 후<br>확인을 눌러주셔야 합니다.
		<br><br>
		<input type="submit" class="button" value="확인">
		<input type="button" class="button" value="취소" onclick="javascript:self.close()">
	</form>
</body>
</html>