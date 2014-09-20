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
</body>
</html>