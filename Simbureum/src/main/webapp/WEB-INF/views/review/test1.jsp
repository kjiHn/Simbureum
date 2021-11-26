<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>짜란</h1>
	<form action="" method="get" name="list" >
		<c:forEach items="${list }" var="tdto">
				<h1>${tdto.num1 }</h1>	
				<h1>${tdto.str1 }</h1>		
		</c:forEach>
	</form>


</body>
</html>