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
	<img src="<%=cp %>/images/mission/mission_submenu01.jpg" usemap="#mission_sub_map"/>
	<map name="mission_sub_map">
    	<area shape="rect" coords="0,56,35,76" href="<%=cp %>/about/gospel.do" alt="replay_movie">
        <area shape="rect" coords="41,56,99,76" href="<%=cp %>/about/intro.do" alt="replay_movie">
        <area shape="rect" coords="106,56,164,76" href="<%=cp %>/about/members.do" alt="replay_audio">
        <area shape="rect" coords="170,56,229,76" href="<%=cp %>/about/times.do" alt="replay_audio">
        <area shape="rect" coords="235,56,296,76" href="<%=cp %>/about/road.do" alt="replay_audio">
    </map>
</div>
<div class="line_1px"></div>
<div class="content">
	<div>
		<img src="<%=cp %>/images/mission/ministry_txt.jpg" />
	</div>
	
	<div style="float:left">
		<video width="320" height="240" controls>
		  <source src="<%=cp%>/videos/awana_video.mp4">
			Your browser does not support the video tag.
		</video>
	</div>
	<div>
		<img src="<%=cp %>/images/mission/right_box.jpg" />
	</div>
</div>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>