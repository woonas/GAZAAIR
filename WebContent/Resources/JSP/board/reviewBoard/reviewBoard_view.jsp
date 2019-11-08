<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../CSS/board.css" type="text/css"/>
</head>
<body>
	<%@ include file="../../common/nav.jspf" %>
	<section class="content">
		<h3>고객의 말씀</h3>
		<hr/>
		<div id="brd_all">
			<div id="brd_title" class="col-two-third">
				제목자리~
			</div>
			<div id="hitNdate">작성자 홍길동동동 │ 조회수 99999 │ 날짜 2019.10.23</div>
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
		<hr style="border:1px solid #eee"/>
		<div id="commentt">
		<c:forEach var="rv" items="${list}">
			<div class="row clearfix">
				<div class="col-nine-tenth" id="userid">${rv.memberId}</div><a href="#"> 수정</a> | <a href="#">삭제</a><br/>
			</div>
			<div id="reply">
			${rv.commentt}
			</div>
		</c:forEach>
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
	</section>
	<%@ include file="../../common/footer.jspf" %>
	<script src="../../../JS/common.js"></script>
</body>
</html>