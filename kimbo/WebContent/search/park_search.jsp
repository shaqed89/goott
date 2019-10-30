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
		#title {
			color: black;
			margin-top: 30px;
			margin-left: 20px;
		}

		#search {
			border: 1px solid gray;
			margin: 30px auto;
			height: 40px;
			width: 402px;

		}

		#textse {
			color: black;
			font-size: 16px;
			height: 40px;
			width: 350px;
			padding: 10px;
			border: 0;
			outline: none;
			float: left;
		}

		#btnse {
			width: 50px;
			height: 100%;
			border: 0;
			outline: none;
			float: left;
		}

		h2 {
			/* border: 1px solid darkgray; */
			width: 150px;
			text-align: center;
			float: left;
			color: black;
		}

		.form-group {
			float: left;
			color: aliceblue;
			margin-top: 10px;
			width: 800px;
		}

		#min,
		#max {
			float: left;
			width: 150px;
			margin-right: 10px;
		}
		#max{
			margin-left: 20px;
		}

		.form-group label {
			width: 100px;
			margin-left: 10px;
		}


		.la {
			float: left;
			width: 70px;
			margin-right: 20px;
		}
		.la>label{color:black;}

		.arr{
			width:200px; 
			height:250px; 
			margin:10px; 
			color:black;
			font-size:20px;
			text-align:center;
			border-radius: 10px;
			border: 1px solid black;
			float:left;
		}
		
		#arrimg {
			margin: 0 auto;
			width: 1120px;
		}
		
		#arrimg img {
			width: 198.5px;
			height: 200px;
			border-radius: 10px 10px 0 0;
		}
		hr{
			height: 1px;
			background-color: white;
		}
	</style>
	<script>
	$(function(){
		var arr = ['main_slide1.jpg','main_slide2.jpg','main_slide3.jpg','main_slide4.jpg','main_slide5.jpg','main_slide6.jpg'];
		var list = "";
			for(j=0; j<3; j++){
				for (i = 0; i < arr.length; i++) {
					list += "<div class='arr'><a href='#'><img src='../img/main_kim/"+arr[i]+"'></a>dsfd</div>";
				}
				$("#arrimg").html(list);
			}
			$("#btnse").click(function() {


			$('input[name="ra1"]:checked').each(function() {

				var test = $(this).val();

				console.log(test);
				
			});




			$('input[name="ra2"]:checked').each(function() {

				var test = $(this).val();

				console.log(test);

			});
			$('input[name="ra3"]:checked').each(function() {

				var test = $(this).val();
				console.log(test);
			});
			$('input[name="ra4"]:checked').each(function() {

				var test = $(this).val();

				console.log(test);

			});
			$('#min').each(function() {

				var test = $(this).val();

				console.log(test);

			});
			$('#max').each(function() {

				var test = $(this).val();
				
				console.log(test);

			});
			
			});
			$(".class>input").click(function() {

				$("#chveiw").val();


			});
	});
	var inputValue = $("input[name='ra1']:checked").val();
     console.log(inputValue);

	</script>
</head>

<body>
<header class="container">
	<jsp:include page="../Inc/lee_header.jsp"></jsp:include>
</header>
<section class="container">
	<div id="title">
		<label>검색</label>
	</div>
	<div id="search">
		<input id="textse" type="text" placeholder="Search..." />
		<button id="btnse" name="btnse">검색</button>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>지역</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="전체"> 전체
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="서울"> 서울
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="인천"> 인천
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="경기"> 경기
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="강원"> 강원
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="충북"> 충북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="충남"> 충남
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="대전"> 대전
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="광주"> 광주
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="전북"> 전북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="전남"> 전남
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="대구"> 대구
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="울산"> 울산
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="경북"> 경북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra1" value="경남"> 경남
					</label>
				</div>
			</div>
		</div>
	</div>
	<!-- 장르 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>장르</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="전체"> 전체
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Oldschool"> Oldschool
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Irezumi"> Irezumi
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Black&Gray"> Black&Gray
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Chicano"> Chicano
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Tribal"> Tribal
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="NewsSchool"> NewsSchool
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Lettering"> Lettering
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="Coverup"> Coverup
					</label>
				</div>
			</div>
		</div>
	</div>
	<!-- 주제 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>주제</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="전체"> 전체
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="Flower"> Flower
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="snake"> snake
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="Dragon"> Dragon
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="Tiger"> Tiger
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="whale"> whale
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="Mandala"> Mandala
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="Orientalpainting"> Orientalpainting
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="mini"> mini
					</label>
				</div>


			</div>
		</div>
	</div>
	<!-- 부위 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>부위</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="전체"> 전체
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="등"> 등
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="가슴"> 가슴
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="팔"> 팔
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="다리"> 다리
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="쇄골"> 쇄골
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="옆구리"> 옆구리
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="손등"> 손등
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="발등"> 발등
					</label>
				</div>
			</div>
		</div>
	</div>
	<!-- 가격 -->
	<div class="container">
		<div class="row">
			<div class="col">
				<h2>가격</h2>
				<div class="form-group">
					<div class="la"><label for="email">최저가 :</label></div>
					<input type="text" class="form-control" id="min" name="pr" placeholder="0" value="0">
					<div class="la"><label for="email" > ~ 최고가 :</label></div>
					<input type="text" class="form-control" id="max" name="pr" placeholder="0" value="0">
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div id="arrimg" >

	</div>
</section>
<footer class="container" style="clear:left">
	<jsp:include page="../Inc/lee_footer.jsp"></jsp:include>
</footer>
</body>

</html>