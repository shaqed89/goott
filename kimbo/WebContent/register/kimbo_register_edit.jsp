<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
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
	body {    
    font-family: 나눔바른고딕, NanumBarunGothic, 맑은고딕, "Malgun Gothic", 돋움, Dotum, "Apple SD Gothic Neo", sans-serif;
    font-size: 12px; color: rgb(33, 33, 33);
	}
	
	form{text-align:center;}
	table {
	    width: 600px;
	}
	
	tr {
	    height: 50px;
	    font-size: 18px;
	}
	tbody>tr td:first-of-type{width:125px; text-align:left;}
	input[type=text], input[type=password] {
	    padding: 5px 10px; /* 상하 우좌 */
	    margin: 3px 0; /* 상하 우좌 */
	    font-family: inherit; /* 폰트 상속 */
	    border: 1px solid #ccc; /* 999가 약간 더 진한 색 */
	    font-size:14pt;
	    box-sizing: border-box;
	    border-radius: 3px;
	    -webkit-border-radius: 3px;
	    -moz-border-radius: 3px;
	    -webkit-transition: width 0.4s ease-in-out;
	    transition: width 0.4s ease-in-out;
	}
	
	input[type=text]:focus, input[type=password]:focus {
	    border: 2px solid #555;
	}
	
	input[type=submit], input[type=button], input[type=reset] {
	    margin-top: 10px;
	    width:100px;
	    height:40px;
	    line-height: 22px;
	    padding: 5px, 10px; /* 상하 우좌 */
	    background: #E6E6E6;
	    color: #000000;
	    font-size: 15px;
	    font-weight: normal;
	    letter-spacing: 1px;
	    border: none;
	    cursor: pointer;
	    border-radius: 3px;
	    -webkit-border-radius: 3px;
	    -moz-border-radius: 3px;
	}
	input[type=submit]:hover,input[type=button]:hover,input[type=reset]:hover {
	    background-color: #FFBF00;
	}
	#t1{width:120px; height: 40px; border-radius: 3px;}
	#t2, #t3{width:114px;}
	#sido, #gugun{width: 191px; height: 40px; border-radius: 3px;}
	#emailId{width:179px;}
	#emailDomain{width:179px; height: 40px; border-radius: 3px;}
	#birthYear{width:104px;}
	#birthMonth, #birthDate{width:110px; height: 40px; border-radius: 3px;}
	h2{
		width: 900px;
		height: 40px;
		margin: 0 auto;
		margin-top: 50px;
		margin-bottom: 50px;
	}
	#xx,#yy{
		width: 70px;
		float: left;
	}
	#xx{margin-left:27px;}
	#profile{width: 82%; border: 1px solid #ccc; border-radius: 3px;}
	
