package ua.m_pluse.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.dto.DtoUtilMapper;
import ua.m_pluse.dto.UserDTO;
import ua.m_pluse.entity.Email;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.MailSenderService;
import ua.m_pluse.service.UserService;
import ua.m_pluse.wrapper.UserWrapper;

@RestController
public class SpeñialRestController {

	@Autowired
	private UserService userService;

	@Autowired
	private MailSenderService mailSenderService;

	@RequestMapping(value = "messageSave", method = RequestMethod.POST)
	public @ResponseBody void messageCall(@RequestBody User user) {
		user.setDateOfPublic(LocalDate.now());
		userService.save(user);
	}

	@RequestMapping(value = "messageCall", method = RequestMethod.POST)
	public @ResponseBody void messageCallLeft(@RequestBody UserWrapper userWrapper) {
		User user = new User();
		boolean check = true;
		boolean checkNumber = true;
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

	// =--=-==-=-=-=-===-=-=-=-=-=-=-=--=-=-=-=MAIL_SENDER--=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public void sendEmail(@RequestBody User user) {
		String theme = "dadad";
		String mailBody = "<div style='width:500px;height:500px;color:red;background:black;'>~~~</div>";
		Email email = new Email(user, user.getMessage());
		email.addBody(mailBody);
		email.Send(mailSenderService, theme);

		// mailSenderService.sendMail(theme, mailBody, user2.getEmail());

	}

	@RequestMapping(value = "loadUserSelect", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadUserSelect() {
		List<UserDTO> listReturn = new ArrayList();

		return DtoUtilMapper.userToUserDTO(userService.returnAllEmail());
	}

	// ==========-=-=-=----------=-=-=-=-=-=-=

}
