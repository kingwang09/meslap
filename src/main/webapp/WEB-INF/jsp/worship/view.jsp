<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <jsp:include page="../include/common_include.jsp"></jsp:include>    
    <script>
        $(document).ready(function(){
           $(".media").on("mouseenter",function(){
             $(this).css({backgroundColor:'#ECECEC'});
           });
            $(".media").on("mouseleave",function(){
                $(this).css({backgroundColor:'white'});
            });


            $("#juboBtn").magnificPopup({
                    items:[
                        {src:'<%=cp%>/worshipFiles/${worship.juboFileName01}'},
                        {src:'<%=cp%>/worshipFiles/${worship.juboFileName02}'},
                        {src:'<%=cp%>/worshipFiles/${worship.juboFileName03}'}
                    ],
                    gallery:{
                        enabled:true
                    },
                    type:'image'
             });

        });
        
        function viewPage(id,recentId){
        	if(id==recentId){
        		alert("현재 보시는 말씀이 마지막 말씀입니다.");
        	}else if(id<=0){
        		alert("현재 보시는 말씀이 처음 말씀입니다.");
        	}else{
        		var form = document.worshipForm;
            	form.id.value = id;
            	form.submit();	
        	}
        }
    </script>
</head>
<body>
	<jsp:include page="../include/menu_include.jsp"></jsp:include>
	<jsp:include page="../include/worship_sub_title.jsp"></jsp:include>

<div class="worship-content">
	<form id="worshipForm" name="worshipForm" action="<%=cp%>/worship/view.do">
		<input type="hidden" name="id" value="${worship.id}" />
		<input type="hidden" name="cPage" value="${cPage}" />
	</form>
	<div class="worship-body-left">
		<!-- <iframe width="100%" height="360" src="//www.youtube.com/embed/E-GSaWJMKaQ?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>  -->
		<iframe width="100%" height="360" src="//www.youtube.com/embed/${worship.youtubeUrl}?feature=player_detailpage&wmode=opaque" frameborder="0" allowfullscreen></iframe>
		
	</div>
	<div class="worship-body-right" style="padding-top:25px">
		<a href="javascript:viewPage('${worship.id-1}','${recentWorshipId+1 }')" style="padding-right:30px"><img src="<%=cp%>/images/worship/left.jpg" /></a>
		<a href="javascript:viewPage('${worship.id+1}','${recentWorshipId+1 }')"><img src="<%=cp%>/images/worship/right.jpg" /></a>
		<div style="padding-top:25px">
			<div class="h4"><b>${worship.title}</b></div> <!-- Title 말씀제목 -->
			<div class="h5"><b>${worship.bibleIndex}</b></div> <!-- sub 말씀구절 -->
			<small>${worship.wdateStr}</small>     <!-- 날짜 -->
		</div>
		<div style="padding-top:25px">
			<div class="h5" style="width:100px;background-color:blue;color:white">한송 암송구절</div>
            <p style="word-wrap: break-word;">${worship.recitationBible}</p>
            ${worship.recitationBibleIndex}
		</div>
		<div style="padding-top:25px">
             <a href="<%=cp%>/worship/download.do?fileName=${worship.audioFileName}"><img class="hoverImages" imgName="top_bt_audio" src="<%=cp%>/images/main/top_bt_audio.jpg"/></a>
             <a href="<%=cp%>/worship/download.do?fileName=${worship.textFileName}"><img class="hoverImages" imgName="top_bt_ebook" src="<%=cp%>/images/main/top_bt_ebook.jpg"/></a>
             <a href="#" id="juboBtn"><img class="hoverImages" imgName="top_bt_paper" src="<%=cp%>/images/main/top_bt_paper.jpg" /></a>
         </div>
	</div>
  	
    <!-- 말씀 Row -->
    <div style="clear:both;padding-top:15px">
       <pre class="worship">${worship.bible}</pre>
    </div>
    
    <br/>
    
    
</div>
<!-- iFrame start-->
<iframe src="<%=cp%>/worship/insideView.do?cPage=${cPage}" width="100%" height="900px" frameborder="no"></iframe>
<!-- 
<div class="worship-content">
    <div class="row">
    	<div class="col-md-12">
	    	<div class="pull-right">
	            <select class="form-control">
	                <option>주제별 설교보기</option>
	            </select>
	        </div>
        </div>
    </div>
    <c:forEach var="w" items="${worships}">
    	<div class="media">
	         <a class="pull-left" href="#">
	             <img class="media-object img-rounded" src="<%=cp%>/images/worship/video1.jpg" width="160" height="120"/>
	         </a>
	         <div class="media-body" style="padding-left:25px;padding-top:25px">
	             <div class="h5 media-heading"><b><a href="<%=cp%>/worship/view.do?id=${w.id}&cPage=${pMap.cPage}">${w.title}</a></b>
	             </div>
	             <p style="word-break: break-all">
	                 ${w.bibleIndex } <br/><small>${w.wdate }</small>
	                 <div class="pull-right">
	                     <span><a href="#"><img class="hoverImages" imgName="bt_audio" src="<%=cp%>/images/main/bt_audio.jpg"/></a></span>
	                     <span><a href="#"><img class="hoverImages" imgName="bt_ebook" src="<%=cp%>/images/main/bt_ebook.jpg"/></a></span>
	                 </div>
	             </p>
	         </div>
	     </div>
    </c:forEach>
	<div style="text-align:center">
		${pMap.pTag}
	</div>
</div>
-->
<!-- iFrame start-->


<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>