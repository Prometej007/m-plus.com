package ua.m_pluse.service.Impl;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import ua.m_pluse.constants.Configuration;
import ua.m_pluse.service.MailSenderService;

/**
 * @author prometej
 * @version 1.0
 */

@Service
public class MailSenderServiceImpl implements MailSenderService {

	// private final static String USERNAME = "anazariks@gmail.com";// mail
	// private final static String PASSWORD = "yfpfh1998";// password

	/**
	 * mailsender what more do u want to know? MimeMessageHelper - html page in
	 * message
	 */
	@Async
	public void sendMail(String theme, String mailBody, String email) {
		Properties properties = System.getProperties();
		properties.setProperty("mail.smtp.starttls.enable", "true");
		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.port", "465");
		properties.setProperty("mail.smtp.host", "smtp.gmail.com");
		properties.setProperty("mail.smtp.socketFactory.port", "465");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		Session session = Session.getDefaultInstance(properties, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(Configuration.EMAIL_LOGIN, Configuration.EMAIL_PASSWORD);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setFrom(new InternetAddress(Configuration.EMAIL_LOGIN));

			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			helper.setSubject(theme);
			helper.setText(mailBody, true);

			synchronized (this) {
				Transport.send(message);
			}
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
	}

}
