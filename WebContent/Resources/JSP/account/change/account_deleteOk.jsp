<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${cnt>0 }">
	<script>
		alert("회원탈퇴 성공하였습니다.")
		location.href="../../../..";
	</script>

</c:if>
<c:if test="${cnt<=0 }">
	<script>
		alert("회원탈퇴 실패하였습니다. 비밀번호를 다시 확인해 주세요.");
		history.back();
	</script>
</c:if>