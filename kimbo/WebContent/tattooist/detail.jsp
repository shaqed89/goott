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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../plugin/jquery.bxslider.js"></script>
<script src="../plugin/jquery-ui.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<title>Good.D Tattoo_detail</title>
<style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	*{margin: 0px;padding: 0px;font-family:'Nanum Gothic', sans-serif; font-size:16px; color:#222;}
	body{border:1px solid gray;}
	
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
	});
	
	//        no : 댓글번호, num : 원글번호
	function delComent(no, num) {
		$.ajax({
			url : "/kimbo/tattooist/detailBoardDel.do",
			data : "no=" + no + "&num=" + num,
			success : function(result) {
				$("#replyList").html(result);
			}
		});
	}
	
	// 댓글 수정폼
	function editComent(no, num, coment) {
		var tag = "<div class='card-body'><form id='boardFrm' method='post' id='replyEdit' onsubmit='return false'>";
		tag += "<div class='form-group'><textarea name='coment' rows='3'>" + coment + "</textarea></div>";
		tag += "<select name='starr' id='starr'>";
		tag += "<option value='not'>==별점선택==</option>";
		tag += "<option value='s1'>1</option>";
		tag += "<option value='s2'>2</option>";
		tag += "<option value='s3'>3</option>";
		tag += "<option value='s4'>4</option>";
		tag += "<option value='s5'>5</option></select>";
		tag += "<input type='submit' class='btn btn-primary' value='댓글등록'/>";
		tag += "<input type='hidden' name='no' value='" + no + "'/>";
		tag += "<input type='hidden' name='num' value='" + num + "'/>";
		tag += "</form></div>";
		
		document.getElementById("board" + no).innerHTML = tag;
		
		//댓글 수정
		$("#replyEdit").submit(function() {
			var params2 = $("#replyEdit").serialize();
			$.ajax({
				url : "/kimbo/tattooist/detailBoardEdit.do",
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
				<img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" alt="">
				<ul><!-- 제일 처음에 작은이미지 두개 -->
				<li class="on"><a href="#a"><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" alt=""></a></li>
				<li><a href="#a"><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" alt=""></a></li>
				</ul>
			</div>
			<div class="btns">
				<a href="#a" class="btn1">문의하기</a>
				<a href="#a" class="btn2">신청하기</a>
			</div>
		</div>
		
		<div id="eve">
			<a href="event.jsp" target="_blank"><img src="../img/tattooist/kkkkk.jpg" style="width:100%;height:80px;"/></a>
		</div>
		
		<div>
			<div><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" style="width:80%;margin-left:120px;"/></div>
			<div><img src="<%=request.getContextPath()%>/img/tattoo/${vo.filename1}" style="width:80%;margin-left:120px;margin-top:40px;"/></div>
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
			<hr/>
			<div class="media mb-4" id="board${detailBoardyVo.no }">
				<img class="d-flex mr-3 rounded-circle" src="/kimbo/img/tattooist/50x50.png"/>
				<div class="media-body">
					<h5 class="mt-0">${detailBoardVo.userId } <span style="float:right;">날짜 : ${detailBoardVo.writeDate }  별점 : ${detailBoardVo.starr }</span></h5>
						${detailBoardVo.coment }<br/>
					<c:if test="${userId==detailBoardVo.userId }">
						<input type="button" value="수정" onclick="editComent(${detailBoardVo.no}, ${vo.num }, '${detailBoardVo.coment }')"/>
						<input type="button" value="삭제" onclick="delComent(${detailBoardVo.no},${vo.num })"/><br/>
					</c:if>
				</div>
			</div>
			</c:forEach>
		</div>
		
		<!-- <div class="media mb-4">
			<img class="d-flex mr-3 rounded-circle" src="../img/tattooist/50x50.png"/>
			<div class="media-body">
				<h5 class="mt-0">해영쨩 <span style="float:right;">날짜 : 2019-03-24 별점 : 3</span></h5>
				따흐흑.....피곤해...
			</div>
		</div> -->
		
	</div>
</body>
</html>