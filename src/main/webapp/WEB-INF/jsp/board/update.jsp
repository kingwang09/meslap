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
update<br/>
<form action="${cp}/board/${boardCode}/${board.id}/update.do" method="post">
	<input type="hidden" name="boardCode" value="${boardCode}"/>
	<input type="hidden" name="id" value="${board.id}"/>
	<div>
		<span>title : <input type="text" name="title" value="${board.title}"/></span>
	</div>
	<div>
		<span>content: 
			<textarea name="content">${board.content}</textarea>
		</span>
	</div>
	<div>
		<span>
			writer :
			<input type="text" name="writer" value="${board.writer}"/>
		</span>
	</div>
	<input type="file" name="logicalFiles" />
	<input type="submit" value="update" />
</form>
</body>
</html>