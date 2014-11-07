<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
</head>
<body>
Update<br/>
<div style="width:1200px">
<form action="<%=cp %>/worship/admin/update.do" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">Video 이미지</label>
		<div class="col-sm-10">
			<input type="file" name="videoImage" id="videoImage" class="form-control"/>
			<span class="help-block">파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">Youtube URL</label>
		<div class="col-sm-10">
			<input type="text" name="youtubeUrl" id="youtubeUrl" class="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">카테고리</label>
		<div class="col-sm-10">
			<!-- 기존 등록된 카테고리 Distinct 목록 -->
			<select></select>
			<input type="text" name="category" class="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">제목 </label>
		<div class="col-sm-10">
			<input type="text" name="title" class="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">말씀위치(장/절)</label>
		<div class="col-sm-10">
			<input type="text" name="bibleIndex" class="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">말씀구절 </label>
		<div class="col-sm-10">
			<textarea name="bible" class="form-control"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">암송구절 </label>
		<div class="col-sm-10">
			<input type="text" name="recitationBibleIndex" class="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">암송구절(장/절)</label>
		<div class="col-sm-10">
			<input type="text" name="recitationBible" class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">말씀 오디오 파일</label>
		<div class="col-sm-10">
			<input type="file" name="audioFile" class="form-control"/>
			<span class="help-block">파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">말씀 텍스트 파일</label>
		<div class="col-sm-10">
			<input type="file" name="textFile" class="form-control"/>
			<span class="help-block">파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
		</div>
	</div>
	<div class="form-group">
		<label for="videoImage" class="col-sm-2 control-label">주보 파일</label>
		<div class="col-sm-10">
			<input type="file" name="juboFile[0]" class="form-control"/><br/>
			<input type="file" name="juboFile[1]" class="form-control"/><br/>
			<input type="file" name="juboFile[2]" class="form-control"/><br/>
			<span class="help-block">파일을 선택하실 경우, 새로운 파일로 대체 됩니다.</span>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<input type="submit" value="수정" class="btn"/>
			<input type="button" value="미리보기" class="btn" />
		</div>
	</div>

</form>
</div>
</body>
</html>