</style>
<script>
	function checks(){
		//아이디 공백확인
		if($("#e_userId").val() == ""){
	        alert("아이디를 입력 바랍니다.");
	        $("#e_userId").focus();
	        return false;
	      }
		//아이디 중복검사 완료확인
		if($("#idChkResult").val()!="Y"){
			alert("아이디 중복검사를 실행하세요.");
	        $("#e_userId").focus();
	        return false;
		}
			
		//비밀번호 공백 확인 
		if($("#e_userPwd").val() == ""){ 
			alert("패스워드 입력바람"); $("#e_userPwd").focus(); 
			return false; 
		}  
		//비밀번호 확인란 공백 확인 
		if($("#userPwdCcheck").val() == ""){ 
			alert("패스워드 확인란을 입력해주세요"); $("#userPwdCheck").focus(); 
			return false; 
		} 
		//비밀번호 서로확인 
		if($("#e_userPwd").val() != $("#userPwdCheck").val()){
			alert("비밀번호가 다릅니다."); 
			$("#userPwdCheck").val(""); 
			return false; 
		}
		//이름 공백 확인 
		if($("#userName").val() == ""){ 
			alert("이름 입력바람"); $("#userName").focus(); 
			return false; 
		}  
		//연락처 공백 확인
		if($("#t2").val()=="" || $("#t3").val()==""){
			alert("연락처 입력바람");
			return false;
		}
		//주소 선택확인
		if($("#sido").val() == "시/도 선택" ||$("#gungu").val() == "시/도 선택" ){
			alert("주소를 확인해 주세요.");
			return false;
		}
		
		//이메일 공백 확인
		if($("#emailId").val() == ""){
			alert("이메일 주소를 확인하세요...");
			return false;
		}
		
		//생년월일 공백 확인 
		if($("#birthYear").val() == ""){ 
			alert("생년월일 입력바람");
			return false; 
		} 
		
		//카톡 공백 확인
		if($("#kaka").val() == ""){ 
			alert("카카오톡 아이디 입력바람"); $("#kaka").focus(); 
			return false; 
		}
		
		if($("#profile").val() == ""){ 
			alert("프로필 사진 등록바람");
			return false; 
		}
		
		return true;
	}
	
	
	$(function() {
		//아이디 중복검사
		$("#idCheck").click(function(){
			
			if($("#e_userId").val() == ""){
		        alert("아이디를 입력 바랍니다.");
		        $("#e_userId").focus();
		        return false;
		      }
			
			var userId = $("#e_userId").val();
			console.log(userId);
			$.ajax({
				url : "<%=request.getContextPath() %>/register/idCheck_Ok.do",
				data : "userId="+userId,
				success: function(result){
					/* console.log(result); */
					if(eval(result)){
						alert("사용 불가능한 아이디입니다.");
						console.log("userId="+userId+", idChkResult="+$("#idChkResult").val());
					}else{
						/* alert("사용 가능한 아이디입니다."); */
						if(confirm("사용가능한아이디 입니다.\n"+userId+" 를 사용하시겠습니까?")){
							$("#idChkResult").val("Y");
							console.log("userId="+userId+", idChkResult="+$("#idChkResult").val());
						}else{
							$("#idChkResult").val("N");
							console.log("userId="+userId+", idChkResult="+$("#idChkResult").val());

						}
						
					}
				}
			});
		});
		
		 
		//중복검사완료 해제
		$("#e_userId").keyup(function(){
			$("#idChkResult").val("N");
			console.log("idChkResult="+$("#idChkResult").val());
		});
		 
		//주소 선택
		$(function() {
			var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
			var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
			var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
			var area3 = ["대덕구","동구","서구","유성구","중구"];
			var area4 = ["광산구","남구","동구","북구","서구"];
			var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
			var area6 = ["남구","동구","북구","중구","울주군"];
			var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
			var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
			var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
			var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
			var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
			var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
			var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
			var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			var area16 = ["서귀포시","제주시","남제주군","북제주군"];
	
		 // 시/도 정보 받아오기
		$("select[name^=sido]").each(function() {
			$selsido = $(this);
			var s1;
			$.each(eval(area0), function() {
				s1="${vo.sido}";
				/* console.log("this="+this+", sido="+s1); */
				var tag = "<option value ='"+this+"'";
	   			if(s1==this) tag += "selected";
				tag += ">"+this+"</option>";
			
				$selsido.append(tag);
			});
			var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
			var $gugun = $(this).next(); // 선택영역 군구 객체
			
			if(area == "area0")
				$gugun.append("<option value=''>구/군 선택</option>");
			else {
				$.each(eval(area), function() {
					var g1 = "${vo.gugun}";
					var tag = "<option value ='"+this+"'";
		   			if(g1==this) tag += "selected";
					tag += ">"+this+"</option>";
					
					$gugun.append(tag);
					});
				}
			$selsido.next().append("<option value=''>구/군 선택</option>");
		});
	
		 
		 // 시/도 선택시 구/군 설정
		$("select[name^=sido]").change(function() {
			var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
			var $gugun = $(this).next(); // 선택영역 군구 객체
			$("option",$gugun).remove(); // 구군 초기화
			console.log($(this));
			if(area == "area0")
				$gugun.append("<option value=''>구/군 선택</option>");
			else {
				$.each(eval(area), function() {
						$gugun.append("<option value='"+this+"'>"+this+"</option>");
					});
				}
			});
		});
		
		//프로필사진 수정
		$("#file").css("display", "none");
		
		$("#fileDel").click(function(){
			$("#file").css("display", "block");
			$("#fileList").html("");
		});
		
		/*회원탈퇴 */
		$("#reg_del").click(function(){
			if(confirm("정말로 탈퇴하시겠습니까?")){
				location.href="<%=request.getContextPath()%>/register/RegisterDelete.do";
			}
		});
		
	});
	
</script>
</head>
<body>
<header>
	<jsp:include page="../inc/lee_header.jsp"></jsp:include>
