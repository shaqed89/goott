/**
 * 
 */
$(function(){
		$("#ir").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#ir>img").attr("src","../img/Irezumi9.jpg").css("opacity","1");
			$("#main2_a").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#ir>img").attr("src","../img/Irezumi31.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#bg").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#bg>img").attr("src","../img/Black&Gray27.jpg").css("opacity","1");
			$("#main2_b").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#bg>img").attr("src","../img/Black&Gray16.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#ch").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#ch>img").attr("src","../img/Chicano19.jpg").css("opacity","1");
			$("#main2_c").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#ch>img").attr("src","../img/Chicano17.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#tb").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#tb>img").attr("src","../img/Tribal2.jpg").css("opacity","1");
			$("#main2_d").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#tb>img").attr("src","../img/Tribal1.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#ns").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#ns>img").attr("src","../img/NewsSchool16.jpg").css("opacity","1");
			$("#main2_e").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#ns>img").attr("src","../img/NewsSchool10.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#os").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#os>img").attr("src","../img/Oldschool25.jpg").css("opacity","1");
			$("#main2_f").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#os>img").attr("src","../img/Oldschool24.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#lt").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#lt>img").attr("src","../img/Lettering8-1.jpg").css("opacity","1");
			$("#main2_g").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#lt>img").attr("src","../img/Lettering26.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});

		$("#cu").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#cu>img").attr("src","../img/Coverup23.jpg").css("opacity","1");
			$("#main2_h").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#cu>img").attr("src","../img/Coverup21.jpg").css("opacity","0.5");
			$(".main2_text").css("opacity","1");
		}});
	});