/**
 * 
 */
$(function(){
		$("#fl").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#fl>img").attr("src","../img/Flower3.jpg").css("opacity","1");
			$("#main3_a").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#fl>img").attr("src","../img/Flower25-2.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#sk").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#sk>img").attr("src","../img/snake6.jpg").css("opacity","1");
			$("#main3_b").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#sk>img").attr("src","../img/snake1.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#dg").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#dg>img").attr("src","../img/Dragon6.jpg").css("opacity","1");
			$("#main3_c").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#dg>img").attr("src","../img/Dragon10.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#tg").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#tg>img").attr("src","../img/Tiger11.jpg").css("opacity","1");
			$("#main3_d").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#tg>img").attr("src","../img/Tiger1.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#wh").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#wh>img").attr("src","../img/whale6.jpg").css("opacity","1");
			$("#main3_e").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#wh>img").attr("src","../img/whale10.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#md").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#md>img").attr("src","../img/Mandala4.jpg").css("opacity","1");
			$("#main3_f").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#md>img").attr("src","../img/Mandala21.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#op").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#op>img").attr("src","../img/Orientalpainting18.jpg").css("opacity","1");
			$("#main3_g").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#op>img").attr("src","../img/Orientalpainting10.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});

		$("#mi").on({/*이벤트*/mouseenter:function(){// 마우스 오버
			$("#mi>img").attr("src","../img/mini7.jpg").css("opacity","1");
			$("#main3_h").css("opacity","0");
		},/*이벤트*/mouseleave:function(){ // 마우스 아웃
			$("#mi>img").attr("src","../img/mini5.jpg").css("opacity","0.5");
			$(".main3_text").css("opacity","1");
		}});
	});