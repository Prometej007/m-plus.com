package ua.m_pluse.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.constants.Configuration;
import ua.m_pluse.entity.Email;
import ua.m_pluse.entity.User;
import ua.m_pluse.resource.wrapper.StringModification;
import ua.m_pluse.service.MailSenderService;

/**
 * @author prometej
 * @version 1.0
 */
@RestController
public class MailSenderRestController {

	@Autowired
	private MailSenderService mailSenderService;

	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public void sendEmail(@RequestBody User user) {

		Email email = new Email(user, user.getMessage());
		email.addBody(user.getPhone());
		email.Send(mailSenderService, user.getName());

	}

	@RequestMapping(value = "sendEmailForUnlock", method = RequestMethod.POST)
	public void sendEmailForUnlock() throws UnknownHostException {
		if (AdminController.lock == false) {

			String uuidUnlock = UUID.randomUUID().toString();
			Configuration.linkUnlock = uuidUnlock;

			mailSenderService.sendMail("Unlock this shit",
					"click to unlock admin page (TOP SECRET)" + "<a href='"
							+ new StringModification().overrideString(InetAddress.getLocalHost() + ":"
									+ Configuration.PORT + "/m-pluse/" + "unlockConfirm/" + uuidUnlock + "'>link</a>"),
					Configuration.EMAIL_LOGIN);

		}

	}

}
