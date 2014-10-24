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
	<img src="<%=cp %>/images/about/about_submenu03.jpg" />
</div>
<div class="line_1px"></div>
<div style="width:990px;margin:0 auto">
	<div>
		<!-- <iframe src="http://map.naver.com/local/siteview.nhn?code=12271798"></iframe>  -->
		Google Map
	</div>
	<div>
		<img src="<%=cp%>/images/about/about_ad.jpg" />
	</div>
	<div style="text-align:right">
		<img src="<%=cp%>/images/about/map_bt.jpg" />
	</div>
	<div>
	<img src="<%=cp%>/images/about/about_trans.jpg" />
	</div>
</div>

<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>