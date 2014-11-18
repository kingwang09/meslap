<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
<script>
function goList(){
	//location.href="${cp}/board/${boardCode}/list.do";
	var form = document.boardForm;
	form.action = "${cp}/board/${boardCode}/list.do";
	form.method = "post";
	form.submit();
}
function write(){
	//validation
	var form = document.boardForm;
	form.action = "${cp}/board/${boardCode}/write.do";
	form.method = "post";
	form.submit();
}
</script>
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<br/>
<div class="content">
<form id="boardForm" name="boardForm" action="${cp}/board/${boardCode}/write.do" method="post" enctype="multipart/form-data">
	<input type="hidden" name="boardCode" value="${boardCode}"/>
	<div class="input-group input-group-sm" style="z-index:2">
		<span class="input-group-addon"><i class="fa fa-check-circle-o"></i></span>
		<select class="form-control">
			<option>test</option>
		</select>
		<input type="text" name="category" class="form-control" placeholder="분류"/>
	</div>
	<div class="input-group input-group-sm" style="z-index:2">
		<span class="input-group-addon"><i class="fa fa-check-circle"></i></span>
		<input type="text" name="title" class="form-control" placeholder="글제목"/>
	</div>
	<textarea name="content" class="form-control" placeholder="내용" style="height:400px"></textarea>
	<div class="input-group input-group-sm">
		<span class="input-group-addon"><i class="fa fa-check-circle"></i></span>
		<input type="text" name="writer" class="form-control" placeholder="작성자(자동)" />
	</div>
	<div class="input-group input-group-sm">
		<span class="input-group-addon"><i class="fa fa-check-circle-o"></i></span>
		<input type="file" name="logicalFiles" class="form-control" placeholder="파일을 첨부해주세요."/>
	</div>
	<br/>
	<div>
		<button class="btn btn-default btn-xs" onclick="write()">
			<i class="fa fa-floppy-o"></i>
			작성완료
		</button>
		&nbsp;
		<button class="btn btn-default btn-xs" onclick="goList()">
			<i class="fa fa-th-list"></i>
			목록으로
		</button>
	</div>
</form>
</div>
<br/>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>