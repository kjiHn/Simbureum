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

<title>게시글 신고</title>
</head>
<body>
	<h2>게시글 신고</h2>
	
	<h3>신고 사유 :</h3>
	<div>
	<textarea name="rp_content" class="content" placeholder="내용을 입력해주세요"></textarea>
	</div>
	<input type="submit" class="button" value="완료">
	
</body>
</html>