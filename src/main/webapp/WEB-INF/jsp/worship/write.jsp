<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %> 
<c:set var="cp" value="${pageContext.request.contextPath}" scope="request"></c:set>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Write<br/>
<form action="${cp}/worship/admin/write.do" method="post" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-12">
			<b>Title</b> : <input type="text" name="title" /><br/>
			<b>Bible Index</b> : <input type="text" name="bibleIndex" />
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-8">
			<div>
				<b>Video Image </b> : <input type="file" name="videoImage" />
			</div>
			<div>
				<b>Youtube URL</b> : <input type="text" name="youtubeUrl" />
			</div>
		</div>
		<div class="col-md-4">
			<div>
				<b>Title Image File</b> : <input type="file" name="titleImageFile" />
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<textarea name="bible"></textarea>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-12">
			<div>
				<b>Audio File</b> : <input type="file" name="audioFile" />
			</div>
			<div>
				<b>Jubo File</b> : <br/>
					<b>1. </b><input type="file" name="juboFile[0]" /><br/>
					<b>2. </b><input type="file" name="juboFile[1]" /><br/>
					<b>3. </b><input type="file" name="juboFile[2]" /><br/>
			</div>
			<div>
				<b>Text File</b> : <input type="file" name="textFile" />
			</div>
		</div>
	</div>
	<input type="submit" value="save" />
</form>
</body>
</html>