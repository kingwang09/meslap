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
		<img src="<%=cp%>/images/mission/about_ttl.jpg" />
	</div>
</div>
<br/>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<a href="<%=cp%>/mission/intro.do">기관별소개</a>  / 
		갤러리 
	</div>
</div>
<br/>
<hr class="separator_top" >
<br/>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<img src="<%=cp %>/images/mission/ministry_txt.jpg" />
	</div>
</div>
<br/>
<div class="row">
	<div class="col-md-8 col-md-offset-2">
		<div class="row">
			<div class="col-md-8">
				<iframe width="100%" height="390" src="//www.youtube.com/embed/E-GSaWJMKaQ?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
			</div>
			<div class="col-md-4">
				<img src="<%=cp %>/images/mission/right_box.jpg" />
			</div>
		</div>
	</div>
</div>
<center>
	<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</center>
</body>
</html>