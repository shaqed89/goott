<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goott.D Tattoo</title>

<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>
	#title{	font-size: 50px; margin-top: 50px; text-align: center;}
	#lbm{margin: 0 auto; width: 300px;	}
	#lb{font-size: 10px; text-align: center;}
	#selm{
		margin: 0 auto;
		width: 900px;
	}
	#sell,#selr{
		margin-top: 100px;
		height: 200px;
		width: 450px;
		float: left;
		border-left: 1px solid gray;
		border-bottom: 1px solid gray;
		border-right: 1px solid gray;
	}
	#sell{
		border-top: 3px solid blue;
	}
	#selr{
		border-top: 3px solid green;
	}
	#selll,#selrl{
		color: gray;
		text-align: left;
		margin: 80px auto;
		height: 100px;
		float: left;
		width: 348px;
	}
	#sellbtn,#selrbtn{
		margin: 80px auto;
		float: left;
		width: 100px;
	}
	h4,h6{
		margin-left: 10px;
	}
	#lbtn{
		width:80px;
	    background-color: blue;	
	    border-radius: 10px;
	    border:none;
	    color:#fff;	
	    padding: 15px 0;	
	    text-align: center;	
	    font-size: 15px;	
	    margin: 4px;	
	    cursor: pointer;
	    
	}
	#rbtn{
		width:80px;
	    background-color: green;	
	    border-radius: 10px;
	    border:none;
	    color:#fff;	
	    padding: 15px 0;	
	    text-align: center;	
	    font-size: 15px;	
	    margin: 4px;	
	    cursor: pointer;
	}
	
</style>

</head>
<body>
	<div id="main" class="container">
		<div id="title">회원가입</div>
		<div id="lbm">
			<hr/>
			<div id="lb">Good.D TATTOO</div>
			<hr/>
		</div>
		
		<div id="selm">
			<div id="selL">
				<div id="selll">
					<h4>일반회원</h4>
					<h6>일반회원 가입을 원하시면 눌러주세요.</h6>
				</div>
				<div id="sellbtn">
					<button id="lbtn" onclick="location.href='clientsingup.html'">회원가입</button>
				</div>
			</div>
			<div id="selr">
				<div id="selrl">
					<h4>타투이스트회원</h4>
					<h6>타투이스트회원 가입을 원하시면 눌러주세요.</h6>
				</div>
				<div id="selrbtn">
					<button id="rbtn" onclick="location.href='tattooistsingup.html'">회원가입</button>
				</div>			
			</div>
		</div>
		
	</div>
</body>
</html>