<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${userId==null ||userId=='' }">
   <script>
      location.href="/register/signup.do";
   </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
</head>
<style>
* {width: 1200px;margin: 0 auto;}
#reviewWrite{top:100px;position:relative;height:800px;}
.uk-select{width:500px;}
#fileBtn input{width:200px;text-align:center;float:left}

#fileSend{width:150px;text-align:center;float:right;position:relative;bottom:60px;}
#title{text-align:center;padding-bottom:10px;font-family: 'Gaegu', cursive;font-weight:bold;font-size:1.5em}

#opt select{width:250px;float:left;}
#write_btn{left:755px;position:relative}
#uid{height:35px;
    line-height:35px;
    margin-bottom:5px;
    }
#tattooistid{width:150px;
			 left:10px;
			 position:relative;
}
.form-control{height:40px;}
</style>
<script>
$(function() {
	$("#lst").click(function(){
		alert("글이 등록되었습니다.")
		location.href="<%=request.getContextPath()%>/review/reviewList.do";
	});
});

</script>
<body>
<div>
	<form id="reviewWrite" method="post" action="<%=request.getContextPath()%>/review/reviewWriteOk.do" enctype="multipart/form-data">	
		<fieldset class="uk-fieldset">
    			<div class="uk-width-1-3 uk-card uk-card-default uk-card-body uk-card-small" id="title">글쓰기</div>
					<div class="uk-margin" id="opt">
						<div id="uid" class="uk-label uk-label-warning"> 작성자 : ${userId}
					    	<input type='hidden' id="r_userId" name="r_userId"/>
					    </div>
			            <select id="subject" name="subject" class="uk-select">
			            	<option>주제선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select>		     
			            <select id="genre" name="genre" class="uk-select">
			            	<option>장르선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select> 
			            <select id="part" name="part" class="uk-select">
			            	<option>부위선택</option>
			                <option>Option 01</option>
			                <option>Option 02</option>
			                <option>Option 03</option>
			            </select>			     
			  			<div>
							<input type="text" id="tattooistid" name="tattooistid" class="form-control" placeholder="작가 아이디입력">
						</div>
			         
 
		        	</div>
			<div class="uk-margin">
				<textarea name="content" id="content"></textarea>
				<script>
					CKEDITOR.replace("content");
				</script>
			</div>
			<div class="uk-margin" uk-margin>
				<div uk-form-custom="target: true" id="fileBtn">
					<input type="file" id="fileName" name="fileName"><input class="uk-input uk-form-width-medium" type="text" placeholder="파일선택" disabled>
					<div id="write_btn"></div>
				</div>
			</div>
		</fieldset>
		<div id="s1">
			<input type="submit" class="uk-button uk-button-primary" id="fileSend" value="등록"></button>
		</div>
	</form>
</div>
</body>
</html>