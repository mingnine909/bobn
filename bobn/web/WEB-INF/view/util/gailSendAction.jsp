<%@page import="kh.semi.bobn.util.Gmail"%>
<%@page import="kh.semi.bobn.util.SHA256"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.io.PrintWriter"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>

<%
		String host = "http://localhost:8099/bobn/";		
		String from = "khsemibobn@gmail.com";
		String to = request.getParameter("email");
		String password = request.getParameter("password");
		//String code = SHA256.getEncrypt(to, "cos");
		System.out.println("gmailsend 까지 들어왔다");

		//사용자에게 보낼 메시지
		String subject = "BOBn 비밀번호를 확인하여 주시기 바랍니다.";
		String content = "회원님의 비밀번호는 다음과 같습니다.\n" 
		        + password+ "Bobn 사이트로 돌아가서 비밀번호를 입력해주시기 바랍니다.\n감사합니다.";

		Properties p = new Properties();
		p.put("mail.smtp.user", from);
		p.put("mail.smtp.host", "smtp.googlemail.com");
		p.put("mail.smtp.port", "465"); //TLS 587, SSL 465
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465"); 
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.sockerFactory.fallback", "false");

		try {
			Authenticator auth = new Gmail();
			Session ses = Session.getInstance(p, auth);
			ses.setDebug(true);
			MimeMessage msg = new MimeMessage(ses);
			msg.setSubject(subject);
			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr);
			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr);
			msg.setContent(content, "text/html; charset=UTF8");
			Transport.send(msg);
		} catch (Exception e) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이메일 인증 오류')");
			script.println("history.back();");
			script.println("</script>");
		}
	%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이메일 주소 인증 메일이 전송되었습니다. 이메일에 들어가서 확인해주세요.</h1>
</body>
</html>