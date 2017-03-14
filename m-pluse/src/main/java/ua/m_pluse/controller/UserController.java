package ua.m_pluse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;
import ua.m_pluse.wrapper.UserWrapper;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private ImageService imageService;

	@Autowired
	private GameService gameService;

	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String home(Model model) {
		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString = "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// доробити------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString = "<a href='" + gameI.getPath() + "'> <img alt='" + gameI.getName() + "' src='" + gameI.getPath()
					+ "'></a>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute(galleryString, "gallery");
		return "home";
	}

	@RequestMapping(value = "messageCall", method = RequestMethod.POST)
	public String messageCall(Model model, @ModelAttribute User user) {

		userService.save(user);

		return "redirect:/";

	}

	@RequestMapping(value = "messageCallLeft", method = RequestMethod.POST)
	public String messageCallLeft(Model model, @ModelAttribute UserWrapper userWrapper) {
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

		return "redirect:/";

	}

}
