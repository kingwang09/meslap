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
Write<br/>
<div class="content">
<form action="${cp}/board/${boardCode}/write.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="boardCode" value="${boardCode}"/>
	<div class="input-group input-group-sm" style="z-index:2">
		<span class="input-group-addon"><i class="fa fa-circle-o-notch"></i></span>
		<input type="text" name="title" class="form-control" placeholder="글제목"/>
	</div>
	<textarea name="content" class="form-control" placeholder="내용" style="height:400px"></textarea>
	<div class="input-group input-group-sm">
		<span class="input-group-addon"><i class="fa fa-circle-o-notch"></i></span>
		<input type="text" name="writer" class="form-control" placeholder="작성자(자동)" />
	</div>
	<div class="input-group input-group-sm">
		<span class="input-group-addon"><i class="fa fa-circle-o-notch"></i></span>
		<input type="file" name="logicalFiles" class="form-control" placeholder="파일을 첨부해주세요."/>
	</div>
	<input type="submit" value="저장" class="btn btn-default btn-xs"/>
	&nbsp;
	<input type="reset" value="취소" class="btn btn-default btn-xs"/>
</form>
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>