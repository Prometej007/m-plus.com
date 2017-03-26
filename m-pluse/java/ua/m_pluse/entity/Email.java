package ua.m_pluse.entity;

import java.util.List;

import ua.m_pluse.service.MailSenderService;

public class Email {

	private User user;
	private String message;
	private String body;
	private String bodyOne;
	private String bodyTwo;

	public Email() {

	}

	public Email(User user, String message) {
		super();
		this.user = user;
		this.message = message;
	}

	/**
	 * 
	 * @param sender
	 *            - objectMailSender
	 * @param theme
	 *            - Тема повідомлення
	 * 
	 */
	public void Send(MailSenderService sender, String theme) {

		if (user.getEmail() != null) {
			sender.sendMail(theme, bodyOne + message + bodyTwo, user.getEmail());

		}

	}

	private String createBodyOne() {

		String goBodyOne = "";

		String mainBody = "";
		int goBodyOneIndex = -1;

		for (int i = 0; i < body.length(); i++) {

			if (body.charAt(i) == '~') {
				if (body.charAt(i + 1) == '~') {
					if (body.charAt(i + 2) == '~') {
						goBodyOneIndex = i - 1;

					}
				}
			}

		}
		for (int i = 0; i < body.length(); i++) {
			if (i <= goBodyOneIndex) {
				goBodyOne += body.charAt(i);
			}
		}

		return goBodyOne;
	}

	private String createBodyTwo() {

		String goBodyTwo = "";

		int goBodyTwoIndex = -1;

		for (int i = 0; i < body.length(); i++) {

			if (body.charAt(i) == '~') {
				if (body.charAt(i + 1) == '~') {
					if (body.charAt(i + 2) == '~') {

						goBodyTwoIndex = i + 3;
					}
				}
			}

		}
		for (int i = 0; i < body.length(); i++) {
			if (i <= goBodyTwoIndex) {
				goBodyTwo += body.charAt(i);
			}
		}

		return goBodyTwo;
	}

	/**
	 * 
	 * @param body
	 *            - HTML сторінка в якій буде повідомлення. службовий символ
	 *            повідомлення ~~~
	 */
	public void addBody(String body) {
		this.body = body;
		this.bodyOne = createBodyOne();
		this.bodyTwo = createBodyTwo();

	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getBodyOne() {
		return bodyOne;
	}

	public void setBodyOne(String bodyOne) {
		this.bodyOne = bodyOne;
	}

	public String getBodyTwo() {
		return bodyTwo;
	}

	public void setBodyTwo(String bodyTwo) {
		this.bodyTwo = bodyTwo;
	}

	public User getUsers() {
		return user;
	}

	public void setUsers(User users) {
		this.user = users;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((message == null) ? 0 : message.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Email other = (Email) obj;
		if (message == null) {
			if (other.message != null)
				return false;
		} else if (!message.equals(other.message))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Email [users=" + user + ", message=" + message + "]";
	}

}
