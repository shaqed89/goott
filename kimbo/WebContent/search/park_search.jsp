<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Good.D Tattoo</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<style>
		section{font-family: 'Gaegu', cursive; clear:left;}
		select{height: 40px; width:150px; vertical-align: middle; border-radius: 3px;}
		
		
		#title {color: black; margin-top: 30px; margin-left: 20px;}
		#search {margin: 30px auto;	height: 40px; width: 450px;}
		#textse {color: black; font-size: 16px;	height: 40px; width: 350px;	padding: 10px; margin-right: 5px;
			border: 1px solid gray; border-radius: 3px; outline: none; float: left;}
		#btnse {width: 50px; height: 100%; border: 0; outline: none; float: left;}
		h2 {width: 150px; text-align: center; float: left; color: black;}
		.form-group {float: left; color: aliceblue; width: 800px;}
		#min, #max {float: left; width: 150px; margin-right: 10px;}
		#max{margin-left: 20px;}
		.form-group label {width: 100px; margin-left: 10px;}
		.la {float: left; width: 70px; margin-right: 20px; }
		.la>label{color:black; height: 40px; line-height: 40px; font-size: 20px;}
		.arr{width:200px; height:250px; margin:10px; color:black; font-size:20px; text-align:center;
			border-radius: 10px; border: 1px solid black; float:left;}
		#arrimg {margin: 0 auto; width: 1120px;}
		#arrimg img { width: 198.5px; height: 200px; border-radius: 10px 10px 0 0;}
		hr{height: 1px; background-color: white;}
	</style>
	<script>
	$(function(){
		/* var arr = ['main_slide1.jpg','main_slide2.jpg','main_slide3.jpg','main_slide4.jpg'];
		var list = "";
			for(j=0; j<3; j++){
				for (i = 0; i < arr.length; i++) {
					list += "<div class='arr'><a href='#'><img src='../img/main_kim/"+arr[i]+"'></a>dsfd</div>";
				}
				$("#arrimg").html(list);
			} */
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
			
		     /* 지역설정 */
		 	var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
		 	var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
		 	var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
		 	var area3 = ["대덕구","동구","서구","유성구","중구"];
		 	var area4 = ["광산구","남구","동구","북구","서구"];
		 	var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
		 	var area6 = ["남구","동구","북구","중구","울주군"];
		 	var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
		 	var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
		 	var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
		 	var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
		 	var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
		 	var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
		 	var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
		 	var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
		 	var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
		 	var area16 = ["서귀포시","제주시","남제주군","북제주군"];

			// 시/도 선택 박스 초기화
			
			$("select[name^=sido]").each(function() {
			 $selsido = $(this);
			 $.each(eval(area0), function() {
			  $selsido.append("<option value='"+this+"'>"+this+"</option>");
			 });
			 $selsido.next().append("<option value=''>구/군 선택</option>");
			});
			
			
			
			// 시/도 선택시 구/군 설정
			
			$("select[name^=sido]").change(function() {
			 var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
			 var $gugun = $(this).next(); // 선택영역 군구 객체
			 $("option",$gugun).remove(); // 구군 초기화
			
			 if(area == "area0")
			  $gugun.append("<option value=''>구/군 선택</option>");
			 else {
			  $.each(eval(area), function() {
			   $gugun.append("<option value='"+this+"'>"+this+"</option>");
			  });
			 }
			});
			
	});
	var inputValue = $("input[name='ra1']:checked").val();
     console.log(inputValue);
	   
	</script>
</head>

<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include>
</header>
<section>
	<div id="search">
		<input type="text" id="textse" placeholder="Search..." />
		<input type="submit" id="btnse" name="btnse" value="검색" class="btn btn-primary"/>
	</div>
	<form>
		<div class="container">
			<div class="row">
				<h2>지역</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<input type="button" id="addr_all" name="addr_all" value="전체" class="btn btn-primary"/>
					<select name="sido" id="sido"></select>
					<select name="gugun" id="gugun"></select>
				</div>
			</div>
		</div>
		<!-- 장르 -->
		<div class="container">
			<div class="row">
				<h2>장르</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="전체"> 전체
					</label>
					<c:forEach var="g" items="${g_list}">
					<label class="btn btn-primary">
						<input type="radio" name="ra2" value="${g.genre}"/> ${g.genre}
					</label>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 주제 -->
		<div class="container">
			<div class="row">
				<h2>주제</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra3" value="전체"> 전체
					</label>
					<c:forEach var="s" items="${s_list}">
						<label class="btn btn-primary">
							<input type="radio" name="ra2" value="${s.subject}"/> ${s.subject}
						</label>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 부위 -->
		<div class="container">
			<div class="row">
				<h2>부위</h2>
				<div class="btn-group-toggle" data-toggle="buttons">
					<label class="btn btn-primary">
						<input type="radio" name="ra4" value="전체"> 전체
					</label>
					<c:forEach var="p" items="${p_list}">
						<label class="btn btn-primary">
							<input type="radio" name="ra2" value="${p.part}"/> ${p.part}
						</label>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- 가격 -->
		<div class="container">
			<div class="row">
				<h2>가격</h2>
				<div class="form-group">
					<div class="la"><label for="email">최저가 :</label></div>
					<input type="text" class="form-control" id="min" name="pr" placeholder="0" value="0">
					<div class="la"><label for="email" > ~ 최고가 :</label></div>
					<input type="text" class="form-control" id="max" name="pr" placeholder="0" value="0">
				</div>
			</div>
		</div>
	</form>
	<hr/>
	<div id="arrimg" >
		<c:forEach var="t" items="${t_list}">
			<div class='arr'><a href='#'>
			<img src="<%=request.getContextPath()%>/img/tattoo/${t.filename1}"></a></div> 
		</c:forEach>
	</div>
</section>
<footer style="clear:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>

</html>