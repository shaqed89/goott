
$(function(){
	//메인페이지 시작시 이미지 슬라이드
	$("#main_slide_img").bxSlider({
		mode : 'fade',
		slideWidth : 600,
		slideHeight : 400,
		auto : true,
		speed : 4000,
		randomStart : true,
		infiniteloop : true
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
	
	//다이얼로그 슬라이드
	$("#slide").bxSlider({
		mode : 'horizontal',
		slideWidth : 1000,
		slideWidth : 800,
		speed : 2000,
		auto : false,
		infiniteloop : true,
		adaptiveHeght: false, 
	});
	
	//작가 사진 클릭시 슬라이드 다이얼로그 실행
	$("#main_top5>li").click(function(){
		var idx = $(this).index();
		var add_slide = "";
		
		/*$("#slide").html("<li><img src='"+slide_img[idx*3]+"'/></li>"+
				"<li><img src='"+slide_img[idx*3+1]+"'/></li>"+
				"<li><img src='"+slide_img[idx*3+2]+"'/></li>")
		*/
		
		for(i=0; i<5; i++){
			if(i==0){$("#slide>li").first().children("img").attr("src",slide_img[idx*3+2])}
			else if(i==4){$("#slide>li").last().children("img").attr("src",slide_img[idx*3])}
			else{
			$("#slide>li").eq(i+1).children("img").attr("src",slide_img[idx*3+i])}
		}
		
		$("#tattooist_slide").dialog("open");

	});
	
	
	//다이얼로그 옵션
	$("#tattooist_slide").dialog({
		autoOpen : false,//실행시 자동열림 설정 및 해제
		width: 1000,
		height: 800,
		resizable : false,
		draggable : false,
		modal : true,

		buttons : {more : function(){
			
		}},
		
		close: function() {
			$("#slide").html("");
		}
		
	});
	

	
});
