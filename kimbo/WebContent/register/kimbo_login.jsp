<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Title Here</title>

<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>
	#tex label{width:200px; float:left;}
	#tex input{width:400px;}
	#tex input[type=button], #tex input[type=submit]{margin:0 auto;}
	.container div{width:600px; margin:0 auto;}
</style>
<script>
	
</script>
</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include>
</header>
<section>
	<div class="container" style="text-align:center">
		<form action="<%=request.getContextPath()%>/register/loginOk.do" id="login_form" name="login_form" class="was-validated">
			<div>
				<h4>로그인</h4>
			</div>
			<div id="tex">
			  <div class="form-group">
			    <div>
			    	<label for="uname" >아이디:</label>
			    	<input type="text" class="form-control" id="userId" name="userId" placeholder="아이디 입력"  required>
			    	<div class="valid-feedback">8~15글자 여야합니다.</div>
			    	<div class="invalid-feedback">아이디가 입력되지 않았습니다.</div>
		    	</div>
			    <div>	
			    	<label for="pwd">비밀번호:</label>
			    	<input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호 입력"  required>	
			    	<div class="valid-feedback">8글자 이상의 문자,숫자,특수문자 포함</div>
			    	<div class="invalid-feedback">비밀번호가 입력되지 않았습니다.</div>
		    	</div>
				<div id="lglg">
				<input type="submit" value="로그인" id="lgn" class="btn btn-block btn-danger"/>
				</div>
				<h4>아직 회원이 아니신가요?</h4>
					<div id=sign>
						<a href="<%=request.getContextPath()%>/register/signup.do"><input type="button" id="sig" name="sig" value="회원가입" class="btn btn-block btn-primary"/></a>
					</div>
				</div>
			</div>
		</form>
	</div>
<!-- 
	<script src="../plugin/bootstrap-validate.js"></script>
	<script>
		/* bootstrapValidate('#userid','min:5:다섯 글자 이상 입력해주세요.')	 */
		/* bootstrapValidate('#userpwd','min:5:Enter at least 5 character!') */
	</script> -->
</section>
<footer style="clear:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>