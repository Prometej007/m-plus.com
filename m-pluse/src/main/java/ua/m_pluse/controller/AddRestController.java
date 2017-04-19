package ua.m_pluse.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.entity.User;
import ua.m_pluse.service.UserService;
import ua.m_pluse.service.utils.UserWrapper;

/**
 * @author prometej
 * @version 1.0
 */

@RestController
public class AddRestController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "messageSave", method = RequestMethod.POST)
	public @ResponseBody void messageCall(@RequestBody User user) {
		user.setDateOfPublic(LocalDate.now());
		userService.save(user);

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
	@RequestMapping(value = "subscriptions", method = RequestMethod.POST)
	public @ResponseBody void subscriptions(@RequestParam("email") String email){
		User user = new User();
		user.setEmail(email);
		userService.save(user);
	}

}
