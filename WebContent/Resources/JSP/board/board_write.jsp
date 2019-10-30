
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/write.css" type="text/css"/>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
</head>
<body>
	<h3>공지사항</h3>
	<hr/>
	<div id="wrt_all">
	<form id="wrt_frm" method="post" action="">
		<div class="row clearfix">
			<div class="col-tenth row-title">제목</div>
			<div class="col-nine-tenth">
				<input type="text" name="wrt_subject" id="wrt_subject" size="100"/>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-tenth row-title">글쓴이</div>
			<div class="col-nine-tenth">
				ㅇㄹ호ㅓㅏ
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-tenth row-title">내용</div>
		</div>
	 	<div class="board-cont">
	 		<textarea id="wrt_content" name="wrt_content"></textarea>
	 	</div>
	 		<script>
	 			CKEDITOR.replace("wrt_content", {height:'400px', filebrowserImageUploadUrl:'/upload/ckeditor_upload.asp'});
	 		</script>
	</form>
	</div>
	<hr/>
	<div id="list_btn">
		<button class="whiteBtn">이전으로</button>
		<button class="blueBtn">등록하기</button>
	</div>
</body>
</html>