<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
	<jsp:include page="../include/common_include.jsp"></jsp:include>
<script>
function goPage(page){
		var form = document.worshipForm;
		form.cPage.value = page;
		form.submit();
}
function doImport(){
	if(confirm("말씀 일괄등록 하시겠습니까?")){
		location.href="${cp}/worship/admin/import.do";
	}
}
</script>
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<div class="content">
	<form name="worshipForm" id="worshipForm" method="get" action="${cp }/worship/admin/list.do">
		<input type="hidden" name="cPage" value="${pMap.cPage }" />
	</form>
	<div class="pull-right">
		<a href="${cp}/worship/admin/write.do" class="btn btn-default btn-xs"><i class="fa fa-pencil"></i> 말씀 등록</a>
		&nbsp;	
		<a href="javascript:doImport()" class="btn btn-default btn-xs"><i class="fa fa-arrow-circle-o-down"></i> 말씀 일괄 등록</a>
	</div>
	<br/>
	<table class="table table-condense">
		<thead>
			<tr>
				<th>카테고리</th>
				<th>제목</th>
				<th>예배일자</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty worships}">
				<tr>
					<td colspan="4" align="center">현재 말씀이 존재하지 않습니다.</td>
				</tr>
			</c:if>	
			<c:forEach  var="worship" items="${worships}">
			<tr>
				<td>${worship.category}</td>
				<td><a href="${cp}/worship/view.do?id=${worship.id}">${worship.title}</a></td>
				<td>${worship.wdateStr }</td>
				<td>
					<a href="${cp}/worship/admin/update.do?id=${worship.id}"><i class="glyphicon glyphicon-edit"></i></a>
					<a href="${cp}/worship/admin/delete.do?id=${worship.id}"><i class="glyphicon glyphicon-trash"></i></a>
				</td>
			</tr>
			</c:forEach>
		</tbody>	
	</table>
	${pMap.pTag }
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>