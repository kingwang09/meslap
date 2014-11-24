<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
<script>
function doSubmit(){
	var form = document.worshipForm;
	//validate
	form.submit();
}
</script>
</head>
<body>
<jsp:include page="../include/menu_include.jsp"></jsp:include>
<br/>
<div class="content" style="text-align:left;">
	<form action="<%=cp %>/worship/admin/update.do" id="worshipForm" name="worshipForm" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
		<input type="hidden" name="id" value="${worship.id }" />
		<div class="form-group">
			<label for="mainBibleImage" class="col-sm-2 control-label">Main Bible 이미지</label>
			<div class="col-sm-10">
				<input type="file" name="mainBibleImage" id="mainBibleImage" class="form-control"/>
				<span class="help-block">기존 파일 : ${worship.mainBibleImageFileName}. 파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="mainVideoImage" class="col-sm-2 control-label">Main Video 이미지</label>
			<div class="col-sm-10">
				<input type="file" name="mainVideoImage" id="mainVideoImage" class="form-control"/>
				<span class="help-block">기존 파일 : ${worship.mainVideoImageFileName}. 파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">Video 이미지</label>
			<div class="col-sm-10">
				<input type="file" name="videoImage" id="videoImage" class="form-control"/>
				<span class="help-block">기존 파일 : ${worship.videoImageFileName}. 파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">Youtube URL</label>
			<div class="col-sm-10">
				<input type="text" name="youtubeUrl" id="youtubeUrl" class="form-control" value="${worship.youtubeUrl}"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">카테고리</label>
			<div class="col-sm-10">
				<!-- 기존 등록된 카테고리 Distinct 목록 -->
				<select></select>
				<input type="text" name="category" class="form-control" value="${worship.category }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">제목 </label>
			<div class="col-sm-10">
				<input type="text" name="title" class="form-control" value="${worship.title }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">말씀위치(장/절)</label>
			<div class="col-sm-10">
				<input type="text" name="bibleIndex" class="form-control" value="${worship.bibleIndex }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">말씀구절 </label>
			<div class="col-sm-10">
				<textarea name="bible" class="form-control">${worship.bible }</textarea>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">암송구절(장/절)</label>
			<div class="col-sm-10">
				<input type="text" name="recitationBible" class="form-control" value="${worship.recitationBible }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">암송구절 </label>
			<div class="col-sm-10">
				<input type="text" name="recitationBibleIndex" class="form-control" value="${worship.recitationBibleIndex }"/>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">말씀 오디오 파일</label>
			<div class="col-sm-10">
				<input type="file" name="audioFile" class="form-control" />
				<span class="help-block">기존 파일 : ${worship.audioFileName }. 파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">말씀 텍스트 파일</label>
			<div class="col-sm-10">
				<input type="file" name="textFile" class="form-control"/>
				<span class="help-block">기존 파일 : ${worship.textFileName }. 파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<label for="videoImage" class="col-sm-2 control-label">주보 파일</label>
			<div class="col-sm-10">
				<input type="file" name="juboFile01" class="form-control"/><br/>
				<input type="file" name="juboFile02" class="form-control"/><br/>
				<input type="file" name="juboFile03" class="form-control"/><br/>
				<span class="help-block">
					기존 파일 : <br/>
					${worship.juboFileName01},<br/>
					${worship.juboFileName02},<br/> 
					${worship.juboFileName03}.<br/> 
					파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-12" style="text-align:center">
			<a href="javascript:doSubmit();" class="btn btn-default btn-xs">
				<i class="fa fa-floppy-o"></i> 수정 완료
			</a>
			&nbsp;
			<!-- 
			<input type="button" value="미리보기" class="btn btn-default btn-xs" />
			&nbsp;
			 -->
			<a href="<%=cp %>/worship/admin/list.do" class="btn btn-default btn-xs">
				<i class="fa fa-th-list"></i> 목록으로
			</a>
			</div>
		</div>
	
	</form>
</div>
<br/>
<jsp:include page="../include/common_bottom.jsp"></jsp:include>
</body>
</html>