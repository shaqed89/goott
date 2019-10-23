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

});