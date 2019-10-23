<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<style>
#footer{width:1200px;height:130px;font-size:small;background:#191919;margin:0 auto;padding-right:10px;}
li{list-style-type:none;color:gray;}
li a{text-decoration:none;color:gray;}
a{text-decoration:none;color:#fff;}
#ft3, #ft4{border:1px solid lightgray;}
#ftLeft{width:600px;height:130px;}
#ftLeft>ul>li>a{margin:0 10px 0 0;line-height:70px}
a:hover, a:link{color:#fff;}
#ftLeft>ul>li{font-size:11.5px;float:left;position:relative;margin:0 5px 0 0;}
#ftRight{width:600px;}

#face{left:965px;bottom:105px;position:relative;}
#face a{position:absolute;}

#insta{left:1000px;bottom:105px;position:relative;}
#insta a{position:absolute;}

#ytube{left:930px;bottom:105px;position:relative;}
#ytube a{position:absolute;}
#ytube img{border-radius:10px;}

#face:hover a:first-of-type {display: none;}
#face a:last-of-type {display: none;}
#face:hover a:last-of-type {display: block;}

#insta:hover a:first-of-type {display: none;}
#insta a:last-of-type {display: none;}
#insta:hover a:last-of-type {display: block;}

#ytube:hover a:first-of-type {display: none;}
#ytube a:last-of-type {display: none;}
#ytube:hover a:last-of-type {display: block;}
#gtHome{float:right;left:600px;font-size:3em;bottom:55px;position:relative;border-top:1px solid gray;font-family: 'Indie Flower', cursive;}
#gtHome a{color:#FFF;}
</style>
<script>
	$(function(){
		$("#face1").on({mouseenter:function(){
			$("#face2").hide("fast");	
		}});
	});
</script>
</head>
<body>
<div id="footer">
	<div id="ftLeft">
		<ul>
			<li>
				<a href="#">서비스이용약관</a>
				<a href="#">개인정보처리방침</a>
				<a href="#" id="ft3">통신판매사업자정보확인</a>
				<a href="#" id="ft4">에스크로서비스 가입확인</a>
				<br/>
				<li>(주)구트타투 |</li>
				<li> 대표 : 김형재 |</li>
				<li> 서울시 구로구 구로동 구트타투빌딩 | </li>
				<li> TEL 02.123.1234 |</li>
				<li> FAX 02.123.2134</li>
				<li> 사업자등록번호 120-11-12345 |</li>
				<li> 통신판매업신고번호 구로 제 00888호 |</li>
				<li> 개인정보보호책임자 : 홍길동</li>	
		</ul>
	</div>
	<div id="ftRight">
		<div id="face">
			<a href="#"><img src="facebook2.png" id="face1"></a>
			<a href="#"><img src="facebook.png" id="face2"></a>
		</div>
		<div id="insta">
			<a href="#"><img src="insta.png" id="insta1"></a>
			<a href="#"><img src="insta2.png" id="insta2"></a>
		</div>
			<div id="ytube">
			<a href="#"><img src="ytube.png" id="ytube1"></a>
			<a href="#"><img src="ytube2.png" id="ytube2"></a>
		</div>
		<div id="gtHome">
			<a href="#">Good.D TATTOO</a><br/>
		</div>
	</div>
</div>
</body>
</html>