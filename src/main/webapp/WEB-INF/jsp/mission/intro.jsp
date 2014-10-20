<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<jsp:include page="../include/mission_sub_title.jsp"></jsp:include>
<div class="content">
	<div>
		<img src="<%=cp %>/images/mission/ministry_txt.jpg" />
	</div>
	
	<div>
		<iframe width="100%" height="390" src="//www.youtube.com/embed/E-GSaWJMKaQ?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
	</div>
	<div>
		<img src="<%=cp %>/images/mission/right_box.jpg" />
	</div>
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>