<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 삭제 성공 -->
<c:if test="${cnt>0 }">
	<script>
		alert("글이 삭제되었습니다. \n리스트 페이지로 이동합니다.");
		location.href="<%=request.getContextPath()%>/Resources/JSP/reviewBoard/list.do?pageNum=${vo.pageNum}";
		
	</script>
</c:if>
<!-- 삭제 실패 -->
<c:if test="${cnt <= 0 }">
	<script>
		alert("글삭제 실패하였습니다. \n글내용보기 페이지로 이동합니다.");
		history.go(-1);
	</script>
</c:if>