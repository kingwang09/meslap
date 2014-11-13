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
Write<br/>
<form action="${cp}/board/${boardCode}/write.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="boardCode" value="${boardCode}"/>
	<div>
		<span>title : <input type="text" name="title" /></span>
	</div>
	<div>
		<span>content: 
			<textarea name="content"></textarea>
		</span>
	</div>
	<div>
		<span>
			writer :
			<input type="text" name="writer" />
		</span>
	</div>
	<input type="file" name="logicalFiles" />
	
	<input type="submit" value="save" />
</form>
</body>
</html>