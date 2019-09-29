/**
 * 
 */
$(function(){
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
	
    $("body").backstretch([
        "../img/main_kim/main_slide1.jpg",
        "../img/main_kim/main_slide2.jpg",
        "../img/main_kim/main_slide3.jpg",
        "../img/main_kim/main_slide4.jpg"
        ], {
          fade: 1000,
          duration: 3000
      });
});