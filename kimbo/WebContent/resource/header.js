/**
 * 
 */
	/*메뉴바 이벤트 */
	$(function() {
		$("#header_center1 a").on({
			mouseenter : function() {
				$("#header_center1").fadeOut(100);
				$("#header_center2").fadeIn(100);
			}
		});
	});
	$(function() {
		$("#header_center2").on({
			mouseleave : function() {
				$("#header_center1").fadeIn(100);
				$("#header_center2").fadeOut(100);
			}
		});
	});
	
/*	$(function() {
		$("#lgn").click(function() {
			alert("로그인 되었습니다.");
		});
	});*/
	$(function() {
		$("#signup").click(function() {
			$("#myModal").css("display","none");
		});
	});
	
	$(function() {
		$("#st").click(function() {
			alert("Good.D Tattoo에 오신걸 환영합니다!");
		});
	});
	$(function() {
		$("#st2").click(function() {
			alert("Good.D Tattoo에 오신걸 환영합니다!");
		});
	});
		
	$(function() {
		$("#sign1").click(function() {
			$("#choiceModal").css("display", "none");
		});
	});
	$(function() {
		$("#sign2").click(function() {
			$("#choiceModal").css("display", "none");
		});
	});
	
	function regChk(){
		var txt = document.getElementById("txt").value;
		var reg = /css/i;
		reg = /^[A-Za-z]{1}\w{7,14}$/;
		alert(reg.test(document.getElementById("userid").value));
	}

	
	
	
	