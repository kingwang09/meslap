<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String cp = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../include/common_include.jsp"></jsp:include>
</head>
<body>
Write<br/>
<form action="<%=cp %>/worship/admin/write.do" method="post" enctype="multipart/form-data">
	Video Image : <input type="file" name="videoImage" /><br/>
	Youtube URL : <input type="text" name="youtubeUrl" />
	
	카테고리 : <select></select><input type="text" name="category" /><br/>
	제목 : <input type="text" name="title" /><br/>
	말씀위치(장/절) : <input type="text" name="bibleIndex" /><br/>
	암송구절 : <input type="text" name="recitationBible" /><br/>
	암송위치(장/절) : <input type="text" name="recitationBibleIndex" /><br/>

	Bible : <textarea name="bible"></textarea><br/>

	Audio File : <input type="file" name="audioFile" />
	Jubo File: <br/>
		<input type="file" name="juboFile[0]" /><br/>
		<input type="file" name="juboFile[1]" /><br/>
		<input type="file" name="juboFile[2]" /><br/>
	<!-- Title Image File : <input type="file" name="titleImageFile" />  -->
	Text File : <input type="file" name="textFile" />
<input type="submit" value="save" />
</form>
</body>
</html>