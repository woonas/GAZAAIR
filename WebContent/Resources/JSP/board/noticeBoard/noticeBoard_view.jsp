<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../CSS/navNfooter.css" type="text/css"/>
<link rel="stylesheet" href="../../../CSS/board.css" type="text/css"/>

</head>
<body>
	<%@ include file="../../common/nav.jspf" %>
	<section class="content">
		<h3>공지사항</h3>
		<hr/>
		<div id="brd_title" class="col-three-fourth">
			${vo.subject }
		</div>
		<div id="hitNdate">조회수 ${vo.hit } │ 날짜 ${vo.regdate }</div>
		<hr style="border:1px solid #eee"/>
			<div id="brd_content">
				${vo.content }
			</div>
		<hr/>
			<div class="brd_bottom">
			∧ 다음글
			<c:if test="${vo.num == vo.totalRecord}" >
				<a href="#none" onclick="return false;">다음 글이 없습니다.</a>
			</c:if>
			<c:if test="${vo.num != vo.totalRecord}">
				<a href="<%=request.getContextPath()%>/Resources/JSP/board/noticeBoard/noticeBoard_view.do?num=${vo.num+1}&pageNum=${vo.pageNum}">${next}</a>
			</c:if>
			</div>
		<hr style="border:1px solid #eee"/>
			<div class="brd_bottom">
			∨ 이전글
			<c:if test="${vo.num != 1}">
				<a href="<%=request.getContextPath() %>/Resources/JSP/board/noticeBoard/noticeBoard_view.do?num=${vo.num-1}&pageNum=${vo.pageNum}">${prev}</a>
			</c:if>
			<c:if test="${vo.num == 1}">
				<a href="#none" onclick="return false;">이전 글이 없습니다.</a>
			</c:if>
			</div>
		<hr style="border:1px solid #eee"/>
		<div id="list_btn">
			<button class="whiteBtn"><a href="<%=request.getContextPath()%>/Resources/JSP/board/noticeBoard/noticeBoard_list.do?pageNum=${vo.pageNum}">목록보기</a></button>
		</div>
	</section>
	<%@ include file="../../common/footer.jspf" %>
	<script src="../../../JS/common.js"></script>
</body>
</html>