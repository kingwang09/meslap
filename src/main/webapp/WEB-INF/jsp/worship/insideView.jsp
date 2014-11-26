<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%String cp = request.getContextPath(); %>
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
<script>
function viewPage(id){
	var form = parent.document.worshipForm;
	form.cPage.value = "${pMap.cPage}";
	form.id.value = id;
	form.submit();
}
function goPage(page){
	location.href="<%=cp%>/worship/insideView.do?cPage="+page;
}
</script>
</head>
<!-- iFrame start-->
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
	             <div class="h5 media-heading"><b><a href="javascript:viewPage('${w.id }')">${w.title}</a></b>
	             	<!-- <span class="label label-default">New</span>  -->
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
<!-- iFrame start-->