</header>
<section style="height:800px">
	<div style="text-align:center">
	<h2>회원정보수정</h2>
	<form method="post" id="edit_frm" action="<%= request.getContextPath()%>/register/RegEditOk.do" onsubmit="return checks()" enctype="multipart/form-data">
	    <table style="margin: 0 auto">
	        <tr>
	            <td>아이디</td>
	            <td>
	                <input type="text" size=37 id="e_userId" name="userId" value="${vo.userId }" readonly="readonly">
	                <input type="hidden" name="idChkResult" id="idChkResult" value="Y"/>
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호</td>
	            <td><input type="password" size=37 name="userPwd" id="e_userPwd" placeholder="8~15자 까지 가능"></td>
	        </tr>
	        <tr>
	            <td>비밀번호 확인</td>
	            <td><input type="password" size=37 name="userPwdCheck" id="userPwdCheck" placeholder="8~15자 까지 가능"></td>
	        </tr>
	        <tr>
	            <td style='width:100px'>이름</td>
	            <td><input type="text" size=37 name="userName" id="userName" value="${vo.userName}" readonly="readonly"></td>
	        </tr>
	        <tr>
	            <td>휴대폰번호</td>
	            <td>
	            	<select name="t1" id="t1">
	            		<option value="010" <c:if test="${vo.t1=='010'}">selected</c:if>>010</option>
	            		<option value="011" <c:if test="${vo.t1=='011'}">selected</c:if>>011</option>
	            		<option value="016" <c:if test="${vo.t1=='016'}">selected</c:if>>016</option>
	            		<option value="018" <c:if test="${vo.t1=='018'}">selected</c:if>>018</option>
	            		<option value="019" <c:if test="${vo.t1=='019'}">selected</c:if>>019</option>
	            	</select> -
					<input type="text" name="t2" id="t2" maxlength="4" value="${vo.t2}"/> -
					<input type="text" name="t3" id="t3" maxlength="4" value="${vo.t3}"/></td>
	        </tr>
	        <tr>
	        	<td>주소</td>
	        	<td>
	        		<select name="sido" id="sido">
	        		</select>
					<select name="gugun" id="gugun">
					</select>
				</td>
	        </tr>
	        <tr>
	        	<td>이메일</td>
	        	<td>
	        		<input type="text" name="emailId" id="emailId" value="${vo.emailId}"/> @
					<select name="emailDomain" id="emailDomain">				
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</td>
	        </tr>
	        <tr>
	            <td>생년월일</td>
	            <td><input type="text" name="birthYear" id="birthYear" maxlength="4" value="${vo.birthYear}"/>년
					<select name="birthMonth" id="birthMonth">
						<c:forEach var="i" begin="1" end="12">
						<c:if test="${i<10}">
							<option value="0${i}" <c:if test="${vo.birthMonth==i}">selected</c:if>>${i}</option>
						</c:if>
						<c:if test="${i>10}">
							<option value="${i }" <c:if test="${vo.birthMonth==i }">selected</c:if>>${i }</option>
						</c:if>
					</c:forEach>
					</select>월
					<select name="birthDate" id="birthDate"	>
						<c:forEach var="i" begin="1" end="31">
						<c:if test="${i<10}">
							<option value="0${i}" <c:if test="${vo.birthDate==i}">selected</c:if>>${i}</option>
						</c:if>
						<c:if test="${i>=10}">
							<option value="${i}" <c:if test="${vo.birthDate==i}">selected</c:if>>${i}</option>
						</c:if>
					</c:forEach>
					</select>일</td>
	        </tr>
	        <tr>
	            <td>성별</td>
	            <td>
	            	<div id="xx"><input type="radio" size=50 name="gender" id="gender_m" value="m" <c:if test="${vo.gender=='m'}"> checked</c:if>/> 남</div>
	            	<div id="yy"><input type="radio" size=50 name="gender" id="gender_f" value="f" <c:if test="${vo.gender=='f'}"> checked</c:if>/> 여</div>
	            </td>
	        </tr>
	        <c:if test="${vo.kakao!=null }">
	         <tr>
	            <td>카카오톡</td>
	            <td><input type="text" size=37 name="kakao" id="kakao" value="${vo.kakao }"></td>
	        </tr>
	        <tr>
	            <td>프로필 사진</td>
	            <td> <span id="fileList">${vo.profile} <input type="button" id="fileDel" value="X"/></span><br/>
					 <span id="file"><input type="file" name="profile" id="profile"/></span><br/>
					 <input type="hidden" name="oldProfile" value="${vo.profile}"/>
				</td>
	        </tr>
	        </c:if>
	        <tfoot>
		        <tr>
		            <td colspan='2' align='center'>
		            	<input type="submit" value="수정">
		            	<input type="button" value="탈퇴" id="reg_del">
		            	<c:if test="${vo.role!=null }">
		            	<input type="hidden" id="role" name="role" value="${vo.role }"/>
		            	</c:if>
		            </td>
		        </tr>
	        </tfoot>
	    </table>
	</form>
	</div>
</section>
<footer style="clear:left; background-color:#191919">
	<jsp:include page="../inc/lee_footer.jsp"></jsp:include>
</footer>
</body>
</html>