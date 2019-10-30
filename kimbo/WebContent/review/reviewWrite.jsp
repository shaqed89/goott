<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap"
	rel="stylesheet">
</head>
<style>
* {width: 1200px;margin: 0 auto;}
#reviewWrite{top:100px;position:relative;}
.uk-select{width:500px;}
#fileBtn input{width:200px;text-align:center;}
#fileSend{width:100px;text-align:center;float:right;}
#title{text-align:center;padding-bottom:10px;font-family: 'Gaegu', cursive;font-weight:bold;font-size:1.5em}
#content{height:500px;}
#opt select{width:397px}
</style>
<body>
	<form id="reviewWrite">	
		<fieldset class="uk-fieldset">
    			<div class="uk-width-1-3 uk-card uk-card-default uk-card-body uk-card-small" id="title">글쓰기</div>
					<div class="uk-margin" id="opt">
			            <select class="uk-select">
			            	<option>주제선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select>		     
			            <select class="uk-select">
			            	<option>장르선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select> 
			            <select class="uk-select">
			            	<option>부위선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select>
		        	</div>
			<div class="uk-margin">
				<textarea name="content" id="content"></textarea>
				<script>
				CKEDITOR.replace("content");
				</script>
			</div>
			<div class="uk-margin" uk-margin>
				<div uk-form-custom="target: true" id="fileBtn">
					<input type="file"> <input
						class="uk-input uk-form-width-medium" type="text"
						placeholder="파일선택" disabled>
					<button class="uk-button uk-button-default" id="fileSend">등록</button>
				</div>
			</div>
		</fieldset>
	</form>
</body>
</html>