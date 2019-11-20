<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.payDate }</td>
			<td>${vo.departCity } -> ${vo.arriveCity }</td>
			<td>${vo.totalPrice }</td>
			<td>결제완료</td>
			<td><div><a href="purchase_detail.html"><input type="button" value="상세보기" class="blueBtn" id="detail"></a></div></td>
		</tr>
	</c:forEach>
	
