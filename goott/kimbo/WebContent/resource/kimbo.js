/**
 * 
 */
$(function(){
	//배경화면
	/*    $("body").backstretch([
    "../img/main_kim/main_slide1.jpg",
    "../img/main_kim/main_slide2.jpg",
    "../img/main_kim/main_slide3.jpg",
    "../img/main_kim/main_slide4.jpg"
    ], {
      fade: 1000,
      duration: 3000
  	});*/
	
	
	$("#header_menu2").css("top","0px");
	$("#header_menu1").css("opacity","0");
	
	$("#header_menu2").on("mouseenter", function(){
		$("#header_menu1").css("opacity","1");
		$("#header_menu2").css("top","-130px");
	});
	$("#header_menu1").on("mouseleave", function(){
		$("#header_menu1").css("opacity","0");
		$("#header_menu2").css("top","0px");
	});
	
	$("#main_page").carousel({interval: false});
	
	//top5
	var top5_list="";
	var nameArr=["tattooist1","tattooist2","tattooist3","tattooist4","tattooist5",];
	
	for(i=0; i<5; i++){
		top5_list+="<li id='tattooist"+(i+1)+"'>" +
				"<img src='../img/main_kim/tattooist"+(i+1)+".jpg'/>" +
				"</li>";
	}
	$("#main_top5").html(top5_list);
	
	$("#main2_content>div").on({/*이벤트*/mouseenter:function(){// 마우스 오버
		$(this).children().attr("src","../img/Irezumi9.jpg").css("opacity","1");
		$("#main2_a").css("opacity","0");
	},/*이벤트*/mouseleave:function(){ // 마우스 아웃
		$(this).children().attr("src","../img/Irezumi31.jpg").css("opacity","0.5");
		$(".main2_text").css("opacity","1");
	}});
});