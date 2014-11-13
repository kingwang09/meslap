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
	list Size = ${worships}<br/>
	<table class="table table-bordered table-hover">
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
				<td><a href="${cp}/worship/view.do?id=${worship.id}">${worship.title}</a></td>
				<td>
					<a href="${cp}/worship/admin/update.do?id=${worship.id}"><i class="glyphicon glyphicon-edit"></i></a>
					<a href="${cp}/worship/admin/delete.do?id=${worship.id}"><i class="glyphicon glyphicon-trash"></i></a>
				</td>
			</tr>
			</c:forEach>
		</tbody>	
	</table>
</body>
</html>