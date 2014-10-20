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
<!-- 
<div class="subTitle">
	<img src="<%=cp%>/images/about/about_ttl.jpg" />
</div>
<br/>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<a href="<%=cp%>/about/intro.do">교회소개</a>  / 
		<a href="<%=cp%>/about/members.do">교인등록 </a> / 
		<a href="<%=cp%>/about/times.do">예배시간 </a> / 
		<a href="<%=cp%>/about/road.do">오시는길 </a>
	</div>
</div>
<div class="line_1px"></div>
 -->
<div style="margin:0 auto; width:990px">
	<img src="<%=cp%>/images/about/about_time.jpg" />
</div>

<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>