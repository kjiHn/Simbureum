<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../model/topBar1.jsp" %>


<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>해줘~ 할게</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="#">
    <link rel="shortcut icon" type="image/x-icon" href="view/assets/img/favicon.ico">
    
<style type="text/css">
/* component */

.star-num1 {
  border:solid 1px #ccc;
  display:flex;
  flex-direction: row-reverse;
  font-size:1.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-num1 input {
  display:none;
}

.star-num1 label {
  color:#ccc;
  cursor:pointer;
}

.star-num1 :checked ~ label {
  color:#f90;
}

.star-num1 label:hover,
.star-num1 label:hover ~ label {
  color:#fc0;
}

/* explanation */

article {
  background-color:#ffe;
  box-shadow:0 0 1em 1px rgba(0,0,0,.25);
  color:#006;
  font-family:cursive;
  font-style:italic;
  margin:4em;
  max-width:30em;
  padding:2em;
}


textarea {
	width: 100%;
	height: 6.25em;
	border: 1px soild black;
	resize: none;
	
}

</style>
    
</head>
<body>



   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <jsp:include page="../model/siderbar2.jsp" flush="false" />
            <div class="col-lg-8 posts-list">
               <div class="slider-shape d-none d-lg-block">
            
                  <h1>리뷰작성</h1>
					<form action="/review/test" method="post" name="insertTest">
						<div class="star-num1">
						  <input type="radio" id="5-stars" name="num1" value="5" />
						  <label for="5-stars" class="star">&#9733;</label>
						  <input type="radio" id="4-stars" name="num1" value="4" />
						  <label for="4-stars" class="star">&#9733;</label>
						  <input type="radio" id="3-stars" name="num1" value="3" />
						  <label for="3-stars" class="star">&#9733;</label>
						  <input type="radio" id="2-stars" name="num1" value="2" />
						  <label for="2-stars" class="star">&#9733;</label>
						  <input type="radio" id="1-star" name="num1" value="1" />
						  <label for="1-star" class="star">&#9733;</label>
						</div>
						<div>
							<textarea rows="10" cols=""></textarea>
						</div>
						
						<div >
						  <input  type="submit" id="submit" value="확인"></input>
						</div>
					</form>
            
               </div>
            </div>

         </div>
      </div>
   </section>





</body>
</html>
<%@include file="../model/footer.jsp" %>
