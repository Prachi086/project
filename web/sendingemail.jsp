<%-- 
    Document   : sendingemail
    Created on : 10 May, 2017, 9:51:12 AM
    Author     : lenovo
--%>

<%@page import="javax.mail.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%
	String result;
	//Recipient's email ID needs to be mentioned.
	String to = "barjatiyaprachi06@gmail.com";

	// Sender's email ID needs to be mentioned
	String from = "prachibarjatiya1221@gmail.com";
	final String username = "prachi";
	final String password = "9827021520";

	// Assuming you are sending email through relay.jangosmtp.net
	String host = "smtp.gmail.com";

	Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", password);
	props.put("mail.smtp.port", "587");

	//Get the Session object.
	Session ses=Session.getDefaultInstance(props,null);

	try {
		// Create a default MimeMessage object.
		Message message = new MimeMessage(ses);

		// Set From: header field of the header.
		message.setFrom(new InternetAddress(from));

		// Set To: header field of the header.
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(to));

		// Set Subject: header field
		message.setSubject("Testing Subject");

		// Now set the actual message
		message.setText("Hello, this is sample for to check send "
				+ "email using JavaMailAPI in JSP ");

		// Send message
		Transport.send(message);

		System.out.println("Sent message successfully....");
		result = "Sent message successfully....";

	} catch (MessagingException e) {
		e.printStackTrace();
		result = "Error: unable to send message....";

	}
        
        out.print("result "+ result);
%>
