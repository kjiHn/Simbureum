<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
.button {
	background-color: white;
	color: black;
	border: 2px solid #BFA0ED;
	padding: 2px 16px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 4px 180px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 20px;
}

.button:hover {
	background-color: #BFA0ED;
	color: white;
}

a {
	color: black;
}

</style>	

<title>지원한 심부름꾼</title>
</head>
<body>

	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">
					<div class="slider-shape d-none d-lg-block">
						<h3>지원한 심부름꾼</h3>
						<c:if test="${checkVol == 0}">지원한 심부름꾼이 없습니다.</c:if>
						<c:if test="${checkVol == 1}">
							<table style="width: 100%">
								<c:forEach var="volRe" items="${volRe}" varStatus="status">
									<tr>
										<td>
											<a href="#">ID : ${volRe.mb_id}</a>
										</td>
										<td rowspan="2">
											&nbsp;&nbsp;&nbsp;<input type="checkbox" name="selected" value="${volRe.mb_id}">
										</td>
									</tr>
									<tr>
										<td>평점 ${volRe.vrRe_avg} / 리뷰 수 ${volRe.vrRe_count}</td>
									</tr>
									<c:if test="${!status.last}">
										<tr>
										    <th colspan="2"><hr></th>  
										</tr>
									</c:if>
								</c:forEach>
							</table>
							<br>
							<input type="button" class="button" onclick="selectVol()" value="선택">
						</c:if>
						

					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 심부름꾼 선택 -->
	<script type="text/javascript">
		function selectVol(){
			let selected = $("input:checkbox[name=selected]:checked").length;
			let sentence = "심부름꾼 "+${numOfVol}+"명을 선택해 주세요.";
			if(selected == ${numOfVol}){
				let sel_vol = "";
				let url = "../selectedVolunteer?sel_vol="+sel_vol;
				$("input:checkbox[name=selected]:checked").each(function(index){
					sel_vol += $(this).val();
					if(index+1 != selected){
						sel_vol += ", ";
					}
				});
				$.ajax({
					type: "POST",
					url: "../selectedVolunteer?postNum="+${postNum}+"&sel_vol="+sel_vol,
					success: function(){
						alert(sel_vol+"님이 심부름꾼으로 선택되었습니다.\n * 심부름 하면서 문제가 발생할 경우 저희가 책임지지 않습니다.\n * 심부름이 완료될 경우 \'심부름 완료\' 버튼을 눌러주세요.");
						opener.location.reload();
						window.close();
					}
				})
				
			}else if(selected > ${numOfVol}){
				alert("필요한 심부름꾼 수보다 많이 선택하셨습니다.\n"+sentence);
			}else if(selected < ${numOfVol}){
				alert("필요한 심부름꾼 수보다 적게 선택하셨습니다.\n"+sentence);
			}else{
				alert(sentence);
			}
			
		}
	</script>

</body>
</html>
