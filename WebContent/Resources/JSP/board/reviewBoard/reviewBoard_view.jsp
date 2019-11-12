<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../CSS/board.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function(){
		$("#replyFrm").submit(function(){
			if(${memberId==null || memberId==""}){
				alert("로그인 후 이용 가능합니다.");
				$("#replywrite").val("");
				return false;
			}
			var params = $("#replyFrm").serialize();
			$.ajax({
				url: "/projectGAZA/Resources/JSP/board/reviewBoard/reviewBoard_ReplyOk.do",
				data: params,
				success: function(result){
					$("#commentt").html(result);
					$("#replywrite").val("");
				},
				error:function(){
					alert("댓글쓰기 에러발생");
				}
			});
		});
	});
</script>
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
		<form method="post" id="replyFrm" onsubmit="return false">
			<div id="rplbox"><textarea class="row clearfix" id="replywrite" name="replywrite"></textarea></div>
			<input type="submit" value="등록하기"/>
			<input type="hidden" name="rpNum" value="${vo.num}"/>
			<input type="hidden" name="rpId" value="${vo.writer }"/>
		</form>
		<hr style="border:1px solid #eee"/>
		<div id="commentt">
		<c:forEach var="rv" items="${list}">
			<div class="col-nine-tenth" id="userid">${rv.memberId }</div><a href="#"> 수정</a> | <a href="#">삭제</a><br/>
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