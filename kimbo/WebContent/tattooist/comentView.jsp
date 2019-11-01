<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach var="detailBoardVo" items="${list }">
	<hr/>
	<div class="media mb-4" id="board${detailBoardVo.no }">
		<img class="d-flex mr-3 rounded-circle" src="/kimbo/img/tattooist/50x50.png"/>
		<div class="media-body">
			<h5 class="mt-0">${detailBoardVo.userId } <span style="float:right;">날짜 : ${detailBoardVo.writeDate }  별점 : ${detailBoardVo.starr }
			<c:set var="st" value="${detailBoardVo.starr }"/>
						<%
							int n = Integer.parseInt(String.valueOf(pageContext.getAttribute("st")));
							for(int i=1;i<=5-n;i++) {
								%>
								<img src="/kimbo/img/nostar.png" style="width:30px;height:30px;"/>
								<%
							}
							for(int i=1;i<=n;i++) {
								%>
								<img src="/kimbo/img/star.png" style="width:30px;height:30px;"/>
								<%
							}
						%>
			</span></h5>
				${detailBoardVo.coment }<br/>
			<c:if test="${userId==detailBoardVo.userId }">
				<input type="button" value="수정" onclick="editComent(${detailBoardVo.no}, ${vo.num }, '${detailBoardVo.coment }', ${detailBoardVo.starr} )"/>
				<input type="button" value="삭제" onclick="delComent(${detailBoardVo.no},${vo.num })"/><br/>
			</c:if>
		</div>
	</div>
	<hr/>
</c:forEach>
<hr/>