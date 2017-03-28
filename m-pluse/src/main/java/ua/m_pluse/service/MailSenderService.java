package ua.m_pluse.service;

/**
 * @author prometej
 * @version 1.0
 */
public interface MailSenderService {
	
	void sendMail(String theme, String mailBody, String email);
	
}
