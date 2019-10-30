<!DOCTYPE html>
<html>
	<head>
	<!-- http-equiv="refresh"   -->
	<meta charset="UTF-8" content="5; url='main/main.html'">
	<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<title>Index</title>
	<style>
		* {margin:0px; padding:0px;}
		body{background:black;}
		#gg {width:100%;height:1000px;background:white;margin-top:300px;
			 position:absolute;
		}
		#img {background:white url(img/index.jpg) no-repeat 50%;height:800px;
			  padding-top:100px;
			  background-size:700px 700px; opacity:0;
			 
		}
		#txt {font-size:5em; font-family: 'Indie Flower', cursive; font-weight:bold;
			  position:relative;top:-10%; left:40%;opacity:0;margin:auto;
		}
		
		
	</style>
	<script>
		$(function() {
			$("#img").animate({opacity:"0.7"}, 1000);
			$("#txt").delay(1000).animate({opacity:"1"}, 1000);
			$("#img").delay(2000).animate({opacity:"0"}, 800);
			$("#txt").delay(1000).animate({opacity:"0"}, 800);
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