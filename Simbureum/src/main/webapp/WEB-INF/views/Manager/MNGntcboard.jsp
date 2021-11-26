<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar1.jsp" %>

<style>

	.background {
	  position: fixed;
	  top: 0;
	  left: 0;
	  width: 100%;
	  height: 100%;
	  background-color: rgba(0, 0, 0, 0.3);
	  z-index: 1000;
	  
	  /* 숨기기*/
	  z-index: -1;
	  opacity: 0;
	}
	
	.window {
	  position: relative;
	  width: 100%;
	  height: 100%;
	}
	.popup {
	  position: absolute; 
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  background-color: #ffffff;
	  box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
	  
	   /* 임시 지정 
	  width: 500px;
	  height: 500px; */
	  
	  /* 초기에 약간 아래에 배치*/
	  transform: translate(-50%, -40%);
	 } 
	 .show {
	  opacity: 1;
	  z-index: 1000;
	  transition: all .5s;
	 } 
	
	.show .popup {
	  transform: translate(-50%, -50%);
	  transition: all .5s;
	 }
	 
	 .underline {
	 	text-decoration:underline;
	 }
	 
</style>
<script>
function title_click(){
    	document.querySelector(".background").className = "background show";
}
function close_click() {
		document.querySelector(".background").className = "background";
}
</script>
<html>


<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">
    
    
    
</head>
<body>
  <div  id="modal" class="background">
      <div class="window" >
        <div class="popup">
        <div class="modal-content">
      <div class="modal-header">
       <!-- 모달 이름 -->
        <h3 class="modal-title" id="exampleModalLabel"><b>신고된 리뷰</b></h3>
      </div>
      <div class="modal-body">
      <!-- 스크롤바를 못만듬 -->
      
        
        <p>내용: 심부름 너무 못함</p>
        <p>작성자:벌레시러</p>
        <p>신고자:심부르음</p>
        <hr>
        
        <p>내용: 심부름 너무 못함</p>
        <p>작성자:벌레시러</p>
        <p>신고자:심부르음</p>
        <hr>
        
        <p>내용: 심부름 너무 못함</p>
        <p>작성자:벌레시러</p>
        <p>신고자:심부르음</p>
        <hr>
        
        <p>내용: 심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함</p>
        <p>작성자:벌레시러</p>
        <p>신고자:심부르음</p>
        <hr>
        
        <p>내용: 심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함심부름 너무 못함</p>
        <p>작성자:벌레시러</p>
        <p>신고자:심부르음</p>
        <hr>
    
      </div>
      <div class="modal-footer">
       	 <button id="close" onclick="close_click()">팝업닫기</button>
      </div>
    </div>
         
        </div>
    	</div>
	</div>


   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <%-- <jsp:include page="../model/siderbar2.jsp" flush="false" /> --%>
            <div class="col-lg-6 posts-list">
               <div class="slider-shape d-none d-lg-block">
            	
                  <table style="text-align: center; width: 1000px; align: center; border: 1px solid #e3c4ff;">
                     <thead>
                        <tr style="background-color: #e3c4ff;">
                           <th>No.</th>
                           <th>제목</th>
						   <th>작성자</th>
                           <th>위치</th>
                           <th>조회수</th>
                           <th>작성일</th>
                        </tr>
                     </thead>

                     <tbody>
                        <tr style="border: 1px solid #e3c4ff;">
                           <!-- 테스트 코드 -->
                           <td>1</td>
							<td id="title" style="cursor:pointer" onclick="title_click()" class="underline">벌레 잡아주세요ㅠㅠ</td>
                           <td>벌레시러</td>
                           <td>서울 서초구</td>
                           <td>11</td>
                           <td>2021.11.09</td>
                        </tr>


                        <tr>
                           <!-- 테스트 코드 -->
                           <td>1</td>
                           <td id="title" style="cursor:pointer" onclick="title_click()" class="underline">벌레 잡아주세요ㅠㅠ</td>
                           <td>벌레시러</td>
                           <td>서울 서초구</td>
                           <td>11</td>
                           <td>2021.11.09</td>
                        </tr>

                     </tbody>
                  </table>
            
               </div>
            </div>

         </div>
      </div>
   </section>





</body>
</html>
<%@include file="../model/footer.jsp" %>
