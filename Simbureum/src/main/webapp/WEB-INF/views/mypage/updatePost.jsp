<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../model/topBar_login.jsp" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 만든 버튼 css -->
<link rel="stylesheet" href="/resources/view/assets/css/custom.css?ver=2" />

<style type="text/css">

#centerBody{
  display: grid;
  place-items: center;
}

#centerCon{
  display: grid;
  place-items: center;
 
}

.textinput{
	width: 500px;
	height: 40px;
	margin-bottom: 20px;
	margin-top: 20px;
}

.content{
	width: 500px;
	height: 200px;
	margin-bottom: 20px;
	margin-top: 20px
}
</style>	

<title>심부름 수정</title>

</head>
<body>
	<section class="blog_area single-post-area section-padding">
		<div class="container">
			<div class="row">
				<jsp:include page="../model/siderbar2.jsp" flush="false" />
				<div class="col-lg-8 posts-list" id="centerCon">
					<h2 class="contact-title" align="center">심부름 수정</h2>
					<div class="slider-shape d-none d-lg-block">
	
						<form method="POST" action="/mypage/updatePost/${post.post_num_pk}">
							<table>
								<tr>
									<th>제목 : </th>
									<td><input name="post_title" class="textinput" placeholder="제목 입력" value="${post.post_title}"/></td>
								</tr>
								<tr>
									<th>내용 : </th>
									<td><textarea id="content" name="post_con" class="content" placeholder="내용 입력">${post.post_con}</textarea>
										<div id="text_cnt">(0 / 500)</div></td>
								</tr>
								<tr>
									<th>위치 : </th>
									<td>
										<select id="bigCategory">
											<option value="0">시/도</option>
											<option value="1">서울</option>
											<option value="2">경기도</option>
										</select>
										<select id="midCategory">
											<option value="0">시/군/구</option>
										</select>
										<select name="psmallc_pk" id="smallCategory">
											<option value="0">읍/면/동</option>
										</select>
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<input type="button" class="smallBtn" onclick="setCenter()" value="주변 위치 표시하기">
										<br>* 지도에서 해당 위치를 클릭하여 표시하세요.
										<div id="map" style="width:500px; height:400px;"></div>
									</td>
								</tr>
								<tr>
									<th>마감일 : </th>
									<td><input name="post_dline" class="textinput" placeholder="마감일 입력(ex.2021/01/01)" 
											value="<fmt:formatDate value="${post.post_date}" pattern="yyyy/MM/dd" />"/></td>
								</tr>
								<tr>
									<th>심부름꾼 수 : </th>
									<td><input name="post_numof" class="textinput" placeholder="심부름꾼 수 입력" value="${post.post_numof}"/></td>
								</tr>
								<tr>
									<th>심부름 가격 : </th>
									<td><input name="post_price" class="textinput" placeholder="심부름 가격 입력" value="${post.post_price}"/></td>
								</tr>
							</table>
							
							<input type="hidden"  name="post_num_pk" value="${post.post_num_pk}">
							<input type="hidden" name="post_lat" value="">
							<input type="hidden" name="post_lng" value="">
							<input type="submit" class="bigBtn" value="완료">
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- 글자수 제한 -->
	<script type="text/javascript">
	$(document).ready(function() {
		setTimeout(function(){
			$("#content").focus();
		}, 200); 
		
		
	    $('#content').on('focus',function() {
	        $('#text_cnt').html("("+$(this).val().length+" / 500)");
	        $('#content').on('keyup',function() {
	        	 $('#text_cnt').html("("+$(this).val().length+" / 500)");
	        
	 
	        if($(this).val().length > 500) {
	            $(this).val($(this).val().substring(0, 500));
	            $('#text_cnt').html("(500 / 500)");
	        }
	        });
	    });
	});

			</script>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c11e1620d5e96294da73f9c7ec269f0e
		&libraries=services"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(${post.post_lat}, ${post.post_lng}),
			level: 5
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${post.post_lat}, ${post.post_lng}); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
		
		// 지도에 원 표시
		fnCircle(${post.post_lat}, ${post.post_lng});
		
		//위치 카테고리 선택에 따라 지도 위치 이동
		function setCenter() {
			// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

			// 주소로 좌표를 검색합니다
			geocoder.addressSearch(setAddress(), function(result, status) {

			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {

			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        //var infowindow = new kakao.maps.InfoWindow({
			        //    content: '<div style="width:150px;text-align:center;padding:6px 0;">여기</div>'
			        //});
			        //infowindow.open(map, marker);

			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			        
			     	// 마커 표시
					marker.setMap(map);
			    } 
			});
			
			// 지도에 클릭 이벤트를 등록합니다
			// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
				
				// 클릭한 위도, 경도 정보를 가져옵니다 
				var latlng = mouseEvent.latLng; 
				
				// 마커 위치를 클릭한 위치로 옮깁니다
				marker.setPosition(latlng);
				
				$("input[name=post_lat]").val(latlng.getLat());
				$("input[name=post_lng]").val(latlng.getLng());

				fnCircle(latlng.getLat(), latlng.getLng());
				

			});
			
		}
		
		
		var circle;
		
		//원반경 생성
		function fnCircle(Lat, Lng){
			
			if (circle) { // 최초 실행시에는 circle이 없을테니 예외처리를 해줍니다.
		        circle.setMap(null);
		    }

			// 지도에 표시할 원을 생성합니다
			circle = new daum.maps.Circle({
			center : new daum.maps.LatLng(Lat, Lng),  // 원의 중심좌표 입니다 
			radius: 100, // 미터 단위의 원의 반지름입니다 
			strokeWeight: 2, // 선의 두께입니다 
			strokeColor: '#75B8FA', // 선의 색깔입니다
			strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle: 'dashed', // 선의 스타일 입니다
			fillColor: '#CFE7FF', // 채우기 색깔입니다
			fillOpacity: 0.7  // 채우기 불투명도 입니다   
		}); 

		circle.setMap(null);

		// 지도에 원을 표시합니다 
		circle.setMap(map); 
		
		console.log("lat "+Lat+" Lng "+Lng);

		}
		
	</script>
	
	<!-- 유효성 검사 -->
	<script type="text/javascript">
		$("#clickButton").on('click', function(){
			var title = $("#title").val();
			var content = $("#content").val();
			var loc = $("#bigCategory").val();
			var dline = $("#dline").val();
			var numof = $("#numof").val();
			var price = $("#price").val();
			var datatimeRegexp = /^([0-9]{4})\/(0?[1-9]|1[012])\/(0?[1-9]|[12][0-9]|3[01])$/;
			var clickLoc = $("input[name=post_lat]").val();
			
			if(title == ''){
				alert("제목을 입력해주세요.");
			}else if(content == ''){
				alert("내용을 입력해주세요.");
			}else if(loc == 0){
				alert("위치를 선택해주세요.");
			}else if(clickLoc == ''){
				alert("주변 위치를 표시해주세요.");
			}else if(dline == ''){
				alert("마감일을 입력해주세요.");
			}else if (!datatimeRegexp.test(dline)) {
		        alert("마감일은 yyyy-mm-dd 형식으로 입력해주세요.");
		    }else if(numof == ''){
				alert("심부름꾼 수를 입력해주세요.");
			}else if(price == ''){
				alert("심부름 가격을 입력해주세요.");
			}else{
				$("#writeForm").submit();
			}
		})
	</script>
	
	<!-- 선택했던 위치 카테고리 -->
	<script>	
		var pbig = "${post.pbigc_name}";	
		var target = document.getElementById("midCategory");
		var category;
		var category_val;
		var val;	
		var text;	
			
		if(pbig == "서울"){	
			$("#bigCategory option:eq(1)").prop("selected", true);	
			category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];	
			category_val = [1, 2, 3, 4, 5];	
				
		} else if(pbig == "경기도"){	
			$("#bigCategory option:eq(2)").prop("selected", true);	
			category = ["화성시", "시흥시", "오산시", "남양주시", "광주시"];	
			category_val = [6, 7, 8, 9, 10];	
		}
		
		text = category;	
		val = category_val;
		
		for (x in val){	
			var opt = document.createElement("option");	
			opt.value = val[x];	
			opt.innerHTML = text[x];	
			target.appendChild(opt);	
		}	
			
		$("#midCategory").val(${post.pmidc_pk}).prop("selected", true);
		
		target = document.getElementById("smallCategory");
		
		if(${post.pmidc_pk} == 1){
			category = ["강일동", "고덕동", "길동"];	
			category_val = [1, 2, 3];	
		} else if(${post.pmidc_pk} == 2){
			category = ["마포동", "망원동", "상수동"];	
			category_val = [4, 5, 6];	
		} else if(${post.pmidc_pk} == 3){
			category = ["당산동", "대림동", "문래동"];	
			category_val = [7, 8, 9];	
		} else if(${post.pmidc_pk} == 4){
			category = ["반포동", "방배동", "서초동"];	
			category_val = [10, 11, 12];	
		} else if(${post.pmidc_pk} == 5){
			category = ["노량진동", "동작동", "사당동"];	
			category_val = [13, 14, 15];	
		} else if(${post.pmidc_pk} == 6){
			category = ["금곡동", "기안동", "남양읍"];	
			category_val = [16, 17, 18];	
		} else if(${post.pmidc_pk} == 7){
			category = ["군자동", "매화동", "포동"];	
			category_val = [19, 20, 21];	
		} else if(${post.pmidc_pk} == 8){
			category = ["당산동", "대림동", "문래동"];	
			category_val = [22, 23, 24];	
		} else if(${post.pmidc_pk} == 9){
			category = ["가수동", "오산동", "원동"];	
			category_val = [25, 26, 27];	
		} else if(${post.pmidc_pk} == 10){
			category = ["도척면", "목동", "오포읍"];	
			category_val = [28, 29, 30];	
		}
		
		text = category;	
		val = category_val;
		
		for (x in val){	
			var opt = document.createElement("option");	
			opt.value = val[x];	
			opt.innerHTML = text[x];	
			target.appendChild(opt);	
		}	
			
		$("#smallCategory").val(${post.psmallc_pk}).prop("selected", true);
		
	</script>
	
	<script>
		$(document).ready(function(){
			$("#bigCategory").change(function(){
				var seoul_category = ["강동구", "마포구", "영등포구", "서초구", "동작구"];
				var seoul_category_val = [1, 2, 3, 4, 5];
				var gyeonggi_category = ["화성시", "시흥시", "오산시", "남양주시", "광주시"];
				var gyeonggi_category_val = [6, 7, 8, 9, 10];
				var target = document.getElementById("midCategory");
				var basic_category = "시/군/구";
				var basic_category_val = 0;
				
				var category1 = $("#bigCategory").val(); 
				
				var val;
				var text;
				
				if(category1 == 1){
					text = seoul_category;
					val = seoul_category_val;
				}else if(category1 == 2){
					text = gyeonggi_category;
					val = gyeonggi_category_val;
				}else{
					text = basic_category;
					val = basic_category_val;
				}
				
				$("#midCategory").empty();
				
				if(category1 >= 1){
					for (x in val){
						var opt = document.createElement("option");
						opt.value = val[x];
						opt.innerHTML = text[x];
						target.appendChild(opt);
					}
				}else{
					var opt = document.createElement("option");
					opt.value = val;
					opt.innerHTML = text;
					target.appendChild(opt);
				}
				
				changeSmallCat();
				
			});
			
			
		});
		
		$("#midCategory").change(function(){
			changeSmallCat();
		});
		
		function changeSmallCat(){
			var category1 = ["강일동", "고덕동", "길동"];
			var category_val1 = [1, 2, 3];
			var category2 = ["마포동", "망원동", "상수동"];
			var category_val2 = [4, 5, 6];
			var category3 = ["당산동", "대림동", "문래동"];
			var category_val3 = [7, 8, 9];
			var category4 = ["반포동", "방배동", "서초동"];
			var category_val4 = [10, 11, 12];
			var category5 = ["노량진동", "동작동", "사당동"];
			var category_val5 = [13, 14, 15];
			var category6 = ["금곡동", "기안동", "남양읍"];
			var category_val6 = [16, 17, 18];
			var category7 = ["군자동", "매화동", "포동"];
			var category_val7 = [19, 20, 21];
			var category8 = ["당산동", "대림동", "문래동"];
			var category_val8 = [22, 23, 24];
			var category9 = ["가수동", "오산동", "원동"];
			var category_val9 = [25, 26, 27];
			var category10 = ["도척면", "목동", "오포읍"];
			var category_val10 = [28, 29, 30];
			var target = document.getElementById("smallCategory");
			var basic_category = "읍/면/동";
			var basic_category_val = 0;
			
			var midCategory = $("#midCategory").val(); 
			
			var val;
			var text;
			
			if(midCategory == 1){
				text = category1;
				val = category_val1;
			}else if(midCategory == 2){
				text = category2;
				val = category_val2;
			}else if(midCategory == 3){
				text = category3;
				val = category_val3;
			}else if(midCategory == 4){
				text = category4;
				val = category_val4;
			}else if(midCategory == 5){
				text = category5;
				val = category_val5;
			}else if(midCategory == 6){
				text = category6;
				val = category_val6;
			}else if(midCategory == 7){
				text = category7;
				val = category_val7;
			}else if(midCategory == 8){
				text = category8;
				val = category_val8;
			}else if(midCategory == 9){
				text = category9;
				val = category_val9;
			}else if(midCategory == 10){
				text = category10;
				val = category_val10;
			}else{
				text = basic_category;
				val = basic_category_val;
			}
			
			$("#smallCategory").empty();
			
			if(midCategory >= 1){
				for (x in val){
					var opt = document.createElement("option");
					opt.value = val[x];
					opt.innerHTML = text[x];
					target.appendChild(opt);
				}
			}else{
				var opt = document.createElement("option");
				opt.value = val;
				opt.innerHTML = text;
				target.appendChild(opt);
			}
		}
		
		//주소 설정
		function setAddress(){
			var address = $("#bigCategory option:checked").text() + ' ' + $("#midCategory option:checked").text() + ' ' + $("#smallCategory option:checked").text();
			console.log(address);
			return address;
		}
		
	</script>

</body>

</html>
