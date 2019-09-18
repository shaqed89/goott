/**
 * 
 */
$(function(){
	$("#main_slide_img").bxSlider({
		mode : 'fade',
		slideWidth : 600,
		slideHeight : 400,
		auto : true,
		speed : 4000,
		randomStart : true,
		infiniteloop : true
	});
	
	$("#main_slide_img").removeClass("bx-wrapper");
});