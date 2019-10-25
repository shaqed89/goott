<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goott.D Tattoo</title>

<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resource/main_lee.css" type="text/css">
<link rel="stylesheet" href="../resource/header.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>
	.container{width:1200px; max-width:1200px; padding:0; position:realative; }
	footer{clear:left;}

	#title{	font-size: 50px; margin-top: 50px; text-align: center;}
	#lbm{margin: 0 auto; width: 300px;	}
	#lb{font-size: 10px; text-align: center;}
	#sign_choice{margin: 0 auto; width: 900px;	}
	#ch_normal,#ch_tattooist{margin-top: 100px; height: 200px; width: 450px;	float: left;
				border-bottom: 1px solid gray;}
	#ch_normal{border-top: 3px solid blue;border-right: 1px solid gray; }
	#ch_tattooist{border-top: 3px solid green;}
	#normal_left,#tattooist_left{color: gray;text-align: left; margin: 80px auto;height: 100px; float: left; width: 348px;}
	#normal_right,#tattooist_right{margin: 80px auto; float: left; width: 100px;}
	h4,h6{margin-left: 10px;}
	#sign_normal{width:80px; background-color: blue; border-radius: 10px; border:none; color:#fff;	padding: 15px 0;	
	    text-align: center;	font-size: 15px; margin: 4px; cursor: pointer;}
	#sign_tattooist{width:80px; background-color: green; border-radius: 10px; border:none; color:#fff; padding: 15px 0;	
	    text-align: center;	font-size: 15px; margin: 4px; cursor: pointer;}

</style>
<script>
$(function(){
	/* 일반회원가입 */
	$("#sign_normal").click(function(){
		if(confirm("일반회원으로 가입하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/register/normal_form.do";
		}
	});
	/* 작가회원가입 */
	$("#sign_tattooist").click(function(){
		if(confirm("타투이스트회원으로 가입하시겠습니까?")){
			location.href="<%=request.getContextPath()%>/register/tattooist_form.do";
		}
	});
});
</script>
</head>
<body>
<header class="container">
	<jsp:include page="../Inc/lee_header.jsp"></jsp:include>
</header>
	<div id="main" class="container">
		<div id="title">회원가입</div>
		<div id="lbm">
			<hr/>
			<div id="lb">Good.D TATTOO</div>
			<hr/>
		</div>
		
		<div id="sign_choice">
			<div id="ch_normal">
				<div id="normal_left">
					<h4>일반회원</h4>
					<h6>일반회원 가입을 원하시면 눌러주세요.</h6>
				</div>
				<div id="normal_right">
					<input type="button" id="sign_normal" name="sign_normal" value="회원가입"/>
				</div>
			</div>
			<div id="ch_tattooist">
				<div id="tattooist_left">
					<h4>타투이스트회원</h4>
					<h6>타투이스트회원 가입을 원하시면 눌러주세요.</h6>
				</div>
				<div id="tattooist_right">
					<input type="button" id="sign_tattooist" name="sign_tattooist" value="회원가입"/>
				</div>			
			</div>
		</div>
		
	</div>
<footer>
	<jsp:include page="../Inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>