<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<c:if test="${status>0 }">
	<script>
		alert("탈퇴 되었습니다...");
		location.href="<%=request.getContextPath()%>/main/main.do";
	</script>
</c:if>

<c:if test="${status<0}">
	<script>
		alert("탈퇴실패...");
		history.back();
	</script>
</c:if>