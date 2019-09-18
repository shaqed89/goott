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
	
	for(i=0; i<5; i++){
		top5_list+="<li id='tatooist_list"+(i+1)+"'>" +
				"<img src='../img/tattooist"+(i+1)+".jpg' class='rounded-circle'/>" +
				"</li>";
	}
	$("#main_top5").html(top5_list);
	
	//top5 이벤트
	$("#main_top5>li").hover(function(){
		$(this).css("background-color","green");
	},function(){
		$(this).css("background-color","yellow");
	});
	
});
