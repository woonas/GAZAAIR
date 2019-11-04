<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="//cdn.ckeditor.com/4.13.0/full/ckeditor.js"></script>
</head>
<body>
<h1>후기작성</h1>
	<form method="post" action="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/writeOk.do">
		작성자 : ${userId}<br/>
		제목 : <input type="text" name="subject" id="subject"/><br/>
		글내용 : <textarea name="content" id="content"></textarea>
		<script>
			CKEDITOR.replace("content");
		</script>
		<br/>
		<input type="submit" value="후기등록"/>
	</form>
</body>
</html>
