<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
