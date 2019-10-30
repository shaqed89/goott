<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="shortcut icon" href="http://vandelaydesign.com/favicon.ico">
<link rel="icon" href="http://vandelaydesign.com/favicon.ico">
<link rel="stylesheet" href="../plugin/review_style.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
<style>
	body{margin:0 auto;padding:0 auto;box-sizing: border-box;
		width:1200px;}
	button{position:relative;top:10px;}
	#container label{font-size:15px;}
	#title{position:relative;bottom:px;height:30px;width:400px;font-size:13px;left:10px;}
	#file{top:10px;}
</style>
<script>
$(function(){
    $("#frm").submit(function(){
       if($("#title").val()==""){
          alert("제목을 입력하세요");
          return false;
       }
       if($("#fileName").val()==""){
          alert("첨부파일을 추가하세요")
          return false;
       }
    });
 });
</script>
</head>
<body>
<div id="container">
    <h1>글쓰기</h1>
	<form id="frm" method="post" enctype="multipart/form-data">
		<label>작성자 : 이종한 </label><br/>
		<label>제목 :</label><input type="text" name="title" id="title"/> <br/>
		     <textarea name="content" id="content"></textarea>
			 <script>
				CKEDITOR.replace("content");
			</script>
			<div class="js-upload" uk-form-custom>
		   		<input type="file" id="fileName" name="fileName" multiple>
		   		<button class="uk-button uk-button-default" type="button" tabindex="-1">사진첨부</button>
			</div>
			<button class="uk-button uk-button-primary" style="float:right">올리기</button>
	</form>
</div>
</body>
</html>