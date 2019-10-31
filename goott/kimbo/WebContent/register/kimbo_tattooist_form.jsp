<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Good.D Tattoo</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="../resource/main_lee.css"
	type="text/css">
<link rel="stylesheet" href="../resource/header.css"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<style>
	body {    
    font-family: 나눔바른고딕, NanumBarunGothic, 맑은고딕, "Malgun Gothic", 돋움, Dotum, "Apple SD Gothic Neo", sans-serif;
    font-size: 12px;
    color: rgb(33, 33, 33);
	}
	.container{
		width: 900px;
		margin: 0 auto;
	}
	table {
	    width: 600px;
	}
	
	tr {
	    height: 50px;
	}
	
	input[type=text], input[type=password] {
	    padding: 5px 10px; /* 상하 우좌 */
	    margin: 3px 0; /* 상하 우좌 */
	    font-family: inherit; /* 폰트 상속 */
	    border: 1px solid #ccc; /* 999가 약간 더 진한 색 */
	    font-size:14pt;
	    box-sizing: border-box;
	    border-radius: 3px;
	    -webkit-border-radius: 3px;
	    -moz-border-radius: 3px;
	    -webkit-transition: width 0.4s ease-in-out;
	    transition: width 0.4s ease-in-out;
	}
	
	input[type=text]:focus, input[type=password]:focus {
	    border: 2px solid #555;
	}
	
	input[type=submit],input[type=button] {
	    margin-top: 10px;
	    width:100px;
	    height:40px;
	    line-height: 22px;
	    padding: 5px, 10px; /* 상하 우좌 */
	    background: #E6E6E6;
	    color: #000000;
	    font-size: 15px;
	    font-weight: normal;
	    letter-spacing: 1px;
	    border: none;
	    cursor: pointer;
	    border-radius: 3px;
	    -webkit-border-radius: 3px;
	    -moz-border-radius: 3px;
	}
	input[type=submit]:hover {
	    background-color: #FFBF00;
	}
	h2{
		width: 900px;
		height: 40px;
		margin: 0 auto;
		margin-top: 50px;
		margin-bottom: 50px;
	}
	#xx,#yy{
		width:30px;
		float: left;
		margin-right: 2px;
		
	}
	#yy{
		margin-left: 50px;
	}
	.form-control{
		width: 379.6px;
	}
</style>
<script>
	function checks(){
		if($("#email").val() == ""){
	        alert("아이디를 입력 바랍니다.");
	        $("#email").focus();
	        return false;
	      }
		//비밀번호 공백 확인 
		if($("#password").val() == ""){ 
			alert("패스워드 입력바람"); $("#password").focus(); 
			return false; 
		}  
		//비밀번호 확인란 공백 확인 
		if($("#password_check").val() == ""){ 
			alert("패스워드 확인란을 입력해주세요"); $("#password_check").focus(); 
			return false; 
		} 
		//비밀번호 서로확인 
		if($("#password").val() != $("#password_check").val()){
			alert("비밀번호가 다릅니다."); $("#password").val(""); 
			$("#password_check").val(""); $("#password").focus(); 
			return false; 
		}
		//이름 공백 확인 
		if($("#userNM").val() == ""){ 
			alert("이름 입력바람"); $("#userNM").focus(); 
			return false; 
		}  
		//연락처 공백 확인 
		if($("#mobileNO").val() == ""){ 
			alert("패스워드 입력바람"); $("#mobileNO").focus(); 
			return false; 
		}  
		//생년월일 공백 확인 
		if($("#birthday").val() == ""){ 
			alert("생년월일 입력바람"); $("#birthday").focus(); 
			return false; 
		}  
		//성별 공백 확인
		if($("#gender").val() == ""){ 
			alert("패스워드 입력바람"); $("#gender").focus(); 
			return false; 
		}  
		//카톡 공백 확인
		if($("#kaka").val() == ""){ 
			alert("카카오톡 아이디 입력바람"); $("#kaka").focus(); 
			return false; 
		}
	}
	function idch(){
		//아이디 공백 확인
	      if($("#email").val() == ""){
	        alert("아이디를 입력 바랍니다.");
	        $("#email").focus();
	        return false;
	      }
	 }
</script>
</head>
<body>
	<header>
		<div id="header_left"><a href="#">Good.D<br />TATTOO</a></div>
		<div id="center">
			<div id="header_center1">&equiv;</div>

			<div id="header_center2">
				<a href="#">Search</a>
				<a href="#">Tattooist</a>
				<a href="#">Notice</a>
				<a href="#">F&Q</a>
				<a href="#">Review</a>
			</div>
		</div>
		<div id="header_right">
			<ul>
				<li><a href="#">Login</a></li>
				<li><a href="#">Join</a></li>
				<li><a href="#">My</a></li>
			</ul>
		</div>
	</header>
<div class="container">
<h2>타투이스트회원 가입</h2>
<form method="post" action="a.register.php" onsubmit="return checks()">
    <table>
        <tr>
            <td>아이디(E-Mail)</td>
            <td>
                <input type="text" size=25 id="email" name="email" value="" maxlength="25">
                <input type="button" id="checkid" value="중복체크" onclick="idch()">
            </td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" size=37 name="password" id="password"></td>
        </tr>
        <tr>
            <td>비밀번호(확인)</td>
            <td><input type="password" size=37 name="password_check" id="password_check"></td>
        </tr>
        <tr>
            <td style='width:100px'>이름</td>
            <td><input type="text" size=37 name="userNM" id="userNM" value=""></td>
        </tr>
        <tr>
            <td>휴대폰번호</td>
            <td><input type="text" size=37 name="mobileNO" id="mobileNO" value=""></td>
        </tr>
        <tr>
            <td>생년월일</td>
            <td><input type="text" size=37 name="birthday" id="birthday" value=""></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
            	<div id="xx">남<input type="radio" size=37 name="gender" id="gender" value="m" checked="checked"></div>
            	<div id="yy">여<input type="radio" size=37 name="gender" id="gender" value="f"></div>
            </td>
        </tr>
        <tr>
            <td>지역</td>
            <td>
				<select class="form-control">
				  <option>선택</option>
				  <option>서울</option>
				  <option>경기</option>
				  <option>인천</option>
				  <option>강원</option>
				  <option>충북</option>
				  <option>충남</option>
				  <option>대전</option>
				  <option>세종</option>
				  <option>부산</option>
				  <option>대구</option>
				  <option>울산</option>
				  <option>경남</option>
				  <option>경북</option>
				  <option>광주</option>
				  <option>전북</option>
				  <option>전남</option>
				  
				</select>
				
			</td>
        </tr>
        <tr>
            <td>카카오톡</td>
            <td><input type="text" size=37 name="kaka" id="kaka" value=""></td>
        </tr>
        <tr>
            <td>프로필 사진</td>
            <td><input type="file" size=37 name="profile" value=""></td>
        </tr>
        <tr>
            <td colspan='2' align='center'><input type="submit" value="회원가입"></td>
        </tr>
    </table>
</fom>
</div>

	
</body>
</html>