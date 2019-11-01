<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 삭제시 -->
<c:if test="${cnt>0 }">
	<script>
		alert("글이 삭제 되었습니다.리스트 페이지로 이동합니다.");
		location.href="/review/review.do?pageNum=${vo.pageNum}";		
	</script>
</c:if>
<!-- 삭제 실패 -->
<c:if test="${cnt<=0 }">
	<script>
		alert("글삭제 실패! \n 글내용보기 페이지로 이동 합니다.");
		history.go(-1);
	</script>
</c:if>
    