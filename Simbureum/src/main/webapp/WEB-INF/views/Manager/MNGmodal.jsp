<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	 
</style>
<title>Insert title here</title>
</head>
<body>
<button id="show">팝업열기</button>

    <div class="background">
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
       	 <button id="close">팝업닫기</button>
      </div>
    </div>
         
        </div>
    	</div>
	</div>
 

    <script>
      function show() {
        document.querySelector(".background").className = "background show";
      }

      function close() {
        document.querySelector(".background").className = "background";
      }

      document.querySelector("#show").addEventListener("click", show);
      document.querySelector("#close").addEventListener("click", close);
    </script>

</body>
</html>