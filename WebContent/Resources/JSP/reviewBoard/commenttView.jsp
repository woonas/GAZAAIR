<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach var="vo" items="${list}">
	<li>${vo.userId }(${vo.writeDate}) 
	    <c:if test="${userId == vo.userId }">
		    <input type="button" value="수정" onclick="editComent(${vo.no}, ${num},'${vo.coment}')"/>c
		    <input type="button" value="삭제" onclick="delComent(${vo.no},${vo.num})"/>
	    </c:if>
	    <br/>
	    ${vo.coment }
	    <hr/>
	</li>
</c:forEach>