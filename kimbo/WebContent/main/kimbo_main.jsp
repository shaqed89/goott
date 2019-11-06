<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Good.D Tattoo</title>

<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Gaegu|Indie+Flower&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../resource/css/kimbo.css" type="text/css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<style>

	#slide{width:100%; height:800px; background-color:lightgray; margin:10px 0;}
	#top5{width:100%; height:400px;}
	#top5>h1{text-align:center;}
	#main_top5{width:1180px; height:320px; margin:10px; padding:10px 40px;}
	#main_top5 li{width: 180px; height: 330px; margin: 0 20px; float: left;}		  
	#main_top5 li>a img{width:100%; height:300px;}
	#main_top5 li>div{text-align:center; positoin:relative; height:30px; font-size:25px;}
	
	#top_tattoo{width:100%; height:800px;}
	#top_tattoo>h1{text-align:center;}
	#main_top_tattoo{margin:10px 25px;}
	#main_top_tattoo li{width:230px; height:230px; float:left;}
	#main_top_tattoo li>a img{width:100%; height:100%;}

</style>
<script>
//top5
$(function(){
/* 	var top5_list="";
	var nameArr1=["tattooist1","tattooist2","tattooist3","tattooist4","tattooist5",];

	for(i=0; i<nameArr1.length; i++){
		top5_list+="<li id='"+nameArr1[i]+"'  class='rounded-circle'>" +
				   "<a href='#'><img src='../img/main_kim/"+nameArr1[i]+".jpg' class='rounded-circle'/>" +
				   "</a><div>"+nameArr1[i]+"</div></li>";
	}
	$("#main_top5").html(top5_list); */
	
	
	var top_tattoo_list="";
	var nameArr2=["tattoo1","tattoo2","tattoo3","tattoo4","tattoo5",
				 "tattoo6","tattoo7","tattoo8","tattoo9","tattoo10"];

	for(i=0; i<nameArr2.length; i++){
		top_tattoo_list+="<li id='tattoo"+(i+1)+"''>" +
				   "<a href='#'><img src='../img/main_kim/tattoo"+(i+1)+".jpg'/>" +
				   "</a></li>";
	}
	$("#main_top_tattoo").html(top_tattoo_list);
	
});

</script>
</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include> 
</header>
<section>
<div class="container">
	<div id="slide">
	</div>
	<hr/>
	<div id="top5">
		<h1>인기작가</h1>
		<ul id="main_top5">
		<c:forEach var="m" items="${top5_list}">
			<li id="t_${m.num }" class='rounded-circle'>
			   <a href='#'><img src='<%=request.getContextPath() %>/img/profile/${m.profile}' class='rounded-circle'/></a>
			   <div>${m.userId }</div></li>
		</c:forEach>
		</ul>
		
	</div>
	<hr/>
	<div id="top_tattoo">
		<h1>인기게시물</h1>
		<ul id="main_top_tattoo"></ul>
	</div>
</div>
</section>
<footer style="clesr:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>