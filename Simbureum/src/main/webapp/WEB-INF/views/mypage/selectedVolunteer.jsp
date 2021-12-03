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

.content{
	width: 300px;
	height: 100px;
}
</style>

<title>선택한 심부름꾼</title>
</head>
<body>
	<h3>선택한 심부름꾼</h3>
	<div>
	<form method="POST" action="/main/writeReport/${post_num_pk}">
	<textarea name="porp_con" class="content" placeholder="내용을 입력해주세요"></textarea>
	
	<input type="submit" class="button" value="완료">
	<input type="button" class="button" value="취소" onclick="javascript:self.close()">
	</form>
	</div>
</body>
</html>