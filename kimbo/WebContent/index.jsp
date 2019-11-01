<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8" http-equiv="refresh" content="5; url='main/main.do'">
	<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<title>Index</title>
	<style>
		* {margin:0px; padding:0px;}
		body{background:black;}
		#gg {background:white;margin-top:200px;
		}
		#img {background:white url(img/index.jpg) no-repeat 50%;height:800px;
			  position:relative;z-index:5;background-size:700px 700px; opacity:0;
			 
		}
		#txt {font-size:5em; font-family: 'Indie Flower', cursive; font-weight:bold;
			  position:relative;z-index:10;opacity:0;margin:auto;
		}
		
		
	</style>
	<script>
		$(function() {
			$(document).css("width", $(window).width());
			$("#gg").css("width", $(window).width()).css("height", $(window).height()-400);
			$("#img").css("height", $(window).height()-400);
			$("#txt").css("margin-left", $(window).width()/2-250).css("margin-top", -$(window).height()/2+350);
			$("#img").animate({opacity:"0.7"}, 1000);
			$("#txt").delay(1000).animate({opacity:"1"}, 1000);
			$("#img").delay(2000).animate({opacity:"0"}, 800);
			$("#txt").delay(1000).animate({opacity:"0"}, 800);
			$(window).resize(function() {
				$("#gg").css("width", $(window).width()).css("height", -$(window).height()-400);
				$("#img").css("height", $(window).height()-400);
				$("#txt").css("margin-left", $(window).width()/2-250).css("margin-top", -$(window).height()/2+350);
			});
		});
	</script>
	</head>
	<body>
		<div id="gg">
			<div id="img"></div>
			<div id="txt">Express Yourself</div>
		</div>
	</body>
</html>