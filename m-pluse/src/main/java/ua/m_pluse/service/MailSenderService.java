package ua.m_pluse.service;

public interface MailSenderService {
	
	void sendMail(String theme, String mailBody, String email);
	
}
