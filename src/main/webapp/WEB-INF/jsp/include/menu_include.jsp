<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<div id="form-progress-bar" class="form-progress-bar">
    <div></div>
</div>
<!-- 상단 메인 메뉴 -->
<!-- Meslap Logo -->
<div class="site-navigation-item">
    <a href="<%=cp%>/index.do"><img src="<%=cp %>/images/logo.gif" alt="MeslapLogo" width="240"></a>
</div>
<!-- About Meslap -->
<div class="site-navigation-item site-navigation-about-meslap">
    <span class="site-navigation-about-meslap">
        <img src="<%=cp %>/images/main_menu_about_meslap.gif" alt="AboutMeslap" width="150">
    </span>
    <div class="site-navigation-dropdown-about-meslap">            
        <img src="<%=cp %>/images/roll_about_meslap.jpg" width="600">
    </div>
</div>
<!-- Worship -->
<div class="site-navigation-item site-navigation-worship">
    <span class="site-navigation-worship-meslap">
        <a href="<%=cp%>/worship.do"><img src="<%=cp %>/images/main_menu_worship.gif" alt="AboutMeslap" width="150"></a>
    </span>
</div>
<!-- Mission -->
<div class="site-navigation-item site-navigation-mission">
    <span class="site-navigation-mission-meslap">
        <a href="<%=cp%>/mission.do"><img src="<%=cp %>/images/main_menu_mission.gif" alt="AboutMeslap" width="150"></a>
    </span>
</div>
<!-- News -->
<div class="site-navigation-item site-navigation-news">
    <span class="site-navigation-news-meslap">
        <a href="<%=cp%>/news.do"><img src="<%=cp %>/images/main_menu_news.gif" alt="AboutMeslap" width="150"></a>
    </span>
</div>
<!-- e-mail -->
<div class="site-navigation-item site-navigation-email">
</div>
<!-- facebook -->
<div class="site-navigation-item site-navigation-facebook">
</div>
<!-- kakao music -->
<div class="site-navigation-item site-navigation-kakaomusic">
</div>

<hr class="separator_top" >