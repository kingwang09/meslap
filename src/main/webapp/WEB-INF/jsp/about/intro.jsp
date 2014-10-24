<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<div class="subTitle">
	<img src="<%=cp %>/images/about/about_submenu02.jpg" />
</div>
<div class="line_1px"></div>
<div style="height:400px">
	교회소개 페이지
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>