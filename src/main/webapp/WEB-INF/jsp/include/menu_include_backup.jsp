<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<script>

$(document).ready(function(){
	var changeImage = function(obj, hover){
		//console.log(obj);
		var imgName = $(obj).attr("imgName");
		var ext = $(obj).attr("ext");//확장자
		
		ext = ext ? ext : "jpg";
		imgName = hover? imgName+"_hover." : imgName+".";
		
		var imgFullName = "<%=cp%>/images/main/"+imgName+ext;
		$(obj).attr("src",imgFullName);
	};
	
	$(".hoverImages").hover(
			function(){
				//console.log(this);
				changeImage(this, true);
			},
			function(){
				changeImage(this, false);
			}
	);
});
</script>
<div id="form-progress-bar" class="form-progress-bar">
    <div></div>
</div>
<!-- 상단 메인 메뉴 -->
<!-- Meslap Logo -->
<div class="row">
	<div class="col-xs-2">
		<div class="site-navigation-item">
		    <a href="<%=cp%>/index.do"><img src="<%=cp %>/images/main/meslap_logo.jpg" alt="MeslapLogo" width="240"></a>
		</div>
	</div>
	<div class="col-xs-2">
		<!-- About Meslap -->
		<div class="site-navigation-item site-navigation-about-meslap">
		    <span class="site-navigation-about-meslap">
		        <a href="<%=cp%>/about/intro.do"><img class="hoverImages" src="<%=cp %>/images/main/main_menu_about_meslap.jpg" imgName="main_menu_about_meslap" alt="AboutMeslap" width="150"></a>
		    </span>
		    <div class="site-navigation-dropdown-about-meslap">            
		        <img src="<%=cp %>/images/main/roll_about_meslap.jpg" width="600">
		    </div>
		</div>
	</div>
	<div class="col-xs-2">
		<!-- Worship -->
		<div class="site-navigation-item site-navigation-worship-meslap">
		    <span class="site-navigation-worship-meslap">
		        <a href="<%=cp%>/worship/main.do"><img class="hoverImages" src="<%=cp %>/images/main/main_menu_worship_meslap.jpg" imgName="main_menu_worship_meslap" alt="WorshipMeslap" width="150"></a>
		    </span>
		    <div class="site-navigation-dropdown-worship-meslap">            
		        <img src="<%=cp %>/images/main/roll_worship_meslap.jpg" width="600">
		    </div>
		</div>
	</div>
	<div class="col-xs-2">
		<!-- Mission -->
		<div class="site-navigation-item site-navigation-mission-meslap">
		    <span class="site-navigation-mission-meslap">
		        <a href="<%=cp%>/mission/intro.do"><img class="hoverImages" src="<%=cp %>/images/main/main_menu_mission_meslap.jpg" imgName="main_menu_mission_meslap" alt="MissionMeslap" width="150"></a>
		    </span>
		    <div class="site-navigation-dropdown-mission-meslap">            
		        <img src="<%=cp %>/images/main/roll_mission_meslap.jpg" width="600">
		    </div>
		</div>
	</div>
	<div class="col-xs-2">
		<!-- News -->
		<div class="site-navigation-item site-navigation-news-meslap">
		    <span class="site-navigation-news-meslap">
		        <a href="<%=cp%>/news.do"><img class="hoverImages" src="<%=cp %>/images/main/main_menu_news_meslap.jpg" imgName="main_menu_news_meslap" alt="NewsMeslap" width="150"></a>
		    </span>
		    <div class="site-navigation-dropdown-news-meslap">            
		        <img src="<%=cp %>/images/main/roll_news_meslap.jpg" width="600">
		    </div>
		</div>
	</div>
	<div class="col-xs-2">
		<!-- e-mail 
		<div class="site-navigation-item site-navigation-email">
		</div>
		-->
		<img class="hoverImages" src="<%=cp %>/images/main/main_menu_contact_us_mail.gif" imgName="main_menu_contact_us_mail" ext="gif" />
		<!-- facebook 
		<div class="site-navigation-item site-navigation-facebook">
		</div>
		-->
		<img class="hoverImages" src="<%=cp %>/images/main/main_menu_face_book.gif" imgName="main_menu_face_book" ext="gif" />
		<!-- kakao music 
		<div class="site-navigation-item site-navigation-kakaomusic">
		</div>
		-->
		<img class="hoverImages" src="<%=cp %>/images/main/main_menu_kakao_music.gif" imgName="main_menu_kakao_music" ext="gif" />
	</div>
</div>







<hr class="separator_top" >
<br/>