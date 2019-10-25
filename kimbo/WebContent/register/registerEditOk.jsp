<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>   
<c:if test="${cnt>0 }">
	<script>
		alert("회원정보수정되었습니다...");
		location.href="<%=request.getContextPath()%>/main/main.do";
	</script>
</c:if>

<c:if test="${cnt<0}">
	<script>
		alert("회원정보수정실패...");
		history.back();
	</script>
</c:if>