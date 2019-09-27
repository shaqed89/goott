/**
 * 
 */
$(function(){
	$("#header_center").hover(function(){
		$("#header_menu1").hide("blind",300);
		$("#header_menu2").delay(500).show("blind",300);
	}, function(){
		$("#header_menu1").delay(500).show("blind",300);
		$("#header_menu2").hide("blind",300);
	});

});