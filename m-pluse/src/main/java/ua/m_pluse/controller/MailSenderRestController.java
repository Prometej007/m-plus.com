package ua.m_pluse.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.constants.Ñonfiguration;
import ua.m_pluse.entity.Email;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.FileAdminService;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.MailSenderService;
import ua.m_pluse.service.UserService;
import ua.m_pluse.wrapper.StringModification;

/**
 * @author prometej
 * @version 1.0
 */
@RestController
public class MailSenderRestController {

	@Autowired
	private ImageService imageService;

	@Autowired
	private GameService gameService;

	@Autowired
	private UserService userService;

	@Autowired
	private FileAdminService fileAdminService;

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
			Ñonfiguration.linkUnlock = uuidUnlock;

			mailSenderService.sendMail("Unlock this shit",
					"click to unlock admin page (TOP SECRET)" + "<a href='"
							+ new StringModification().overrideString(InetAddress.getLocalHost() + ":"
									+ Ñonfiguration.PORT + "/m-pluse/" + "unlockConfirm/" + uuidUnlock + "'>link</a>"),
					Ñonfiguration.EMAIL_LOGIN);

		}

	}

}
