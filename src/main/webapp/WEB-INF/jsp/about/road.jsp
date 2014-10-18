<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<img src="<%=cp%>/images/about/about_ttl.jpg" />
	</div>
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
<br/>
<hr class="separator_top" >
<br/>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div>
			<!-- <iframe src="http://map.naver.com/local/siteview.nhn?code=12271798"></iframe>  -->
			Google Map
		</div>
		<img src="<%=cp%>/images/about/about_ad.jpg" />
		<img src="<%=cp%>/images/about/map_bt.jpg" />
		<img src="<%=cp%>/images/about/about_trans.jpg" />
	</div>
</div>
<center>
	<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</center>

</body>
</html>