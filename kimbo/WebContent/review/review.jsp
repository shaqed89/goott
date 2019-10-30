<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/css/uikit.min.css" />
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../plugin/review_style.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>
<script type="text/javascript" src="../plugin/review_script.js"></script>

<script>
	$(function() {
		$("#reply").click(function() {a
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
	<div class="wrap">
		<header>
			<h2 style="text-align:center">Review</h2>
		</header>
		<!--  -->
		<c:forEach var='r' items="${lst}">
		<div class="main">
			<div class="reviewLeft" style="width:200px">
				<div class="reviewImg">
					<a href="">
						<button class="uk-button uk-button-default" uk-tooltip="title:<img src='<%=request.getContextPath()%>/img/review/${r.review_img}'>; pos:right">
							<img src="<%=request.getContextPath()%>/img/review/${r.review_img}" alt="default thumb" class="thumb"/>
						</button>
					</a>
				</div>
			</div>
			<div class="reviewCenter" style="width:800px">
					<ul>
						<li class=uk-alert>${r.num }</li>
						<li class="uk-alert-primary" uk-alert>${r.subject }</li>
						<li class="uk-alert-primary" uk-alert>${r.genre }</li>
						<li class="uk-alert-primary" uk-alert>${r.part }</li>
					</ul>
				<div class="centerContent">
					<ul>
						<li>
							${r.content }
						</li>
					</ul>
				</div>
				<div class="uk-animation-toggle" tabindex="0" id="reply">
					<ul>
						<li><button class="uk-button uk-button-default" type="button"
							uk-toggle="target: #toggle-usage${r.num }" style="border: none; background: #fff; color: blue;">
							▼ 1개의 댓글이 있습니다.
						</button></li>
						<li><p id="toggle-usage${r.num }">➴ 안녕하세요. GOOT.TATTOO입니다. 방문해주셔서 감사합니다.</p></li>
					</ul>	
				</div>
			</div>
			<div class="reviewRight">
				<ul>
					<li>작성자 : ${r.writerId }</li>
					<li uk-tooltip="title: 클릭시 작가 페이지로 이동; pos: top-right">작가 :<a href=""> ${r.tattooistId }</a></li>
					<li>${r.writeDate }</li>
				</ul>
			</div>
		</div>
		</c:forEach>
		<!--  -->
		<ul class="uk-pagination" uk-margin>
		    <li><a href="#"><span uk-pagination-previous></span></a></li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li><a href="#">6</a></li>
		    <li><a href="#">7</a></li>
		    <li><a href="#">8</a></li>
		    <li><a href="#">9</a></li>
		    <li><a href="#">10</a></li>
		    <li><a href="#"><span uk-pagination-next></span></a></li>
		</ul>
		<button class="uk-button uk-button-primary" style="border-radius:8px; float:right; margin-top:20px;">리뷰쓰기</button>
	</div>
</body>
</html>