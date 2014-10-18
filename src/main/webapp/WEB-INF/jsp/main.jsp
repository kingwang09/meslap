<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="./include/common_include.jsp"></jsp:include>
</head>
<body>
<jsp:include page="./include/menu_include.jsp"></jsp:include>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
 <!-- Indicators -->
 <ol class="carousel-indicators">
     <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
     <li data-target="#carousel-example-generic" data-slide-to="1"></li>
     <li data-target="#carousel-example-generic" data-slide-to="2"></li>
 </ol>

 <!-- Wrapper for slides -->
 <div class="carousel-inner">
     <div class="item active">
     	 <div style="width:100%;background-color:black;text-align:center">
         	<img src="<%=cp %>/images/main_banner_1.jpg" alt="..." style="height:409px;">
         </div>
         <div class="carousel-caption">

         </div>
     </div>
     <div class="item">
         <div style="width:100%;background-color:black;text-align:center">
         	<img src="<%=cp %>/images/main_banner_1.jpg" alt="..." style="height:409px;">
         </div>
         <div class="carousel-caption">
         </div>
     </div>
     <div class="item">
         <div style="width:100%;background-color:black;text-align:center">
         	<img src="<%=cp %>/images/main_banner_1.jpg" alt="..." style="height:409px;">
         </div>
         <div class="carousel-caption">
         </div>
     </div>
     <div class="item">
         <div style="width:100%;background-color:black;text-align:center">
         	<img src="<%=cp %>/images/main_banner_1.jpg" alt="..." style="height:409px;">
         </div>
         <div class="carousel-caption">
         </div>
     </div>
 </div>

 <!-- Controls
 <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
     <span class="glyphicon glyphicon-chevron-left"></span>
 </a>
 <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
     <span class="glyphicon glyphicon-chevron-right"></span>
 </a>
 -->
</div>

<div style="margin:0 auto;padding-top:15px;width:990px;padding-top:15px">
 <!-- 메인 배너 하단 메뉴 - 1st --> 
 	<ul style="padding:0;margin:0">
 		<li style="display:inline;font-size:0">
 			<a href="<%=cp %>/about/intro.do" style="padding-right:10px">
				<img src="<%=cp %>/images/body_menu_about_meslap.gif" alt="AboutMeslap" />
			</a>
 		</li>
 		<li style="display:inline;font-size:0">
 			<a href="<%=cp %>/worship/main.do" style="padding-right:10px">
	            <img src="<%=cp %>/images/body_menu_worship.gif" alt="Worship" />
	        </a>
 		</li>
 		<li style="display:inline;font-size:0">
 			<a href="<%=cp %>/mission/intro.do" style="padding-right:10px">
	            <img src="<%=cp %>/images/body_menu_mission.gif" alt="Mission" />
	        </a>
 		</li>
 		<li style="display:inline;font-size:0">
 			<a href="<%=cp %>/news.do">
	            <img src="<%=cp %>/images/body_menu_news.gif" alt="News" />
	        </a>
 		</li>
 	</ul>
</div>
<div style="text-align:center;padding-top:10px;">
	<div style="width:990px;height:350px;margin:0 auto;">
		<div style="width:490px;float:left">
			<a href="/" class="block-products-list-item-icon" style="float:left;padding-right:10px">
	           <img src="<%=cp %>/images/weekly_bible.gif" alt="WeeklyBible" />
	        </a>
	        <a href="/" class="block-products-list-item-icon" style="float:left;padding-bottom:10px">
	            <img src="<%=cp %>/images/preaching.gif" alt="Preaching" />
	        </a>
	        <img src="<%=cp %>/images/replay.gif" alt="Replay" usemap="#replay_map">
	        <map name="replay_map">
	            <area shape="rect" coords="18,52,232,96" href="/" alt="replay_movie">
	            <area shape="rect" coords="255,52,468,96" href="/" alt="replay_audio">
	        </map>
		</div>
		<div style="width:490px;float:right">
			<a href="/" class="block-products-list-item-icon" style="float:left;padding-right:10px">
	           <img src="<%=cp %>/images/good_news.gif" alt="GoodNews" />
	       </a>
	       <a href="/" class="block-products-list-item-icon" style="float:left;padding-bottom:10px">
	           <img src="<%=cp %>/images/worship_time_table.gif" alt="WorshipTimeTable" />
	       </a>
	       <a href="/" class="block-products-list-item-icon" style="float:left">
	           <img src="<%=cp %>/images/location.gif" alt="Location" />
	       </a>
		</div>
	</div>
	<!-- 
	<table align="center" style="padding:0;margin:0">
		<tr>
			<td>
				<a href="/" class="block-products-list-item-icon">
		           <img src="<%=cp %>/images/weekly_bible.gif" alt="WeeklyBible" width="240">
		        </a>
		        <a href="/" class="block-products-list-item-icon">
		            <img src="<%=cp %>/images/preaching.gif" alt="Preaching" width="240">
		        </a>
			</td>
			<td rowspan="2">
				<a href="/" class="block-products-list-item-icon">
		            <img src="<%=cp %>/images/good_news.gif" alt="GoodNews" width="240">
		        </a>
			</td>
			<td>
				<a href="/" class="block-products-list-item-icon">
		           <img src="<%=cp %>/images/worship_time_table.gif" alt="WorshipTimeTable" width="240">
		       </a>
			</td>
		</tr>
		<tr>
			<td>
				<img src="<%=cp %>/images/replay.gif" alt="Replay" width="490" usemap="#replay_map">
		        <map name="replay_map">
		            <area shape="rect" coords="18,52,232,96" href="/" alt="replay_movie">
		            <area shape="rect" coords="255,52,468,96" href="/" alt="replay_audio">
		        </map>
			</td>
			<td>
				<a href="/" class="block-products-list-item-icon">
		           <img src="<%=cp %>/images/location.gif" alt="Location" width="240">
		       </a>
			</td>
		</tr>
	</table>
	 -->
</div>
<div style="height:1px; background-color:#e7e7e7">
</div>

<!-- 하단 주소 -->
<jsp:include page="./include/common_bottom.jsp"></jsp:include>
</body>
</html>
