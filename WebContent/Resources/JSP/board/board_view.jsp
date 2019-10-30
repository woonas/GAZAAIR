<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/main.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/layout.css" type="text/css"/>
<link rel="stylesheet" href="../CSS/board.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/main.css" type="text/css"/>

</head>
<body>
<%@ include file="/Resources/JSP/nav.jspf" %>
	<h3>공지사항</h3>
	<hr/>
	<div id="brd_all">
		<div id="brd_title" class="col-three-fourth">
			제목자리~
		</div>
		<div id="hitNdate">조회수 99999 │ 날짜 2019.10.23</div>
	<hr style="border:1px solid #eee"/>
		<div id="brd_content">
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		내용<br/>
		</div>
	<hr/>
		<div class="brd_bottom">
		∧ 이전글 <a href="#">이전글내용이전글내용이전글내용이전글내용이전글내용</a>
		</div>
	<hr style="border:1px solid #eee"/>
		<div class="brd_bottom">
		∨ 다음글 <a href="#">다음글내용다음글내용다음글내용다음글내용다음글내용</a>
		</div>
	<hr style="border:1px solid #eee"/>
	<div id="list_btn">
		<button class="whiteBtn">목록보기</button>
	</div>
	</div>
	<%@ include file="/Resources/JSP/footer.jspf" %>
</body>
</html>