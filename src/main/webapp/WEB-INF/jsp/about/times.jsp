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
	<img src="<%=cp %>/images/about/about_submenu04.jpg" />
</div>
<div class="line_1px"></div>
<div style="margin:0 auto; width:990px">
	<img src="<%=cp%>/images/about/about_time.jpg" />
</div>

<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>