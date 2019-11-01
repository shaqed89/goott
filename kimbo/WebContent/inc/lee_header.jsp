<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %> 
<script>
	$(function() {
		$("#signup").click(function() {
			$("#myModal").css("display", "none");
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
 	$(function() {
		$("#sig").click(function() {
			$("#myModal").css("display", "none");
		});
	});  

	
$(function(){
	$("#lgn").click(function(){
		if($("#uname").val() == ""){
			alert("아이디를 입력하세요!!");
			return false;//다음꺼 실행 안가게 해줌.
		}
		/* if($("#uname").val().length<=7){
			alert("아이디는 8~15글자 사이여야 합니다.");
			return false;
		} */
		//비밀번호
		if($("#pwd").val() == ""){
			alert("비밀번호를 입력하세요!!");
			return false;
		}
		/* if($("#pwd").val().length<=7){
			alert("비밀번호는 8~15글자 사이여야 합니다.");
			return false;
		} */

	});
	
});
</script>
	<div id="header" class="container">
		<div id="header_left">
			<a href="<%=request.getContextPath()%>/main/main.do">Good.D<br />TATTO
			</a>
		</div>
		<div id="center">
			<div id="header_center2">
				<a href="<%=request.getContextPath()%>/search/searchList.do">Search</a>
				<a href="<%=request.getContextPath()%>/tattooist/tattooistList.do">Tattooist</a>
				<a href="<%=request.getContextPath()%>/notice/noticeList.do">Notice</a>
				<a href="<%=request.getContextPath()%>/faq/faqList.do">F&Q</a>
				<a href="<%=request.getContextPath()%>/review/reviewLsit.do">Review</a>
			</div>
		</div>
		<div id="header_right">
			<ul>
			<%-- 	<!-- 로그인 클릭시 다이얼로그 생성 -->
				<li data-toggle="modal" data-target="#myModal"><a href="#">Login</a></li>
				<li><a href="<%=request.getContextPath()%>/register/signup.do">Join</a></li>
				<li><a href="#">My</a></li> --%>
				
				<c:if test="${userName==null }">
					<li data-toggle="modal" data-target="#myModal">
						<a href="#" onclick="return false">Login</a> 
					</li>
					<li>	
						<a href="<%=request.getContextPath()%>/register/signup.do">Sign Up</a>
					</li>
					</c:if>
				<c:if test="${userName!=null }">
					<li>
						<a href="<%=request.getContextPath()%>/register/logoutOk.do">Logout</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/myPage/myPage.do">MyPage</a>
					</li>
				</c:if>				
			</ul>
		</div>
	</div>

	<!-- 로그인 다이얼로그 -->
	<div class="container">
		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<form action="<%=request.getContextPath()%>/register/loginOk.do" id="login_form" name="login_form" class="was-validated">
					<div class="modal-content">
						<!-- dialog Header -->
						<div class="modal-header">
							<h4 class="modal-title" id="mh">로그인</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<!-- Modal body -->
						<div id="tex">
						  <div class="form-group">
						    <label for="uname">아이디:</label>
						    <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디 입력"  required>
						    <div class="valid-feedback">8~15글자 여야합니다.</div>
						    <div class="invalid-feedback">아이디가 입력되지 않았습니다.</div>
						  </div>
						  <div class="form-group">
						    <label for="pwd">비밀번호:</label>
						    <input type="password" class="form-control" id="userPwd" name="userPwd" placeholder="비밀번호 입력"  required>
						    <div class="valid-feedback">8글자 이상의 문자,숫자,특수문자 포함</div>
						    <div class="invalid-feedback">비밀번호가 입력되지 않았습니다.</div>
						  </div>
						</div>
						<!-- dialog footer -->
						<div class="modal-footer">
							<div id="lglg">
							<input type="submit" value="로그인" id="lgn" class="btn btn-block btn-danger"/>
							</div>
							<h4>아직 회원이 아니신가요?</h4>
								<div id=sign>
									<a href="<%=request.getContextPath()%>/register/signup.do"><input type="button" id="sig" name="sig" value="회원가입" class="btn btn-block btn-primary"
												data-toggle="modal" data-target="#choiceModal"/></a>
								</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- 
	<script src="../plugin/bootstrap-validate.js"></script>
	<script>
		/* bootstrapValidate('#userid','min:5:다섯 글자 이상 입력해주세요.')	 */
		/* bootstrapValidate('#userpwd','min:5:Enter at least 5 character!') */
	</script> -->