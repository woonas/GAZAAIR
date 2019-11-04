<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${cnt>0 }">
	<script>
		location.href= "/projectGAZA/Resources/JSP/mypage/account_info.do";
	</script>
</c:if>
<c:if test="${cnt<=0 }">
	<script>
		alert("비밀번호 변경 실패하였습니다.");
		history.back();
	</script>
</c:if>
