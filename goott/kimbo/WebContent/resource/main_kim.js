
$(function(){
	$("#main_page").carousel({interval: false});
	
	//메인페이지 시작시 이미지 슬라이드
	var main_slide = $("#main_slide_img").bxSlider({
		mode : 'fade',
		slideWidth : 600,
		auto : true,
		speed : 4000,
		controls : false,
		randomStart : true,
		infiniteLoop : true,
	});
	
	//top5
	var top5_list="";
	var nameArr=["tattooist1","tattooist2","tattooist3","tattooist4","tattooist5",];
	
	for(i=0; i<5; i++){
		top5_list+="<li id='tattooist"+(i+1)+"'  class='rounded-circle'>" +
				"<img src='../img/main_kim/tattooist"+(i+1)+".jpg' class='rounded-circle'/>" +
				"</li>";
	}
	$("#main_top5").html(top5_list);
	
	//다이얼로그 슬라이드 이미지
	var slide_img=['../img/main_kim/tattooist1_slide1.jpg',
				   '../img/main_kim/tattooist1_slide2.jpg',
				   '../img/main_kim/tattooist1_slide3.jpg',
				   '../img/main_kim/tattooist2_slide1.jpg',
				   '../img/main_kim/tattooist2_slide2.jpg',
				   '../img/main_kim/tattooist2_slide3.jpg',
				   '../img/main_kim/tattooist3_slide1.jpg',
				   '../img/main_kim/tattooist3_slide2.jpg',
				   '../img/main_kim/tattooist3_slide3.jpg',
				   '../img/main_kim/tattooist4_slide1.jpg',
				   '../img/main_kim/tattooist4_slide2.jpg',
				   '../img/main_kim/tattooist4_slide3.jpg',
				   '../img/main_kim/tattooist5_slide1.jpg',
				   '../img/main_kim/tattooist5_slide2.jpg',
				   '../img/main_kim/tattooist5_slide3.jpg'];
	
	//top5 이벤트
	$("#main_top5>li").hover(function(){
		$(this).children("img").css("display","none");
	},function(){
		$(this).children("img").css("display","block");
	});
	
	
	var bx=null;
	//작가 사진 클릭시 슬라이드 다이얼로그 실행
	$("#main_top5>li").click(function(){
		var idx = $("#main_top5>li").index(this);
		var dialog_title = "Tattooist"+(idx+1);
		$(".ui-dialog-titlebar").text(dialog_title);
		var add_slide = "";
		
		for(i=0; i<3; i++){
			add_slide += "<li style='text-align:center'><a href='http://localhost:9090/kimbo/tattooist/t_detail_guest.html'><img src='"+slide_img[idx*3+i]+"'/></a></li>"
		}
		//슬라이더 이미지 추가
		$("#slide").html(add_slide);
		
		//다이얼로그 생성
		$("#tattooist_slide").dialog("open");
		bx.reloadSlider();
	});
	
	//다이얼로그 옵션
	$("#tattooist_slide").dialog({
		autoOpen : false,//실행시 자동열림 설정 및 해제
		width: 900,
		resizable : false,
		draggable : false,
		modal : true,
		buttons : {more : function(){
			location.href ="http://localhost:9090/kimbo/Tattooist/t_detail_guest1.html"
			$("#tattooist_slide").dialog("close");
			bx.destroySlider();
		}, close : function(){
			$("#tattooist_slide").dialog("close");
			bx.destroySlider();
		}}
		
	});
	
	//슬라이더 옵션
	bx = $("#slide").bxSlider({
		mode : 'horizontal',
		slideWidth : 900,
		speed : 2000,
		auto : false,
		infiniteLoop : false,
		hideControlOnEnd : true,
		adaptiveHeght: true, 
		startSlide : 0,
		touchEnabled : false
	});
	
	//다이얼로그 버트 이벤트
	$(".ui-dialog .ui-dialog-buttonpane button").hover(function(){
		$(this).css("font-weight","bold");
	},function(){
		$(this).css("font-weight","normal");
	});
	
});
