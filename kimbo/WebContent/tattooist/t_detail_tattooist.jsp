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
<title>Good.D Tattoo</title>
<style>
	*{margin: 0px;padding: 0px;font-family: 'Gaegu', cursive;color:black;}
	#con1{height:500px;}
	footer{clear:left;}
	
	#ttop {float:left;width:100%;z-index:1;margin-top:20px;}
	#top {clear:left;width:1140px;height:400px;margin:50px auto;}
	#prof {width:300px; height:400px; border:2px solid red; border-radius:50px;
		   float:left;background-size:100%;
	}
	#prof>img{width:298px; height:398px;border-radius:50px;}
	#explain {width:800px; height:400px; float:left;margin-left:30px;}
	#text {height:270px;line-height:270%;text-align:center;font-size:1.5em;border:2px solid red;}
	#bbottom {width:100%;margin-top:40px;}
	#bottom {clear:left;width:780px;height:80px;margin:auto;}
	#btn2, #btn3 {margin-left:15px;}
	#btn1, #btn2, #btn3 {float:left;width:200px;height:80px;border:2px solid gray;
				  border-radius:15px;font-size:2em;text-align:center;line-height:80px;font-size:20px;
	}
	#btn3{width:350px;}
	#btn1>a, #btn2>a, #btn3>a{color:pink;}
	#btn1>a:hover, #btn2>a:hover, #btn3>a:hover {color:red;background-color:yellow;}
	
	#img{clear:left;width:1200px;margin:0px auto;}
	#img>div{width:200px;margin:10px;height:250px;border-radius:10px;border:1px solid gray;overflow:hidden;font-size:20px;text-align:center;float:left;}
	#img>div>img{position:relative;z-index:10;width:150px; height:150px;}
	#img>div>a>img{position:relative;z-index:5;}
	#img>div>p{
		width:200px; 		
		color: darkgray;
		font-size:10px;
		text-align:center;
	}
	#img img {width: 200px;height: 170px;}
	#img>div:nth-child(1) {border:none;}
	
	#title{margin:0 0 0 20%;font-weight:800;color:#000;}
	#noticeDiv{width:400px;height:405px;color:#f00;background-color:pink;font-family:바탕체;font-weight:bold;}
	#noticeDiv, #apply, #my_cal {margin:450px 0 100px 800px;}
	#apply {width:400px;height:400px;background-color:white;overflow:hidden;padding: 20px 20px 0;}
	#c1, #c2 {width:350px;height:60px;background-color:white;margin:10px auto;color:black;text-align:center;line-height:15px;padding-top:20px;}
	hr {color:gray;}
	.modal-content{border:none;}
	.modal-content>label{margin-bottom:0;margin-top:10px;}
	#schedule_color {margin-bottom:20px;}
	#insert {width:700px;height:800px;;background-color:white;border:4px solid white;margin:150px 0 100px 750px;}
