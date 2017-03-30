package ua.m_pluse.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.dto.DtoUtilMapper;
import ua.m_pluse.dto.UserDTO;
import ua.m_pluse.entity.Email;
import ua.m_pluse.entity.FileAdmin;
import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.FileAdminService;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.MailSenderService;
import ua.m_pluse.service.UserService;
import ua.m_pluse.statistic.Statistic;
import ua.m_pluse.wrapper.StringModification;
import ua.m_pluse.wrapper.UserWrapper;

/**
 * @author prometej
 * @version 1.0
 */
@RestController
public class SpeñialRestController {

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

	@RequestMapping(value = "messageSave", method = RequestMethod.POST)
	public @ResponseBody void messageCall(@RequestBody User user) {
		user.setDateOfPublic(LocalDate.now());
		userService.save(user);

	}

	@RequestMapping(value = "statisticadddownloadarar", method = RequestMethod.POST)
	public @ResponseBody void addDownloadAR() {
		Statistic.downloadPresentationAR++;
	}

	@RequestMapping(value = "statisticadddownloadarsite", method = RequestMethod.POST)
	public @ResponseBody void addDownloadSite() {
		Statistic.downloadPresentationSite++;

	}

	@RequestMapping(value = "messageCall", method = RequestMethod.POST)
	public @ResponseBody void messageCallLeft(@RequestBody UserWrapper userWrapper) {
		User user = new User();
		boolean check = true;
		String phoneOrEmail = userWrapper.getPhoneOrEmail();

		user.setName(userWrapper.getName());
		for (int i = 0; i < phoneOrEmail.length(); i++) {
			if (phoneOrEmail.charAt(i) != '@' && check) {
				check = true;
			} else {
				check = false;
			}
		}
		if (check) {

			user.setPhone(phoneOrEmail);
			userService.save(user);

		} else {

			user.setEmail(phoneOrEmail);
			userService.save(user);
		}
	}

	@RequestMapping(value = "loadMessages", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessages(@RequestBody String index) {

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "wasRead", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> wasRead(@RequestBody String index) {

		userService.updateRole(Integer.parseInt(index));

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "deleteMessage", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> deleteMessage(@RequestBody String index) {

		userService.delete(Integer.parseInt(index));

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "deleteFile", method = RequestMethod.POST)
	public @ResponseBody List<FileAdmin> deletefile(@RequestBody String index) {

		fileAdminService.delete(Integer.parseInt(index));

		return fileAdminService.findAll();
	}

	@RequestMapping(value = "loadMessagesWasRead", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessagesWasRead() {

		return DtoUtilMapper.userToUserDTOWasRead(userService.findAll());
	}

	@RequestMapping(value = "loadMessagesoneread", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessagesoneread() {

		return DtoUtilMapper.userToUserDTOOnRead(userService.findAll());
	}

	// =--=-==-=-=-=-===-=-=-=-=-=-=-=--=-=-=-=MAIL_SENDER--=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public void sendEmail(@RequestBody User user) {

		Email email = new Email(user, user.getMessage());
		email.addBody(user.getPhone());
		email.Send(mailSenderService, user.getName());

	}

	@RequestMapping(value = "loadUserSelect", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadUserSelect() {

		return DtoUtilMapper.userToUserDTO(userService.returnAllEmail());
	}

	// ==========-=-=-=----------=-=-=-=-=-=-=

	@RequestMapping(value = "sendEmailForUnlock", method = RequestMethod.POST)
	public void sendEmailForUnlock() throws UnknownHostException {
		if (AdminController.lock == false) {

			String uuidUnlock = UUID.randomUUID().toString();
			Statistic.linkUnlock = uuidUnlock;

			mailSenderService
					.sendMail("Unlock this shit",
							"click to unlock admin page (TOP SECRET)" + "<a href='"
									+ new StringModification().overrideString(InetAddress.getLocalHost()
											+ ":8080/m-pluse/" + "unlockConfirm/" + uuidUnlock + "'>link</a>"),
							"anazariks@gmail.com");

		}

	}

	// ================================================-------------------------================---------------

	@RequestMapping(value = "deleteImg", method = RequestMethod.POST)
	public @ResponseBody List<Image> deleteImg(@RequestBody String index) {

		imageService.delete(Integer.parseInt(index));

		return imageService.findAll();
	}

	@RequestMapping(value = "messageVR", method = RequestMethod.POST)
	public void messageVR() {
		Statistic.messageVR++;

	}

	@RequestMapping(value = "messageSITE", method = RequestMethod.POST)
	public void messageSite() {
		Statistic.messageSite++;

	}

	@RequestMapping(value = "messageHOME", method = RequestMethod.POST)
	public void messageHOME() {
		Statistic.messageHome++;

	}

	@RequestMapping(value = "deleteGame", method = RequestMethod.POST)
	public @ResponseBody List<Game> deleteGame(@RequestBody String index) {

		gameService.delete(Integer.parseInt(index));

		return gameService.findAll();
	}

}
