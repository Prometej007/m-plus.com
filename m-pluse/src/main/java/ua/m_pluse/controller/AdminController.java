package ua.m_pluse.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.sun.javafx.collections.MappingChange;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.ModelAndView;
import ua.m_pluse.constants.Configuration;
import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.entity.Role;
import ua.m_pluse.entity.User;
import ua.m_pluse.resource.statistic.Statistic;
import ua.m_pluse.resource.wrapper.StringWrapper;
import ua.m_pluse.service.FileAdminService;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;
import java.util.*;

/**
 * @author prometej
 * @version 1.0
 */
@Controller
public class AdminController {
	/**
	 * lock admin page
	 */
	protected static boolean lock = true;
	protected static String admin;

	@Autowired
	public UserService userService;

	@Autowired
	public ImageService imageService;

	@Autowired
	public GameService gameService;

	@Autowired
	protected FileAdminService fileAdminService;

	@RequestMapping("/login")
	public String loginpage( ModelMap model) {
		return "loginpage";
	}
	@Value("${application.message:Hello World}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, ModelMap model) {
		model.addAttribute("name", "IVAN");
		System.out.println("GRETTINGS, "+ "IVAN" +"................!");
		return "greeting";
	}



	@RequestMapping("/admin")
	public String admin(Model model) {


				List<User> listOnred = new ArrayList<User>();
				List<User> listWastead = new ArrayList<User>();
				String all = "";
				/* Statistic start */
				/*
				 * name modelAttribute homeEN homeRU homeUA
				 * downloadPresentationAR downloadPresentationSite
				 * presentationSiteEN presentationSiteRU presentationSiteUA
				 * presentationVREN presentationVRRU presentationVRUA
				 */

				model.addAttribute("homeEN", Statistic.homeEN);
				model.addAttribute("homeRU", Statistic.homeRU);
				model.addAttribute("homeUA", Statistic.homeUA);
				model.addAttribute("downloadPresentationAR", Statistic.downloadPresentationAR);
				model.addAttribute("downloadPresentationSite", Statistic.downloadPresentationSite);
				model.addAttribute("presentationSiteEN", Statistic.presentationSiteEN);
				model.addAttribute("presentationSiteRU", Statistic.presentationSiteRU);
				model.addAttribute("presentationSiteUA", Statistic.presentationSiteUA);
				model.addAttribute("presentationVREN", Statistic.presentationVREN);
				model.addAttribute("presentationVRRU", Statistic.presentationVRRU);
				model.addAttribute("presentationVRUA", Statistic.presentationVRUA);
				model.addAttribute("messageHome", Statistic.messageHome);
				model.addAttribute("messageSite", Statistic.messageSite);
				model.addAttribute("messageVR", Statistic.messageVR);
				model.addAttribute("files", fileAdminService.findAll());

				/* Statistic end */
				model.addAttribute("imgs", imageService.findAll());
				model.addAttribute("img", new Image());
				model.addAttribute("info", new User());
				model.addAttribute("games", gameService.findAll());
				model.addAttribute("game", new Game());
				for (User user : userService.findAll()) {

					if (user.getRole() == Role.ROLE_ONREAD && user.getName() != null) {

						listOnred.add(user);

					}
				}
				for (User user : userService.findAll()) {
					if (user.getRole() == Role.ROLE_WASREAD && user.getName() != null) {

						listWastead.add(user);

					}
				}
				model.addAttribute("WASREADMESSAGE", listWastead);
				model.addAttribute("ONREADMESSAGE", listOnred);
				model.addAttribute("message", all);
				return "admin";


	}

	/*
	 * security, 3 tries and block for 3 hours
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String saveImg(Model model, @RequestParam("password") String password, @RequestParam("name") String name) {

		if (!lock) {
			if (Configuration.localDateTime.getDayOfYear() < LocalDateTime.now().getHour()) {
				lock = true;
			} else if (LocalDateTime.now().getHour() >=Configuration.lockTime
					&& Configuration.localDateTime.getDayOfYear() == LocalDateTime.now().getHour()) {
				lock = true;
			}
		}
		if (password.equals(Configuration.ADMIN_PASSWORD) && name.equals(Configuration.ADMIN_LOGIN) && lock) {
			String uuid = UUID.randomUUID().toString();
			admin = uuid;
			Configuration.indexLocking = 0;
			return "redirect:/admin" + admin + "";

		} else {
			if (Configuration.indexLocking <= 3 && lock) {

				Configuration.indexLocking++;
			}
			if (Configuration.indexLocking >= 3 && lock) {

				Configuration.lockTime = LocalDateTime.now().getHour();
				Configuration.localDateTime = LocalDateTime.now();
				lock = false;
				Configuration.indexLocking = 0;
			}

			return "loginpage";
		}

	}

	@RequestMapping(value = "saveGame", method = RequestMethod.POST)
	public String saveGame(@RequestParam MultipartFile game, @RequestParam String name, @RequestParam String pathA,
			Model model) {

		gameService.saveGame(game, name, pathA);
		model.addAttribute("GameFromSave", new StringWrapper("style='display:block'"));

		return "redirect:/admin";
	}

	@RequestMapping(value = "saveImg", method = RequestMethod.POST)
	public String saveImg(@RequestParam MultipartFile image, @RequestParam String name, Model model) {

		imageService.saveImg(image, name);
		model.addAttribute("GalleryImage", new StringWrapper("style='display:block'"));

		return "redirect:/admin";
		// "redirect:/admin" + admin + "";
	}

	@RequestMapping(value = "saveFile", method = RequestMethod.POST)
	public String saveFile(@RequestParam MultipartFile file, @RequestParam String name, Model model) {
		fileAdminService.saveFile(file, name);
		model.addAttribute("FileFromSave", new StringWrapper("style='display:block'"));
		return "redirect:/admin";
	}

	@RequestMapping(value = "deleteImg/{id}", method = RequestMethod.GET)
	public String deleteImg(@PathVariable String id) {

		imageService.delete(Integer.parseInt(id));

		return "redirect:/admin";
	}

	@RequestMapping(value = "deleteGame/{id}", method = RequestMethod.GET)
	public String deleteGame(@PathVariable String id) {

		gameService.delete(Integer.parseInt(id));

		return "redirect:/admin";
	}

	/*
	 * unlock from email
	 */
	@RequestMapping(value = "unlockConfirm/{uuidUnlock}", method = RequestMethod.GET)
	public String UnlockConfirm(@PathVariable String uuidUnlock) {

		if (Configuration.linkUnlock != null && Configuration.linkUnlock.equals(uuidUnlock)) {
			Configuration.indexLocking = 0;
			lock = true;
		}

		return "redirect:/admin";
	}

}