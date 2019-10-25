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
			<div class="card" style="clear:left">
				<div class="card-header" id="headingOne">
					<h2 class="mb-0">
						<button class="btn btn-link" type="button" data-toggle="collapse"
							data-target="#collapseOne" aria-expanded="true"
							aria-controls="collapseOne">결제방법</button>
					</h2>
					<h5 id="s">Good.D TATTOO</h5>
					<h5 id="ss">2019-10-23</h5>
				</div>
				<div id="collapseOne" class="collapse"
					aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body">현금결제만 가능합니다.</div>
				</div>
			</div>
			<!--  -->
			<div class="card">
				<div class="card-header" id="headingTwo">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button"
							data-toggle="collapse" data-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							2019년 OFF시즌 할인특가</button>
					</h2>
					<h5 id="s">Good.D TATTOO</h5>
					<h5 id="ss">2019-10-23</h5>
				</div>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionExample">
					<div class="card-body">
						<img src="../img/18.jpg">Good Tattoo가 시즌 off를 맞이하여 선착순 할인 행사를 진행합니다.
					</div>
				</div>
			</div>
			
			<!--  -->
			<div class="card">
				<div class="card-header" id="headingThree">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button"
							data-toggle="collapse" data-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							사은품 프로모션 안내</button>
					</h2>
					<h5 id="s">Good.D TATTOO</h5>
					<h5 id="ss">2019-10-23</h5>
				</div>
				<div id="collapseThree" class="collapse"
					aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body">안녕하세요. 구트타투입니다.^^<br/>2019-10-23 부터 일주일간 상품을 구매하신분에 한하여 작은 선물을 드립니다!</div>
				</div>
			</div>
			<!--  -->
			<div class="card">
				<div class="card-header" id="headingFour">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button"
							data-toggle="collapse" data-target="#collapseFour"
							aria-expanded="false" aria-controls="collapseFour">
							구트타투 여름 워크샵 안내</button>
					</h2>
					<h5 id="s">Good.D TATTOO</h5>
					<h5 id="ss">2019-10-23</h5>
				</div>
				<div id="collapseFour" class="collapse"
					aria-labelledby="headingFour" data-parent="#accordionExample">
					<div class="card-body">일정 : 2019-08-1 ~ 2019-8-7일 워크샵으로 인해 영업하지 않습니다. 자세한 사항은 담당 타투이스트 작가와 상담하세요.</div>
				</div>
			</div>
			<!--  -->
			<div class="card">
				<div class="card-header" id="headingFive">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button"
							data-toggle="collapse" data-target="#collapseFive"
							aria-expanded="false" aria-controls="collapseFive">
							으으으으으으으응</button>
					</h2>
					<h5 id="s">Good.D TATTOO</h5>
					<h5 id="ss">2019-10-23</h5>
				</div>
				<div id="collapseFive" class="collapse"
					aria-labelledby="headingFive" data-parent="#accordionExample">
					<div class="card-body">안녕하세요. 구트타투입니다.^^<br/>2019-10-23 부터 일주일간 상품을 구매하신분에 한하여 작은 선물을 드립니다!</div>
				</div>
			</div>
		</div>
		<!--  -->
		<footer id="noticeFooter">
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
		</footer>
	</div>
</body>
</html>
</body>
</html>