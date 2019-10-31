<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good.D Tattoo</title>

<link rel="stylesheet" href="../plugin/jquery-ui.min.css" type="text/css"/>
<link rel="stylesheet" href="../plugin/jquery.bxslider.css" type="text/css"/>
<link rel="stylesheet" href="https:/stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Indie+Flower|Nanum+Gothic+Coding&display=swap" rel="stylesheet">

<script src="https:/ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../plugin/jquery.bxslider.js"></script>
<script src="../plugin/jquery-ui.min.js"></script>
<script src="../plugin/jquery.backstretch.min.js"></script>
<script src="https:/stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<link rel="stylesheet" href="../resource/kimbo.css" type="text/css"/>
<script src="../resource/kimbo.js"></script>

</head>
<body>
<!-- Header Include -->
<jsp:include page="../Inc/kimbo_header.jsp"></jsp:include>
<div id="content" class="container">
	<div id="main_page" class="carousel slide">
		<div id="main_page_slide" class="carousel-inner">
			<div id="main1"class="carousel-item active">
				<div id="main_top5_title">
					<label>Top5</label>
				</div>
				<ul id="main_top5"></ul>
			</div>
			<div id="main2"class="carousel-item">
				<div id="main2_title"><label>Genre</label></div>
				<div id="main2_content">
					<div><a href="#" id="ir"><img src="../img/Irezumi31.jpg"/><div class="text" id="main2_a">Irezumi</div></a></div>
					<div><a href="#" id="bg"><img src="../img/Black&Gray16.jpg"/><div class="text" id="main2_b">Black&Gray</div></a></div>
					<div><a href="#" id="ch"><img src="../img/Chicano17.jpg"/><div class="text" id="main2_c">Chicano</div></a></div>
					<div><a href="#" id="tb"><img src="../img/Tribal1.jpg"/><div class="text" id="main2_d">Tribal</div></a></div>
					<div><a href="#" id="ns"><img src="../img/NewsSchool10.jpg"/><div class="text" id="main2_e">NewsSchool</div></a></div>
					<div><a href="#" id="os"><img src="../img/Oldschool24.jpg"/><div class="text" id="main2_f">Oldschool</div></a></div>
					<div><a href="#" id="lt"><img src="../img/Lettering26.jpg"/><div class="text" id="main2_g">Lettering</div></a></div>
					<div><a href="#" id="cu"><img src="../img/Coverup21.jpg"/><div class="text" id="main2_h">Coverup</div></a></div>
				</div>
			</div>
			<div id="main3"class="carousel-item">
				<div id="main3_title"><label>Subject</label></div>
				<div id="main3_content">
					<div><a href="#" id="fl"><img src="../img/Flower25-2.jpg"/><div class="text" id="main3_a">Flower</div></a></div>
					<div><a href="#" id="sk"><img src="../img/snake1.jpg"/><div class="text" id="main3_b">snake</div></a></div>
					<div><a href="#" id="dg"><img src="../img/Dragon10.jpg"/><div class="text" id="main3_c">Dragon</div></a></div>
					<div><a href="#" id="tg"><img src="../img/Tiger1.jpg"/><div class="text" id="main3_d">Tiger</div></a></div>
					<div><a href="#" id="wh"><img src="../img/whale10.jpg"/><div class="text" id="main3_e">whale</div></a></div>
					<div><a href="#" id="md"><img src="../img/Mandala21.jpg"/><div class="text" id="main3_f">Mandala</div></a></div>
					<div><a href="#" id="op"><img src="../img/Orientalpainting10.jpg"/><div class="text" id="main3_g">Orientalpainting</div></a></div>
					<div><a href="#" id="mi"><img src="../img/mini5.jpg"/><div class="text" id="main3_h">mini</div></a></div>
				</div>
			</div>
			<!-- 아이콘 -->
			<ul class="carousel-indicators">
				<li data-target="#main_page" data-slide-to='0' class='active'></li>
				<li data-target="#main_page" data-slide-to='1'></li>
				<li data-target="#main_page" data-slide-to='2'></li>
			</ul>
			<!-- 좌우버튼 -->
			<a href="#main_page" class="carousel-control-prev" data-slide="prev" style="width:50px"><span class="carousel-control-prev-icon"></span></a>
			<a href="#main_page" class="carousel-control-next" data-slide="next" style="width:50px"><span class="carousel-control-next-icon"></span></a>		
		</div>
	</div>
</div>
<!-- footer Include -->
<jsp:include page="../Inc/kimbo_footer.jsp"></jsp:include>
</body>
</html>