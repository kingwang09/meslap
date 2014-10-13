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
	list Size = ${boardAdmins}<br/>
	<a href="${cp}/boardAdmin/create.do">Create New Board</a><br/>
	<table class="table table-condense">
		<thead>
			<tr>
				<th>boardTitle</th>
				<th>boardCode</th>
				<th>description</th>
				<th>wdate</th>
				<th>action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="boardAdmin" items="${boardAdmins}">
			<tr>
				<td><a href="${cp}/boardAdmin/view.do?boardCode=${boardAdmin.boardCode}">${boardAdmin.boardTitle}</a></td>
				<td>${boardAdmin.boardCode}</td>
				<td>${boardAdmin.description}</td>
				<td>${boardAdmin.wdate}</td>
				<td><a href="${cp}/board/${boardAdmin.boardCode}/list.do">board</a></td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>