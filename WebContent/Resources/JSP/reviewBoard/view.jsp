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
<style>
	body{width:800px;margin:0 auto}
	ul,li{list-style-type:none;padding:0;margin:0;}
	div ul{width:800px}
	div li{float:left}
	div li{width:100px}
	div li:nth-child(2){width:400px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis}
	
</style>
</head>
<body>
<h1>게시판 목록</h1>
총레코드수 : ${vo.totalRecord }
총페이지 : ${vo.pageNum }/${vo.totalPage } 
<div>
	<ul>
		<li>번호</li>
		<li>제목</li>
		<li>글쓴이</li>
		<li>조회수</li>
		<li>날짜</li>
	</ul>
	<c:forEach var="v" items="${lst }">
	<ul>
		<li>${v.num }</li>
		<li><a href="/Resoures/JSP/reviewBoard/view.do?num=${v.num }&pageNum=${vo.pageNum}">${v.subject }</a></li>
		<li>${v.writer }</li>
		<li>${v.hit }</li>
		<li>${v.regDate }</li>
	</ul>
	</c:forEach>
</div>
	<c:if test="${vo.pageNum<=1 }">
		prev
	</c:if>
	<c:if test="${vo.pageNum>1 }">
		<a href="/Resoures/JSP/reviewBoard/list.do?pageNum=${vo.pageNum-1 }">prev</a>
	</c:if>
	
	 <%-- <c:forEach var="i" begin="${vo.startPage }" end="${vo.startPage+vo.onePageMax-1 }">
		<c:if test="${i<=vo.totalPage }">
			<a href="/Resoures/JSP/reviewBoard/list.do?pageNum=${i }">${i }</a>
		</c:if>
	</c:forEach>  --%>
	
	<c:if test="${vo.pageNum==vo.totalPage }">
		next
	</c:if>
	<c:if test="${vo.pageNum<vo.totalPage }">	
		<a href="/Resoures/JSP/reviewBoard/list.do?pageNum=${vo.pageNum+1 }">next</a><br/>
	</c:if>
	
<a href="<%=request.getContextPath() %>/Resources/JSP/reviewBoard/index.do">홈</a>
<a href="<%=request.getContextPath() %>/Resources/JSP/reviewBoard/write.do">글쓰기</a>

</body>
</html>