</style>
<script>
	//var state=0;
	
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
		    
		    reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
		    }
		    
		    reader.readAsDataURL(input.files[0]);
		}
	}
	
	$(function(){
		//$("#file1").change(function() {
		//	readURL(this);
		//});
		
		$("#insertFrm").submit(function() {
			if($("#title1").val()=="") {
				alert("제목을 입력하세요!!");
				return false;
			}
			
			if($("#file1").val()=="") {
				alert("첨부파일을 선택하세요!!");
				return false;
			}
			
			//$('form').each(function(){
			//	this.reset();
			//});
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
		//background:black url(../img/tattooist/t1.jpg) no-repeat;
	});
</script>
</head>
<body>
	<div class="container" id="con1">

		<div id="ttop">
			<div id="top">
				<div id="prof"><img src="<%=request.getContextPath()%>/img/profile/${vo.profile}"/></div>
				<div id="explain">
					<div id="text">아이디 : ${vo.userId }<br/>
									활동지역 : ${vo.addr }<br/>
									카카오톡 아이디 : ${vo.kakao }<br/>
									참느라 고생하셨습니다 ~
					</div>
					<div id="bbottom">
						<div id="bottom">
							<div id="btn1" data-toggle="modal" data-target="#noticeDiv"><a href="#"> 문의방법 </a></div>
							<div id="btn2" data-toggle="modal" data-target="#apply"><a href="#"> 신청하기 </a></div>
							<div id="btn3" data-toggle="modal" data-target="#my_cal"><a href="#"> 스케쥴 확인 </a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<hr width="100%"/>
	
	<div class="container">
		
		<div id="img">
			         <!-- 세션에있는 id, 내가누른 작가id  -->
				<c:if test="${userId==vo.userId }">
					<div>
						<img style='margin-top:39px;' width='230px' height='230px' src='../img/pluss.jpg' data-toggle='modal' data-target='#insert'/>
					</div>
				</c:if>
				<c:forEach var="l" items="${list }">
					<div>
						<img id='${l.num }' style='width:20px;height:20px;' src='../img/transHeart2.jpg' onclick='ChangeImage()'/>
						<a href='<%=request.getContextPath()%>/tattooist/tattooistDetail.do?userId=${l.userId}&num=${l.num}' target='_blank'>
						<img src='<%=request.getContextPath()%>/img/tattoo/${l.filename1}'/></a>#${l.genre} #${l.subject } #${l.part }<br/>
						<p>조회수 : ${l.hit}</p>
					</div>
				</c:forEach>
			
		</div>
		
		<div id="insert" class="modal">
			<div class="modal-dialog">
				<form id="insertFrm" method="post" action="<%=request.getContextPath()%>/tattooist/tattooistWriteOk.do?userId=${vo.userId}&num=${vo.num}" enctype="multipart/form-data">
					<div class="modal-content">
						<h4 class="modal-title" id="title">★ 타투 등록하기 ★</h4>
						<hr/>
						
						<div id="t" style="height:35px;line-height:30px;">
							<label style="float:left;margin-right:10px;">제 목</label>
							<input type="text" name="title1" id="title1" style="float:left;"/>
						</div><hr/>
						<div style="clear:left;height:35px;line-height:30px;">
							<label style="float:left;margin-right:10px;">가 격</label>
							<input type="text" name="pr" id="pr" style="float:left;"/>
						</div><hr/>
						<div id="div1" style="height:35px;line-height:30px;">
							<div id="d1" style="width:240px;float:left;height:35px;">
								<label style="float:left;margin-right:10px;">장 르</label>
								<input type="text" name="gr" id="gr" style="float:left;"/>
							</div>
							<div id="d2" style="width:240px;float:right;height:35px;">
								<label style="float:left;margin-right:36px;">주 제</label>
								<input type="text" name="sb" id="sb" style="float:left;"/>
							</div>
						</div><hr/>
						<div id="div2" style="float:left;height:35px;line-height:30px;">
							<div id="d1" style="float:left;width:240px;height:35px;">
								<label style="float:left;margin-right:10px;">부 위</label>
								<input type="text" name="pt" id="pt" style="float:left;"/>
							</div>
							<div id="d2" style="width:240px;float:right;height:35px;">
								<label style="float:left;margin-right:10px;">소요시간</label>
								<input type="text" name="tm" id="tm" style="float:left;"/>
							</div>
						</div><hr/>
						<div>
							<textarea rows="10" cols="60" placeholder="내용을 입력하세요..!"name="content" id="content"></textarea>
						</div>
						<div class="file" style="border:1px solid red;">
							<!-- <input type="file" id="file1" name='file1' style='display: none;'>
							<input type='text' name='file2' id='file2' style='display: none;'>
							<img width='100px' height='100px' src='../img/pluss.jpg' border='0' onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'><br/>
							<img id="blah" src="#" alt="your image" style="width:230px;height:230px;"/> -->
							<input type="file" id="file1" name='file1'/>
							<input type="file" id="file2" name='file2'/>
							<input type="file" id="file3" name='file3'/>
						</div>
						<div  class="modal-footer">
							<input type="submit" value="등록" class="btn btn-block btn-success"/><br/>
						<button type="button" class="btn btn-block btn-danger" data-dismiss="modal">닫기</button>
						</div>
					</div>
				</form>
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
		
		<div id="my_cal" class="modal">
			<div class="modal-content" style="overflow: hidden; position: relative; width: 578px;">
            	<div class="shedule_form modal-body">
					<%-- <div style="overflow: hidden; padding: 12px 15px;" class="site-background-color">
						<div style="float: left; font-size: 18px; font-weight: bold; color: #fff; font-family: malgun gothic; ">일정</div>
                	</div>
                	
                	<div id="shedule_calendar_form" class="shedule_calendar">
                		<div style="overflow: hidden;" id="schedule">
                			<div class="schedule_date_box">
                				<!-- 날짜이동 -->
                				<div class="move_schedule_box">
                					<input type="image" src="/kimbo/img/tattooist/pre_month.png" class="move_schedule" onclick="getMainSchedule('bf');" title="이전달이동">
                					<div id="Month" class="year_month_txt" onclick="getMainSchedule('to');" title="오늘이동" dt="2019.10">2019.10</div>
                					<input type="image" src="/kimbo/img/tattooist/next_month.png" class="move_schedule" onclick="getMainSchedule('at');" title="다음달이동">
                				</div>
                				<!-- 날짜표기 -->
                				<div class="txt_schedule_box">
                					<div id="Day">23</div>
                					<div id="WeekDay">(수요일)</div>
                				</div>
                			</div>
                			<div style="overflow: hidden; padding: 0 15px; float: right; width: 322px; background: url('/kimbo/img/tattooist/dott_line.png') repeat-y left;">
							      <table class="main-Schedule">
							        <caption>2019년 10월 달력</caption>
							        <colgroup>
							          <col style="width:46px;">
							          <col style="width:46px;">
							          <col style="width:46px;">
							          <col style="width:46px;">
							          <col style="width:46px;">
							          <col style="width:46px;">
							          <col style="width:46px;">
							        </colgroup>
							        <thead>
							          <tr>
							            <th class="schedule_th" scope="col" style="color: #e05e3f;">일</th>
							            <th class="schedule_th" scope="col" style="color: #777;">월</th>
							            <th class="schedule_th" scope="col" style="color: #777;">화</th>
							            <th class="schedule_th" scope="col" style="color: #777;">수</th>
							            <th class="schedule_th" scope="col" style="color: #777;">목</th>
							            <th class="schedule_th" scope="col" style="color: #777;">금</th>
							            <th class="schedule_th" scope="col" style="color: #0288d1;">토</th>
							          </tr>
							        </thead>
							        <tbody>
							        
							          <tr>
							          
							            <td class="" onclick="getMainSchedule('','2019-9-29');" style="cursor: pointer;">
							              <div id="9_29" style="color:#bbbbbb; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">29</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-9-30');" style="cursor: pointer;">
							              <div id="9_30" style="color:#bbbbbb; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">30</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-1');" style="cursor: pointer;">
							              <div id="10_1" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">1</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-2');" style="cursor: pointer;">
							              <div id="10_2" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">2</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-3');" style="cursor: pointer;">
							              <div id="10_3" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">3</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-4');" style="cursor: pointer;">
							              <div id="10_4" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">4</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-5');" style="cursor: pointer;">
							              <div id="10_5" style="color:#0288d1; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">5</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							          </tr>
							        
							          <tr>
							          
							            <td class="" onclick="getMainSchedule('','2019-10-6');" style="cursor: pointer;">
							              <div id="10_6" style="color:#e05e3f; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">6</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-7');" style="cursor: pointer;">
							              <div id="10_7" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">7</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-8');" style="cursor: pointer;">
							              <div id="10_8" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">8</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-9');" style="cursor: pointer;">
							              <div id="10_9" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">9</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-10');" style="cursor: pointer;">
							              <div id="10_10" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">10</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-11');" style="cursor: pointer;">
							              <div id="10_11" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">11</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-12');" style="cursor: pointer;">
							              <div id="10_12" style="color:#0288d1; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">12</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							          </tr>
							        
							          <tr>
							          
							            <td class="" onclick="getMainSchedule('','2019-10-13');" style="cursor: pointer;">
							              <div id="10_13" style="color:#e05e3f; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">13</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-14');" style="cursor: pointer;">
							              <div id="10_14" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">14</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-15');" style="cursor: pointer;">
							              <div id="10_15" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">15</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-16');" style="cursor: pointer;">
							              <div id="10_16" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">16</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-17');" style="cursor: pointer;">
							              <div id="10_17" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">17</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-18');" style="cursor: pointer;">
							              <div id="10_18" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">18</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-19');" style="cursor: pointer;">
							              <div id="10_19" style="color:#0288d1; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">19</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							          </tr>
							        
							          <tr>
							          
							            <td class="" onclick="getMainSchedule('','2019-10-20');" style="cursor: pointer;">
							              <div id="10_20" style="color:#e05e3f; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">20</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-21');" style="cursor: pointer;">
							              <div id="10_21" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">21</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-22');" style="cursor: pointer;">
							              <div id="10_22" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">22</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-23');" style="cursor: pointer;">
							              <div id="10_23" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day site-today-cal ">23</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-24');" style="cursor: pointer;">
							              <div id="10_24" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">24</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-25');" style="cursor: pointer;">
							              <div id="10_25" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">25</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-26');" style="cursor: pointer;">
							              <div id="10_26" style="color:#0288d1; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">26</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							          </tr>
							        
							          <tr>
							          
							            <td class="" onclick="getMainSchedule('','2019-10-27');" style="cursor: pointer;">
							              <div id="10_27" style="color:#e05e3f; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">27</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-28');" style="cursor: pointer;">
							              <div id="10_28" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">28</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-29');" style="cursor: pointer;">
							              <div id="10_29" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">29</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-30');" style="cursor: pointer;">
							              <div id="10_30" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">30</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-10-31');" style="cursor: pointer;">
							              <div id="10_31" style="color:black; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">31</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-11-1');" style="cursor: pointer;">
							              <div id="11_1" style="color:#bbbbbb; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">1</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							            <td class="" onclick="getMainSchedule('','2019-11-2');" style="cursor: pointer;">
							              <div id="11_2" style="color:#bbbbbb; width: 25px; height: 17px; margin: 0 auto; border: 1px solid #fff; border-radius: 2px; " class="day  ">2</div>
							              <div style="overflow: hidden; width: 27px; padding: 1px 9.5px 4px 9.5px;">
							              
							              
							              </div>
							            </td>
							            
							          </tr>
							        
							        </tbody>
							      </table>
    						</div>
                		</div>
                	</div> --%>
            	</div>
          	</div>
		</div>
		
		
	</div>
</body>
</html>