<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="/resources/view/assets/img/2.ico">
	<title>Page not found 404 </title>
	<style>
	body{
	background-color: #e3c4ff;
	}
		h1, p {
			text-align: center;
			font-family: Helvetica, arial, serif;
		}
		a {
			color:#31AC9E;
			text-decoration-line : none;
			
		}
		img {
			border-radius: 10px;
			margin-top: 40px;
			margin-bottom: 20px;
			border: 5px black solid;
		}	
		.noview{
			font-size: 1px;
			color: #31AC9E;
			cursor: pointer;
			opacity: 0.9;
		}
		
		@keyframes cat {
		  0%   {left:0px; top:0px;}
		  100%  {left:100%; top:0px;}
		}
		
		div {
		  position: relative;
		  animation-name: cat;
		  animation-duration: 1s;
		  animation-timing-function: linear;
		  animation-iteration-count: infinite;
		  animation-direction: alternate;
		}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<span class="noview" >.</span>
	<p><a href="/"><img src="/resources/view/assets/img/logo/2-removebg.png"border="0" alt="Fuelly Logo"></a></p>
	<h1>페이지를 찾을수 없습니다</h1>
	<p>주소가 틀리거나 존재 하지 않는 페이지 입니다. <a href="/">homepage</a>.</p>
	
	<div id = "is" style="display: none">
		<img src="http://www.meriqueen-woolmark.com/03_doolyit_image/cat.jpg">
	</div>

	
	<script type="text/javascript">
			var count = 0;
		$(".noview").click(function() {
			count = count+1;
			console.log(count);
			if (count == 12) {
				$("#is").css('display','');
			}
			
		});
	</script>
</body>
</html>