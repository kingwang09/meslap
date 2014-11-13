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
<a href="${cp}/board/${boardCode}/list.do">list</a><br/>
	<div>
		<span>title : ${board.title}</span>
	</div>
	<div>
		<span>content : ${board.content}</span>
	</div>
	<div>
		<span>wdate : ${board.wdate}</span>
	</div>
	
	<c:forEach var="file" items="${board.files}">
		<div>
			<span>filePath : <a href="${cp}/board/${boardCode}/${board.id}/download.do?filePath=${file.filePath}&fileName=${file.fileName}" title="${file.filePath}">${file.fileName}</a></span>
		</div>
		<hr/>
	</c:forEach>
</body>
</html>