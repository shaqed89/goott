<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../plugin/jquery-ui.min.css" type="text/css"/>
<link rel="stylesheet" href="../plugin/jquery.bxslider.css" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../plugin/jquery.bxslider.js"></script>
<script src="../plugin/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Good.D Tattoo_detail</title>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	/* *{margin: 0px;padding: 0px;font-family:'Nanum Gothic', sans-serif; font-size:16px; color:#222;}
	body{border:1px solid gray;}
	 */
	/* #box {border:1px solid red;width:600px;height:400px;float:left;position:absolute;z-index:5;}
	#box>img {position:absolute;z-index:10;top:365px;left:10px;}
	#bxSlide img {width:600px;height:350px;}
	#top {border:1px solid yellow;height:400px;}
	#exp {position:relative;width:400px;height:400px;float:right;border:1px solid blue;}
	#price {width:400px;height:100px;background-color:lightyellow;z-index:5;}
	#exp>div:nth-child(2) img {position:relative;width:400px;height:340px;z-index:10;margin-top:-40px;} */
	
	/**/
	textarea { width:100%;}
	select,input,img, button {vertical-align:middle;}
	ul, ol {list-style-type:none; }
	.hide,legend,hr,caption span {position:absolute; left:-3000%;}
	em, address { font-style:normal;}
	table { border-collapse:collapse; border-spacing:0; width:100%;}
	a { color:#666; text-decoration:none;}
	a:focus,
	a:hover { text-decoration:none;}
	fieldset, img, button{border:0;}
	
	input[type=text]::-ms-clear {display: none;}
	
	select { padding:0 0 0 5px; height:38px; border:1px solid #e3e3e3;}
	textarea,
	input[type="file"],
	input[type="password"],
	input[type="text"] { text-indent:4px; border:1px solid #ccc;}
	 
	select:focus, textarea:focus,
	input[type="password"]:focus,
	input[type="file"]:focus,
	input[type="text"]:focus { border:1px solid #555;}
	 
	textarea[readonly="readonly"],
	button[readonly="readonly"],
	select[readonly="readonly"],
	input[readonly="readonly"],
	 
	textarea[disabled="disabled"],
	button[disabled="disabled"],
	select[disabled="disabled"],
	input[disabled="disabled"] { background:#f5f5f5; border-color:#d4d4d4;}
	 
	input[type="password"],
	input[type="file"],
	input[type="text"] { height:34px; line-height:34px;}
	input[type="file"] { width:100%;}
	input[type="radio"] { vertical-align:text-bottom;}
	 
	.clear { zoom:1;clear:both;}
	.clear:after { content:""; display:block; clear:both;}
	
	.skip { position:absolute; left:0; top:-100px; z-index:1000; width:100%; height:60px; line-height:60px; text-align:center; font-size:20px; color:#fff; transition:all 0.5s; background:#666;}
	.skip:focus { top:0;}
	
	
	.product_view { position: relative;padding: 0 0 0 395px; width: 962px; box-sizing: border-box;}
	.product_view .img { position: absolute; left: 0; top: 0;}
	.product_view .img > img { width: 368px; height: 370px; border:1px solid #e8e8e8; }
	.product_view .img li:after { content: ""; display: block; clear: both;}
	.product_view .img li { float: left; padding: 10px 10px 0 0;}
	.product_view .img li.on img { border-color:#0a56a9;}
	.product_view .img li img { width: 68px; height: 68px; border:1px solid #e8e8e8;}
	.product_view h2 { margin: 0 0 15px; padding: 0 0 20px; border-bottom:2px solid #333; font-size:24px; color:#232323; line-height: 26px;}
	.product_view table th,
	.product_view table td { padding:14px 0; font-size: 15px; color:#444; text-align: left;}
	.product_view table td.price { font-size: 22px;}
	.product_view table td.total { font-size:19px; color:#0a56a9;}
	.product_view table td.total b { font-size: 22px;}
	.product_view table .length { position: relative; width: 71px; height: 32px; border:1px solid #c6c6c6;}
	.product_view table .length input { width:44px; height: 30px; border:none;border-right:1px solid #c6c6c6; text-align:center; }
	.product_view table .length a { overflow: hidden;position: absolute; right: 0; width: 26px; height: 16px; color:transparent;}
	.product_view table .length a:nth-of-type(1) {  top: 0;background: url("../img/ico_up.png") no-repeat center;}
	.product_view table .length a:nth-of-type(2) { bottom:0; background: url("../img/ico_down.png") no-repeat center; border-top:1px solid #c6c6c6;}
	.product_view table select { width:100%; border:1px solid #c6c6c6; box-sizing: border-box;  background: url("../img/ico_select.png") no-repeat right 11px center;appearance:none; -webkit-appearance:none; -moz-appearance:none;}
	.product_view table select::-ms-expand { display: none;}
	.product_view .btns { padding: 45px 0 0; text-align: center;}
	.product_view .btns > a { display: inline-block; width: 136px; height: 42px;border-radius: 2px; font-size: 16px; color:#fff; line-height: 42px; }
	.product_view .btns > a.btn1 { background: #666;}
	.product_view .btns > a.btn2 { background: #0a56a9;}
	/**/
	#title{margin:0 0 0 20%;font-weight:800;color:#000;}
	#apply {width:400px;height:400px;background-color:white;overflow:hidden;padding: 20px 20px 0;margin:450px 0 100px 800px;}
	#noticeDiv{width:400px;height:405px;color:#f00;background-color:pink;font-family:바탕체;font-weight:bold;margin:450px 0 100px 800px;}
	#c1, #c2 {width:350px;height:60px;background-color:white;margin:10px auto;color:black;text-align:center;line-height:15px;padding-top:20px;}
	.modal-content{border:none;}
	
	#info {position:relative;z-index:15;border:1px solid red;width:120px;height:280px;text-align:center;line-height:70px;margin-top:-280px;color:white;font-size:1.3em;color:pink;}
	#info2 {position:relative;z-index:15;float:right;border:1px solid green;width:250px;height:280px;text-align:left;line-height:70px;margin-top:-280px;margin-left:30px;color:orange;font-size:1.3em;font-weight:800;}
	#eve {width:100%; height:80px;border:1px solid green;margin:50px 0px;}
</style>
<script>
	var state=0;
	function ChangeImage() {
		if(state==0) {
			document.img2.src="../img/heart.png";
			state=1;
		} else {
			document.img2.src="../img/transHeart2.jpg";
			state=0;
		}
	}
	
	function showBig(val) {
		var obj = document.getElementById("big");
		obj.src="/kimbo/img/tattoo/" + val;
	}

	$(function(){
		$("#top").css("width", $(".container").width());
		$("#boardFrm").submit(function() {
			//ajax로 댓글 DB에 저장하기
			//                      form에 있는 데이터를 직렬화하는 기능이다.
			var params = $("#boardFrm").serialize(); //?num=gjgj&coment=jfkdjfkd
			$.ajax({
				url : "/kimbo/tattooist/detailWriteOk.do",
				data : params, 
				success : function(result){
					$("#replyList").html(result);
					$("#coment").val("");
				},
				error : function() {
					alert("덧글쓰기 에러발생");
				}
			});
		});
		
		$("#date").datepicker();
		
		//일정 시작 날짜 선택
		$("#schedule_start_date").datepicker({
			dateFormat : "yy년 mm월 dd일", //날짜 표시 형식
			showButtonPanel: true
		});
		
		//일정 종료 날짜 선택
		$("#schedule_end_date").datepicker({
			dateFormat : "yy년 mm월 dd일", //날짜 표시 형식
			showButtonPanel: true
		});
		
		//시간 설정
		var time_str = "<option>--------</option>";
		for(i=0; i<12; i++){
			time_str += "<option>"+(i+1)+" : 00</option>"
		}
		
		$("#schedule_start_time").append(time_str);
		$("#schedule_end_time").append(time_str);
	});
	
	//        no : 댓글번호, num : 원글번호
	function delComent(no, num) {
		$.ajax({
			url : "/kimbo/tattooist/comentDel.do",
			data : "no=" + no + "&num=" + num,
			success : function(result) {
				$("#replyList").html(result);
			}
		});
	}
	
	// 댓글 수정폼
	function editComent(no, num, coment, starr) {
		var tag = "<div class='card-body'><form method='post' id='replyEdit' onsubmit='return false'>";
		tag += "<div class='form-group'><textarea name='coment' rows='3'>" + coment + "</textarea></div>";
		tag += "<select name='starr' id='starr'>";
		tag += "<option value='not'>==별점선택==</option>";
		tag += "<option value='1'>1</option>";
		tag += "<option value='2'>2</option>";
		tag += "<option value='3'>3</option>";
		tag += "<option value='4'>4</option>";
		tag += "<option value='5'>5</option></select>";
		tag += "<input type='submit' class='btn btn-primary' value='댓글등록'/>";
		tag += "<input type='hidden' name='no' value='" + no + "'/>";
		tag += "<input type='hidden' name='num' value='" + num + "'/>";
		tag += "<input type='hidden' name='starr' value='" + starr + "'/>";
		tag += "</form></div>";
		
		var id = 'board' + no;
		console.log(id)
		console.log(coment);
		document.getElementById(id).innerHTML = tag;
		
		
		//댓글 수정
		$("#replyEdit").submit(function() {
			var params2 = $("#replyEdit").serialize();
			$.ajax({
				url : "/kimbo/tattooist/comentEdit.do",
				data : params2,
				success : function(result) {
					$("#replyList").html(result);
				}
			});
		});
	}
	
</script>
</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include> 
</header>
	<div class="container">
		
		<div class="product_view" style="border:1px solid red;margin:10px auto;">
			<h2>${vo.title }</h2>
			<table>
				<colgroup>
				<col style="width:173px;">
				<col>
				</colgroup>
				<tbody>
				<tr>
					<th>판매가</th>
					<td class="price"><b>${vo.price }</b></td>
				</tr>
				<tr>
					<th>장르</th>
					<td>${vo.genre }</td>
				</tr>
				<tr>
					<th>주제</th>
					<td>${vo.subject }</td>
				</tr>
				<tr>
					<th>부위</th>
					<td>${vo.part }</td>
				</tr>
				<tr>
					<th>소요시간</th>
					<td>${vo.sigan }</td>
				</tr>
				<tr>
					<th>상세내용</th>
					<td>${vo.content }</td>
				</tr>
				</tbody>
			</table>
			<div class="img">
				<img id="big" src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" alt="">
				<ul><!-- 제일 처음에 작은이미지 두개 -->
				<li class="on"><a href="#a"><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" onclick="showBig('${vo.filename1}')"/></a></li>
				<c:if test="${!empty vo.filename2 }">
					<li><a href="#a"><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename2}" onclick="showBig('${vo.filename2}')"/></a></li>
				</c:if>
				<c:if test="${!empty vo.filename3 }">
					<li><a href="#a"><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename3}" onclick="showBig('${vo.filename3}')"/></a></li>
				</c:if>
				</ul>
			</div>
			<div class="btns">
				<a href="#a" class="btn1" id="btn1" data-toggle="modal" data-target="#noticeDiv">문의하기</a>
				<a href="#a" class="btn2" id="btn2" data-toggle="modal" data-target="#apply">신청하기</a>
			</div>
		</div>
		
		<div id="noticeDiv" class="modal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="title">★ 상담 시작하기 ★</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div id="c1">① 작가 오픈카톡 링크 복사<br/>https://open.kakao.com/~</div><hr>
						<div id="c2">② 카톡 대화창에 붙여넣고<br/>대화실행!!</div>
					</div>
					<div  class="modal-footer">
						<button type="button" class="btn btn-block btn-danger" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
		
		<div id="apply" class="modal">
			<div class="modal-dialog">
				<div class="modal-content">
					<!--  -->
					<h2>일정을 등록하세요.</h2>
					<label for="schedule_name">일정이름</label> <input type="text" id="schedule_name"/>
					<label for="schedule_start_date">시작날짜</label> <input type="text" id="schedule_start_date"/>
					<label for="schedule_start_time">시작시간</label> 
					<select id="schedule_start_AMPM">
						<option>AM</option>
						<option>PM</option>
					</select>
					<select id="schedule_start_time" style="width:147px">
					</select>
				</div>
				<div  class="modal-footer">
					<button type="button" class="btn btn-block btn-success" data-dismiss="modal">등록</button><br/>
					<button type="button" class="btn btn-block btn-danger" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
		
		<div id="eve">
			<a href="event.jsp" target="_blank"><img src="../img/tattooist/kkkkk.jpg" style="width:100%; height:80px;"/></a>
		</div> 
		
		<div>
			<div><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" style="width:80% ;margin-left:120px;"/></div>
			<c:if test="${!empty vo.filename2 }">
				<div><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename2}" style="width:80%;margin-left:120px;margin-top:40px;"/></div>
			</c:if>
			<c:if test="${!empty vo.filename3 }">
				<div><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename3}" style="width:80%;margin-left:120px;margin-top:40px;"/></div>
			</c:if>
		</div>
		
		<hr/>
		<a href="<%=request.getContextPath()%>/index.do">홈</a>
		<a href="<%=request.getContextPath()%>/tattooist/tattooistList.do">리스트</a>
		<c:if test="${userId==vo.userId }">
			<a href="<%=request.getContextPath()%>/tattooist/tattooistEdit.do?num=${vo.num}">수정</a>
			<a href="javascript:delChk()">삭제</a>
		</c:if>
		
		<div class="card my-4">
			<h5 class="card-header">Leave a Comment:</h5>
			<div class="card-body">
				<form name="boardFrm" id="boardFrm" method="post" onsubmit="return false">
					<div class="form-group">
						<textarea id="coment" name="coment" class="form-control" rows="3"></textarea>
					</div>
					<select name="starr" id="starr">
						<option value="not">==별점선택==</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					<button type="submit" class="btn btn-primary">댓글등록</button>
					<input type="hidden" name="num" value="${vo.num }"/>
					<input type="hidden" name="board" value="t"/>
				</form>
			</div>
		</div>
		
		<div id="replyList">
			<c:forEach var="detailBoardVo" items="${list }">
			
				<div class="media mb-4" id="board${detailBoardVo.no }">
					<img class="d-flex mr-3 rounded-circle" src="/kimbo/img/tattooist/50x50.png"/>
					<div class="media-body">
						<h5 class="mt-0">${detailBoardVo.userId } <span style="float:right;">날짜 : ${detailBoardVo.writeDate }  별점 : ${detailBoardVo.starr }
						<c:set var="st" value="${detailBoardVo.starr }"/>
						<%
							int n = Integer.parseInt(String.valueOf(pageContext.getAttribute("st")));
							for(int i=1;i<=5-n;i++) {
								%>
								<img src="/kimbo/img/nostar.png" style="width:30px;height:30px;"/>
								<%
							}
							for(int i=1;i<=n;i++) {
								%>
								<img src="/kimbo/img/star.png" style="width:30px;height:30px;"/>
								<%
							}
						%>
						</span></h5>
							${detailBoardVo.coment }<br/>
						<c:if test="${userId==detailBoardVo.userId }">
							<input type="button" value="수정" onclick="editComent(${detailBoardVo.no}, ${vo.num },'${detailBoardVo.coment }', ${detailBoardVo.starr} )"/>
							<input type="button" value="삭제" onclick="delComent(${detailBoardVo.no},${vo.num })"/><br/>
						</c:if>
					</div>
				</div>
				<hr/>
			</c:forEach>
		</div>
		
	</div>
<footer style="clesr:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>