<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<jsp:include page="../include/about_sub_title.jsp"></jsp:include>
<div class="content">
	<img src="<%=cp%>/images/about/about_basic.jpg" />
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>