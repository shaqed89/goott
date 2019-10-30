<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="shortcut icon" href="http://vandelaydesign.com/favicon.ico">
<link rel="icon" href="http://vandelaydesign.com/favicon.ico">
<link rel="stylesheet" href="../plugin/review_style.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
<script type="text/javascript" src="../plugin/review_script.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap"
	rel="stylesheet">
	
<script>
	$(function() {
		$("#reply").click(function() {
			$("#coment").css("display", "block")
		});
		
		$("#review_write").click(function(){
			location.href="<%=request.getContextPath()%>/review/reviewWrite.do";
		});
	});
</script>
</head>
</head>
<body>
	<div id="wrap">
		<header>
			<h2 style="text-align: center;">Review</h2>
		</header>
		<!--  -->
		<div id="main">
			<div id="reviewLeft" style="width:200px">
				<div id="reviewImg">
					<a href="">
						<button class="uk-button uk-button-default"	id="imgBtn" uk-tooltip="title:<img src='../img/Flower3.jpg'>; pos:right" style="border:none;">
							<img src="../img/Flower3.jpg" alt="default thumb" class="thumb">
						</button>
					</a>
				</div>
			</div>
			<div id="reviewCenter" style="width:800px">
					<ul>
						<li class="uk-alert-primary" uk-alert>no.1</li>
						<li class="uk-alert-primary" uk-alert>주제</li>
						<li class="uk-alert-primary" uk-alert>장르</li>
						<li class="uk-alert-primary" uk-alert>작업부위</li>
					</ul>
				<div id="centerContent">
					<ul>
						<li>
							너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.너무 잘해요.
						</li>
					</ul>
				</div>
				<div class="uk-animation-toggle" tabindex="0" id="reply">
					<ul>
						<li><button class="uk-button uk-button-default" type="button"
							uk-toggle="target: #toggle-usage" style="border: none; background: #fff; color: blue;">
							▼ 1개의 댓글이 있습니다.
						</button></li>
						<li><p id="toggle-usage">➴ 안녕하세요. GOOT.TATTOO입니다. 방문해주셔서 감사합니다.</p></li>
					</ul>
				</div>
			</div>
			<div id="reviewRight">
				<ul>
					<li>조회수 : 5</li>
					<li>작성자 : 이종한</li>
					<li>작가 : 홍길동</li>
					<li>2019-10-29</li>
				</ul>
			</div>
		</div>
		<!--  -->
	</div>
</body>
</html>