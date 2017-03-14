package ua.m_pluse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.entity.User;
import ua.m_pluse.service.UserService;
import ua.m_pluse.wrapper.UserWrapper;

@Controller
public class SpeñialRestController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "messageSave", method = RequestMethod.POST)
	public @ResponseBody void messageCall(@RequestBody User user) {
		userService.save(user);
	}
	
	@RequestMapping(value = "messageCall",method = RequestMethod.POST)
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
}
	
