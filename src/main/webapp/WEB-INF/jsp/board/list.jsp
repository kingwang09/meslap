<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<div class="content" style="height:650px">
	list Size = ${boards}<br/>
	<div class="pull-right">
		<a href="${cp}/board/${boardCode}/write.do" class="btn btn-default btn-xs"><i class="fa fa-pencil"></i> 글작성</a><br/>	
	</div>
	<table class="table table-condensed">
		<thead>
			<tr>
				<th>분류</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
				<th>작업</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty boards}">
				<tr>
					<td colspan="5" align="center">현재 게시글이 존재하지 않습니다.</td>
				</tr>
			</c:if>	
			
			<c:forEach var="board" items="${boards}">
			<tr>
				<td>${board.category}</td>
				<td><a href="${cp}/board/${board.boardCode}/${board.id}/view.do">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.wdate}</td>
				<td>
					<a href="${cp}/board/${board.boardCode}/${board.id}/update.do" class="btn btn-default btn-xs"><i class="fa fa-pencil-square-o"></i> 수정</a>
					<a href="${cp}/board/${board.boardCode}/${board.id}/delete.do" class="btn btn-default btn-xs"><i class="fa fa-times"></i> 삭제</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>