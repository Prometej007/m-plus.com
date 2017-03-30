package ua.m_pluse.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.entity.Role;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.FileAdminService;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;
import ua.m_pluse.statistic.Statistic;
import ua.m_pluse.wrapper.StringWrapper;


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
	
	@RequestMapping("loginpage")
	public String loginpage() {

		return "loginpage";
	}

	@RequestMapping("logout")
	public String logout() {
		admin = null;
		return "redirect:/";
	}

	@RequestMapping("admin{id}")
	public String admin(Model model, @PathVariable String id) {
		if (admin != null) {

			if (admin.equals(id)) {

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
			} else {
				return "redirect:/loginpage";
			}
		} else {
			return "redirect:/loginpage";
		}

	}
	
	/*
	 * security, 3 tries and block for 3 hours
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String saveImg(Model model, @RequestParam("password") String password, @RequestParam("name") String name) {

		if (!lock) {
			if (Statistic.localDateTime.getDayOfYear() < LocalDateTime.now().getHour()) {
				lock = true;
			} else if (LocalDateTime.now().getHour() >= Statistic.lockTime
					&& Statistic.localDateTime.getDayOfYear() == LocalDateTime.now().getHour()) {
				lock = true;
			}
		}
		if (password.equals("admin") && name.equals("admin") && lock) {
			String uuid = UUID.randomUUID().toString();
			admin = uuid;
			Statistic.indexLocking = 0;
			return "redirect:/admin" + admin + "";

		} else {
			if (Statistic.indexLocking <= 3 && lock) {

				Statistic.indexLocking++;
			}
			if (Statistic.indexLocking >= 3 && lock) {

				Statistic.lockTime = LocalDateTime.now().getHour();
				Statistic.localDateTime = LocalDateTime.now();
				lock = false;
				Statistic.indexLocking = 0;
			}

			return "loginpage";
		}

	}

	@RequestMapping(value = "saveGame", method = RequestMethod.POST)
	public String saveGame(@RequestParam MultipartFile game, @RequestParam String name, @RequestParam String pathA,
			Model model) {

		gameService.saveGame(game, name, pathA);
		model.addAttribute("GameFromSave", new StringWrapper("style='display:block'"));
		return admin(model, admin);
	}

	@RequestMapping(value = "saveImg", method = RequestMethod.POST)
	public String saveImg(@RequestParam MultipartFile image, @RequestParam String name, Model model) {

		imageService.saveImg(image, name);
		model.addAttribute("GalleryImage", new StringWrapper("style='display:block'"));

		return admin(model, admin);
		// "redirect:/admin" + admin + "";
	}

	@RequestMapping(value = "saveFile", method = RequestMethod.POST)
	public String saveFile(@RequestParam MultipartFile file, @RequestParam String name, Model model) {
		fileAdminService.saveFile(file, name);
		model.addAttribute("FileFromSave", new StringWrapper("style='display:block'"));
		return admin(model, admin);
	}

	@RequestMapping(value = "deleteImg/{id}", method = RequestMethod.GET)
	public String deleteImg(@PathVariable String id) {

		imageService.delete(Integer.parseInt(id));

		return "redirect:/admin" + admin + "";
	}

	@RequestMapping(value = "deleteGame/{id}", method = RequestMethod.GET)
	public String deleteGame(@PathVariable String id) {

		gameService.delete(Integer.parseInt(id));

		return "redirect:/admin" + admin + "";
	}

	
	/*
	 * unlock from email
	 */
	@RequestMapping(value = "unlockConfirm/{uuidUnlock}", method = RequestMethod.GET)
	public String UnlockConfirm(@PathVariable String uuidUnlock) {

		if (Statistic.linkUnlock != null && Statistic.linkUnlock.equals(uuidUnlock)) {
			Statistic.indexLocking = 0;
			lock = true;
		}

		return "redirect:/admin" + admin + "";
	}

}