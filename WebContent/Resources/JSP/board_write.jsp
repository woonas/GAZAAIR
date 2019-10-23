<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/write.css" type="text/css"/>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
<style>
	
</style>
</head>
<body>
	<h3>공지사항</h3>
	<hr/>
	<div id="wrt_all">
	<form id="wrt_frm" method="post" action="">
		 <ul>
		 	<li>제목 <input type="text" name="wrt_subject" id="wrt_subject" size="150"/></li>
		 	<li>글쓴이 </li>
		 	<li>글내용</li>
		 	<li><textarea id="wrt_content" name="wrt_content"></textarea></li>
		 		<script>
		 			CKEDITOR.replace("wrt_content");
		 		</script>
		 </ul>
	</form>
	</div>
	<hr/>
	<div id="list_btn">
		<button id="list_button1">이전으로</button>
		<button id="list_button2">등록하기</button>
	</div>
</body>
</html>