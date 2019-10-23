<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good.D Tattoo</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resource/main_lee.css" type="text/css">
<link rel="stylesheet" href="../resource/header.css" type="text/css">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>
	.container{width:1200px; max-width:1200px; padding:0; position:realative; }
	footer{clear:left;}
	
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
			
			/* background: black; */
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
			color: black;
			margin-top: 10px;
			width: 800px;
		}
		#min,
		#max {
			float: left;
			width: 150px;
			margin-right: 10px;
		}
		.form-group label {
			width: 100px;
		}
		.la {
			float: left;
			width: 70px;
			margin-right: 20px;
		}
		#arrimg {
			margin: 0 auto;
			width: 1120px;
		}		
		.arr{
			width:200px; 
			height:250px; 
			margin:10px; 
			float:left;
			color:black;
			font-size:20px;
			text-align:center;
			border-radius: 10px;
			border: 1px solid black;
		}
		#arrimg>div>p{
			width:200px; 		
			color: darkgray;
			font-size:10px;
			text-align:center;
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
	var arr = ['t1_1.jpg','t1_2.jpg','t1_3.jpg','t1_4.jpg','t1_5.jpg','t1_6.jpg','t1_7.jpg','t1_8.jpg'
				,'t1_9.jpg','t1_10.jpg','t1_11.jpg','t1_12.jpg','t1_13.jpg','t1_14.jpg','t1_15.jpg'];
	var name_arr = ['tattooist1','tattooist2','tattooist3','tattooist4','tattooist5',
					'tattooist1','tattooist2','tattooist3','tattooist4','tattooist5',
					'tattooist1','tattooist2','tattooist3','tattooist4','tattooist5',];
	var tag= ['#홍대 #이레즈미','#홍대 #뉴스쿨','#마포전지역 #모든장르','#커버업','#뉴스쿨 #올드스쿨','#강남','#할인 이벤트중',
			'#블랙앤그레이','#송파구 전지역','#연습 #미친가격','#레터링 #미니타투','#소통','#타투 #치카노','#커플타투','#긴팔 #반팔 #긴다'];
	var list = "";
		for(j=0; j<3; j++){
			for (i = 0; i < arr.length; i++) {
				list += "<div class='arr'><a href='#'><img src='../img/tattooist/"+arr[i]+"'></a>"+name_arr[i]+"<br/><p>"+tag[i]+"</p></div>";
			}
			$("#arrimg").html(list);
		} 
	$("#btnse").click(function() {

		$('input[name="ra"]:checked').each(function() {

			var test = $(this).val();

			console.log(test);

		});

	});
});
</script>
</head>

<body>
	
<header class="container">
	<jsp:include page="../Inc/kimbo_header.jsp"></jsp:include>
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
						<input type="radio" name="ra" value="all"> 전체
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="서울"> 서울
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="인천"> 인천
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="경기"> 경기
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="강원"> 강원
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="충북"> 충북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="충남"> 충남
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="대전"> 대전
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="광주"> 광주
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="전북"> 전북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="전남"> 전남
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="대구"> 대구
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="울산"> 울산
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="경북"> 경북
					</label>
					<label class="btn btn-primary">
						<input type="radio" name="ra" value="경남"> 경남
					</label>
				</div>
			</div>
		</div>
	</div>
	<hr/>
	<div id="arrimg" >
		
	</div>
</section>
<footer class="container" style="clear:left">
	<jsp:include page="../Inc/kimbo_footer.jsp"></jsp:include>
</footer>	
	
</body>

</html>