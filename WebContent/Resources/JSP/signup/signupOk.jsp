<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page errorPage="/Resources/JSP/error/error.jsp"%>
<c:if test="${cnt>0 }">
	<script>
		location.href= "/projectGAZA/WebContent/Resources/JSP/signup/signup5.do";
	</script>
</c:if>
<c:if test="${cnt<=0 }">
	<script>
		alert("회원등록 실패하였습니다.");
		history.back();
	</script>
</c:if>

