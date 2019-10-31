<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${cnt>0 }">
	<script>
		alert("작품이 업로드 되었습니다~♥");
		location.href="<%=request.getContextPath()%>/tattooist/tattooistView.do";
	</script>
</c:if>
<c:if test="${cnt<=0 }">
	<script>
		alert("작품 업로드를 실패하였습ㄴ디ㅏ...ㅜㅡ");
		history.back();
	</script>
</c:if>