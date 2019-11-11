<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good.D Tattoo</title>
<link rel="stylesheet" href="../plugin/jquery-ui.min.css" type="text/css"/>
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../plugin/monthly.css">

<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../plugin/jquery-ui.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../plugin/monthly.js"></script>

<!-- Section-->
<!-- <link rel="stylesheet" href="../resource/my_page.css" type="text/css" />
<script src="../resource/my_page.js"></script> -->

</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include>
</header>
<section>
<div class="container">
	<div id="my_page_side">
		<div id="my_title">My page</div>
		<div id="side_menu">
			<ul class="nav">
				<li class="nav-item"><a href="#my_cal" class="nav-link"> 스케쥴</a></li>
				<li class="nav-item"><a href="#my_like" class="nav-link"> 관심도안</a></li>
				<li class="nav-item"><a href="#my_post" class="nav-link"> 게시물관리</a></li>
				<li class="nav-item"><a href="<%=request.getContextPath()%>/register/RegEdit.do"> 개인정보수정</a></li>
			</ul>
		</div>
	</div>
	<div id="my_page_content">
		<!-- 일정관리 -->
		<div id="my_cal">
			<!-- 달력 -->
			<div id="my_calendar" class="monthly"></div>
			<!-- 일정관리 버튼 -->
			<div id="schedule_btn" style="text-align:right">
				<button id="schedule_add" class="btn btn-secondary">일정등록</button>
				<button id="schedule_edit" class="btn btn-secondary">일정수정</button>
				<button id="schedule_del" class="btn btn-secondary">일정삭제</button>
			</div>
			<!-- 일정등록 다이얼로그 -->
			<div id="add_dialog" title="일정등록">
				<h2>일정을 등록하세요.</h2>
				<label for="schedule_name">일정이름 :</label> <input type="text" id="schedule_name"/>
				<label for="schedule_start_date">시작날짜 :</label> <input type="text" id="schedule_start_date"/>
				<label for="schedule_end_date">종료날짜 :</label> <input type="text" id="schedule_end_date"/>
				<label for="schedule_start_time">시작시간 :</label> 
					<select id="schedule_start_AMPM">
						<option>AM</option>
						<option>PM</option>
					</select>
					<select id="schedule_start_time" style="width:147px">
	
					</select>
				<label for="schedule_end_time">종료시간 :</label>
					<select id="schedule_end_AMPM">
						<option>AM</option>
						<option>PM</option>
					</select>
					<select id="schedule_end_time" style="width:147px">
					</select>
				<label for="schedule_color">색상선택 :</label>
					<select id="schedule_color" style="width:199px;">
						<option>red</option>
						<option>blue</option>
						<option>green</option>
						<option>yellow</option>
					</select>
			</div>
		</div>
		<hr/>
		<div id="my_like_post">
			<!-- 관심도안 -->
			<div id="my_like">
				<div class="card">
					<div class="card-header">
						<h2>내 관심도안</h2>
						<a href="#like_list" data-toggle="collapse" data-parent="#my_like">▼</a>
						</div>
					<div id="like_list" class="collapse">
					<table class="table">
						<thead>
						<tr class="table-secondary">
							<td style="width:200px">IMAGE</td>
							<td>TITLE</td>
							<td style="width:200px">TATTOOIST</td>
							<td style="width:200px">DATE</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td><img src="../img/Lettering26.jpg"></td>
							<td><a href="#">lettring</a></td>
							<td><a href="#">tatooist1</a></td>
							<td>2018-10-21</td>
						</tr>
						<tr>
							<td><img src="../img/Lettering26.jpg"></td>
							<td><a href="#">lettring</a></td>
							<td><a href="#">tatooist1</a></td>
							<td>2018-10-21</td>
						</tr>
						<tr>
							<td><img src="../img/Lettering26.jpg"></td>
							<td><a href="#">lettring</a></td>
							<td><a href="#">tatooist1</a></td>
							<td>2018-10-21</td>
						</tr>
						<tr>
							<td><img src="../img/Lettering26.jpg"></td>
							<td><a href="#">lettring</a></td>
							<td><a href="#">tatooist1</a></td>
							<td>2018-10-21</td>
						</tr>
						<tr>
							<td><img src="../img/Lettering26.jpg"></td>
							<td><a href="#">lettring</a></td>
							<td><a href="#">tatooist1</a></td>
							<td>2018-10-21</td>
						</tr>
						</tbody>
						<tfoot>
						<tr>
							<td colspan="4">
								<ul class="pagination pagination-sm">
									<li class="page-item disabled"><a href="#" class="page-link">prev</a></li>
									<li class="page-item"><a href="#" class="page-link">1</a></li>
									<li class="page-item"><a href="#" class="page-link">2</a></li>
									<li class="page-item active"><a href="#" class="page-link">3</a></li>
									<li class="page-item"><a href="#" class="page-link">4</a></li>
									<li class="page-item"><a href="#" class="page-link">5</a></li>
									<li class="page-item"><a href="#" class="page-link">next</a></li>
								</ul>
							</td>
						</tr>
						</tfoot>
					</table>
					</div>
				</div>
			</div>
			<br/>
			<!-- 내 게시물 관리 -->
	 		<div id="my_post">
				<div class="card">
					<div class="card-header">
						<h2>내 게시물 관리</h2>
						<a href="#post_list" data-toggle="collapse" data-parent="#my_post">▼</a>
						</div>
					<div id="post_list" class="collapse">
						<table class="table">
							<thead>
							<tr class="table-secondary">
								<td style="width:100px">NO</td>
								<td>TITLE</td>
								<td style="width:200px">NAME</td>
								<td style="width:200px">DATE</td>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>1</td>
								<td><a href="#">후기 남겨요~~</a></td>
								<td><a href="#">guest1</a></td>
								<td>2018-12-19</td>
							</tr>
							<tr>
								<td>1</td>
								<td><a href="#">후기 남겨요~~</a></td>
								<td><a href="#">guest1</a></td>
								<td>2018-12-19</td>
							</tr>
							<tr>
								<td>1</td>
								<td><a href="#">후기 남겨요~~</a></td>
								<td><a href="#">guest1</a></td>
								<td>2018-12-19</td>
							</tr>
							<tr>
								<td>1</td>
								<td><a href="#">후기 남겨요~~</a></td>
								<td><a href="#">guest1</a></td>
								<td>2018-12-19</td>
							</tr>
							<tr>
								<td>1</td>
								<td><a href="#">후기 남겨요~~</a></td>
								<td><a href="#">guest1</a></td>
								<td>2018-12-19</td>
							</tr>
							</tbody>
							<tfoot>
							<tr>
								<td colspan="4">
									<ul class="pagination pagination-sm">
										<li class="page-item disabled"><a href="#" class="page-link">prev</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item active"><a href="#" class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">4</a></li>
										<li class="page-item"><a href="#" class="page-link">5</a></li>
										<li class="page-item"><a href="#" class="page-link">next</a></li>
									</ul>
								</td>
							</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<footer style="clear:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>