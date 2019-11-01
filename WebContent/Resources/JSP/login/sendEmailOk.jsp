<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="kr.gaza.home.SMTPAuthenticatior"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${findId!=null }">
<%
	request.setCharacterEncoding("UTF-8");	

	String findId = request.getParameter("findId");
	String toEmail = request.getParameter("toEmail");
	String subject = "GAZA AIR 아이디 찾기";
	String content = "고객님의 아이디는 "+findId+"입니다.";
	
	Properties p = new Properties();

	p.put("mail.smtp.host","smtp.naver.com");
	p.put("mail.smtp.port", "465");
	p.put("mail.smtp.starttls.enable", "true");
	p.put("mail.smtp.auth", "true");
	p.put("mail.smtp.debug", "true");
	p.put("mail.smtp.socketFactory.port", "465");
	p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	p.put("mail.smtp.socketFactory.fallback", "false");
	
	try{
		Authenticator auth = new SMTPAuthenticatior();
		Session ses = Session.getInstance(p, auth);
		
		ses.setDebug(true);
		MimeMessage msg = new MimeMessage(ses);
		
		msg.setSubject(subject);
		
		StringBuffer buffer = new StringBuffer();
		buffer.append(content);
		
		Address fromAddr = new InternetAddress("gaza_air@naver.com");
		msg.setFrom(fromAddr);
		
		Address toAddr = new InternetAddress(toEmail);
		msg.addRecipient(Message.RecipientType.TO, toAddr);
		
		msg.setContent(buffer.toString(), "text/html;charset=UTF-8");
		Transport.send(msg);
		
	}catch(Exception e){
		System.out.println("메일 전송 실패");
		e.printStackTrace();
		return;
	}
%>	
</c:if>
<c:if test="${findId==null }">
	<script>
		alert("아이디를 찾지 못했습니다. 입력하신 정보를 다시 확인해 주세요.");
		history.back();
	</script>
</c:if>