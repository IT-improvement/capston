package util;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class SendEmail {

	 public static void main(String[] args) {

		 String host = "smtp.naver.com"; // ���̹��� ��� ���̹� ����, gmail��� gmail ����
	        String user = "jujae03@naver.com"; // �н�����
	        String password = "wntmdwo";       

	        // SMTP ���� ������ �����Ѵ�.
	        Properties props = new Properties();
	        props.put("mail.smtp.host", host);
	        props.put("mail.smtp.port", 587);
	        props.put("mail.smtp.auth", "true");
	        
	        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user, password);
	            }
	        });

	        try {
	            MimeMessage message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user));
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress("ktko@ktko.com"));

	            // ���� ����
	            message.setSubject("KTKO SMTP TEST1111");

	            // ���� ����
	            message.setText("KTKO Success!!");

	            // send the message
	            Transport.send(message);
	            System.out.println("Success Message Send");

	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }

	 }
	}

