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
Create Board<br/>
<form action="${cp}/boardAdmin/create.do" method="post">
	<div>
		<span>title : <input type="text" name="boardTitle" value="${boardAdmin.boardTitle }"/></span>
	</div>
	<div>
		<span>boardCode : <input type="text" name="boardCode" value="${boardAdmin.boardCode}"/></span> 
		<c:if test="${!empty boardAdmin.errorMessage}">
			<span>${boardAdmin.errorMessage}</span>
		</c:if>
	</div>
	<div>
		<span>Description : 
			<textarea name="description">${boardAdmin.description}</textarea>
		</span>
	</div>
	<input type="submit" value="save" />
</form>
</body>
</html>