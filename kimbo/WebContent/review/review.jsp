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
<link rel="icon" href="http://vandelaydesign.com/favicon.ico">
<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/uikit@3.2.2/dist/js/uikit-icons.min.js"></script>
<script type="text/javascript" src="../plugin/review_script.js"></script>

<script>
	$(function() {
	 $("#review_write").click(function(){
			location.href="<%=request.getContextPath()%>/review/reviewWrite.do";
		});
	$("#tgl").click(function(){
		$("#toggle-usage").css("display","block");
		});
	});
</script>
<style>
#removeDel{font-size:15px;float:right;right:50px;position:relative;left:10px;}
#removeDel input:first-of-type{position:relative;right:10px;border-radius:5px;}
#removeDel input:last-of-type{position:relative;right:12px;border-radius:5px;}
</style>
</head>
</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include> 
</header>
<section>
<div class="wrap">
	<div>
		<h2 style="text-align:center">Review</h2>
	</div>
	<div class="uk-card uk-card-default uk-card-body" style="z-index:100%" uk-sticky="bottom: #offset">
		<input type="submit"  class="uk-button uk-button-primary" id="review_write" name="review_write" value="글쓰기" style="border-radius:8px;"/>
	
	</div>
	<!--  -->
	<c:forEach var='r' items="${lst}">
	<div class="main">
		<div class="reviewLeft" style="width:200px">
			<div class="reviewImg" uk-lightbox>
				<a class="uk-button uk-button-default" href="<%=request.getContextPath()%>/img/review/${r.review_img}" data-caption="Image">
					<img src="<%=request.getContextPath()%>/img/review/${r.review_img}" alt="default thumb" class="thumb" uk-tooltip="사진을 클릭하면 크게 볼수있습니다."/>	
				</a>
			</div>
		</div>
		<div class="reviewCenter" style="width:800px">
				<ul>
					<li class="uk-alert">${r.num }</li>
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
			<div id="removeDel">
				<c:if test="${userId==r.writerId }">
					<a href="<%=request.getContextPath() %>/review/reviewEdit.do?num=${r.num}"><input type="submit" value="수정" class="uk-button uk-button-primary"></a>
					<a href="<%=request.getContextPath() %>/review/reviewDeleteOk.do?num=${r.num}"><input type="submit" value="삭제" class="uk-button uk-button-primary"></a>
				</c:if>
			</div>
	<%-- 	 <div class="uk-animation-toggle" tabindex="0" id="reply">
				<ul>
					<li><button class="uk-button uk-button-show" type="button"
						uk-toggle="target: #toggle-usage${r.num}" id="tgl" style="border: none; background: #fff; color: blue;">
						▼ 1개의 댓글이 있습니다.
					</button></li>
					<li><p id="toggle-usage${r.num }" class="" hidden>➴ 안녕하세요. GOOT.TATTOO입니다. 방문해주셔서 감사합니다.</p></li>
				</ul>	 
			</div> --%>
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
	<a class="uk-button uk-button-danger" href="#scrUp" id="scrDown" uk-scroll>Scroll up</a>
</div>
</section>
<footer style="clear:left; background-color:#191919">
<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>