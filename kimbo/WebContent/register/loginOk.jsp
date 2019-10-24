<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   

<!-- 로그인 성공 -->
<c:if test="${status!=0}">
	<script>
		location.href="<%=request.getContextPath() %>/main/main.do"
	</script>
</c:if>
<!-- 로그인 실패 -->
<c:if test="${status==0}">
	<script>
		alert("로그인 실패...");
		history.back();
	</script>
</c:if>