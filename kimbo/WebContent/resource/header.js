/**
 * 
 */
	$(function(){
		$("#header_center1").on({mouseenter:function(){
			$("#header_center1").hide("fast");
			$("#header_center2").show("slow");
		}});
	});
	$(function(){
		$("#center").on({mouseleave:function(){
			$("#header_center1").css("display","block");
			$("#header_center2").css("display","none");
		}})
	});