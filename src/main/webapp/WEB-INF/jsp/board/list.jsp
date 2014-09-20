<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	list Size = ${boards}<br/>
	<a href="${cp}/board/${boardCode}/write.do">write</a><br/>
	<table class="table">
		<thead>
			<tr>
				<th>title</th>
				<th>writer</th>
				<th>wdate</th>
				<th>action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="board" items="${boards}">
			<tr>
				<td><a href="${cp}/board/${board.boardCode}/${board.id}/view.do">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.wdate}</td>
				<td>
					<a href="${cp}/board/${board.boardCode}/${board.id}/update.do">update</a>
					<a href="${cp}/board/${board.boardCode}/${board.id}/delete.do">delete</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>