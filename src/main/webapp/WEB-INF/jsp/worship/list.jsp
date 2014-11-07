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
	list Size = ${worships}<br/>
	<table class="table table-condensed">
		<thead>
			<tr>
				<th>카테고리</th>
				<th>제목</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach  var="worship" items="${worships}">
			<tr>
				<td>${worship.category}</td>
				<td>${worship.title}</td>
				<td>
					update
					delete
				</td>
			</tr>
			</c:forEach>
		</tbody>	
	</table>
</body>
</html>