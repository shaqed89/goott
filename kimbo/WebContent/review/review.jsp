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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../plugin/review_script.js"></script>
<script>

</script>
</head>
<body>
<div id="wrap">
	<header>
		<h2 style="text-align:center;">Review</h2>
	</header>
	<ul id="products" class="clearfix list">
		<li style="position:absolute;">1</li>
		<li class="clearfix" id="reviewOne">
			<section class="left">
				<a href=""><img src="../img/Flower3.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Flower | 등</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 이종한</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute; background:#d7dfe0">2</li>
		<li class="clearfix alt" id="reviewTwo">
			<section class="left">
				<a href=""><img src="../img/Lettering8-1.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Lettering | 팔</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 김형재</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute;">3</li>
		<li class="clearfix third" id="reviewThree">
			<section class="left">
				<a href=""><img src="../img/Mandala21.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Mandala | 옆구리</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 김진수</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute; background:#d7dfe0">4</li>
		<li class="clearfix alt" id="reviewFour">
			<section class="left">
				<a href=""><img src="../img/Mandala4.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Mandala | 등</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right" >
				<span class="writer">작성자 : 박해영</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute;">5</li>
		<li class="clearfix" id="reviewFive">
			<section class="left">
				<a href=""><img src="../img/mini5.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Mini | 목</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 김구용</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute; background:#d7dfe0">6</li>
		<li class="clearfix alt third" id="reviewSix">
			<section class="left">
				<a href=""><img src="../img/mini7.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Mini | 손가락</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 최민성</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute;">7</li>
		<li class="clearfix" id="reviewSeven">
			<section class="left">
				<a href=""><img src="../img/NewsSchool10.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>NewSchool | 팔</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 최민지</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute; background:#d7dfe0">8</li>
		<li class="clearfix alt" id="reviewEight">
			<section class="left">
				<a href=""><img src="../img/NewsSchool16.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>NewSchool | 팔</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 정운하</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
		<li style="position:absolute;">9</li>
		<li class="clearfix third" id="reviewNine">
			<section class="left">
				<a href=""><img src="../img/snake6.jpg" alt="default thumb" class="thumb" style="width:120px; height:120px"></a>
				<h3>Snake | 등</h3>
				<span class="meta">너무 만족합니다.^^</span>
			</section>
			<section class="right">
				<span class="writer">작성자 : 김동환</span>
				<span class="hit">조회수 : 5 </span>
			</section>
		</li>
	</ul>
	<div>
		&nbsp;
			<table id="pageNxt">
				<tr>
					<td colspan="6">
						<div class="pagination">
					    	<a href="#">&laquo;</a>
							<a class="active" href="#">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
							<a href="#">6</a>
							<a href="#">&raquo;</a>
						</div>
					</td>
				</tr>
			</table>
			<input type="button" class="btn btn-secondary" id="write" value="글쓰기">
	</div>
</div>
</body>
</html>