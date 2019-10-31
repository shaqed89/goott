<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../resource/main_lee.css" type="text/css">
<link rel="stylesheet" href="../resource/header.css" type="text/css">
<link rel="stylesheet" href="../resource/lee_notice.css" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script>
	$(function() {
		$("#lst2>ul>li:nth-child(2)").on({
			click : function() {
				var subContent = $("#subContent");
				if (subContent.css("display") === "block")
					subContent.css("display", "none");
				else if (subContent.css("display") === "none")
					subContent.css("display", "block");
			}
		});
	});
	$(function() {
		$("#lst3>ul>li:nth-child(2)").on({
			click : function() {
				var subContent2 = $("#subContent2");
				if (subContent2.css("display") === "block")
					subContent2.css("display", "none");
				else if (subContent2.css("display") === "none")
					subContent2.css("display", "block");
			}
		});
	});
	$(function() {
		$("#lst4>ul>li:nth-child(2)").on({
			click : function() {
				var subContent3 = $("#subContent3");
				if (subContent3.css("display") === "block")
					subContent3.css("display", "none");
				else if (subContent3.css("display") === "none")
					subContent3.css("display", "block");
			}
		});
	});
	$(function() {
		$("#lst5>ul>li:nth-child(2)").on({
			click : function() {
				var subContent4 = $("#subContent4");
				if (subContent4.css("display") === "block")
					subContent4.css("display", "none");
				else if (subContent4.css("display") === "none")
					subContent4.css("display", "block");
			}
		});
	});
</script>
</head>
<body>
<header class="container">
	<jsp:include page="../inc/lee_header.jsp"></jsp:include>
</header>
<section class="container">
<!-- F&Q -->
	<div id="notice" class="container">
		<h4>F&Q | 자주묻는질문</h4>
		<div id="title">
			<ul style="padding-bottom: 30px">
				<li>TITLE</li>
				<li>WRITER</li>
				<li>WRITEDATE</li>
			</ul>
		</div>
		<div class="accordion" id="accordionExample">
			<c:forEach var="f" items="${lst}">
			<div class="card" style="clear:left">
				<div class="card-header" id="heading${f.num}">
					<h2 class="mb-0">
						<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#collapse${f.num}" aria-expanded="true"
							aria-controls="collapse${f.num}">${f.title}</button>
					</h2>
					<h5 id="s">${f.userName}</h5>
					<h5 id="ss">${f.writeDate}</h5>
				</div>
				<div id="collapse${f.num}" class="collapse"
					aria-labelledby="heading${f.num}" data-parent="#accordionExample">
					<div class="card-body">${f.content}</div>
				</div>
			</div>
			</c:forEach>
		</div>
		<!--  -->
		<div id="noticeFooter">
			<table>
				<tr>
					<td colspan="6">
						<ul class="pagination pagination-sm justify-content-center">
							<li class="page-item"><a href="#" class="page-link">prev</a></li>
							<li class="page-item"><a href="#" class="page-link">1</a></li>
							<li class="page-item"><a href="#" class="page-link">2</a></li>
							<li class="page-item"><a href="#" class="page-link">3</a></li>
							<li class="page-item"><a href="#" class="page-link">4</a></li>
							<li class="page-item"><a href="#" class="page-link">5</a></li>
							<li class="page-item"><a href="#" class="page-link">next</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</div>
	</section>
<footer>
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>
</body>
</html>