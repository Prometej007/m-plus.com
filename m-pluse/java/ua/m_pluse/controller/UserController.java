package ua.m_pluse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private ImageService imageService;

	@Autowired
	private GameService gameService;

	@RequestMapping(value = "ua", method = RequestMethod.GET)
	public String homeUA(Model model/* , @PathVariable String languageTeg */) {
		// ________________________________________________TextLoading_____________________Start_______________________________

		// textService.findByLanguageTeg(languageTeg);
		// ________________________________________________TextLoading_____________________End__________________________________

		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString += "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// ��������------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString += "<div class='b3-block1-0' style='  background-image: url(" + gameI.getPath() + ");'><a href='"
					+ gameI.getPathA()
					+ "'><div class='overlay'><div class='text-b3-box'><span style='  font-size: 25px;'>"
					+ gameI.getName() + "</span></div></div></a></div>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute("gallery", galleryString);
		model.addAttribute("game", gameString);
		return "homeUA";
	}

	@RequestMapping(value = "ru", method = RequestMethod.GET)
	public String homeRU(Model model/* , @PathVariable String languageTeg */) {
		// ________________________________________________TextLoading_____________________Start_______________________________

		// textService.findByLanguageTeg(languageTeg);
		// ________________________________________________TextLoading_____________________End__________________________________

		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString += "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// ��������------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString += "<div class='b3-block1-0' style='  background-image: url(" + gameI.getPath() + ");'><a href='"
					+ gameI.getPathA()
					+ "'><div class='overlay'><div class='text-b3-box'><span style='  font-size: 25px;'>"
					+ gameI.getName() + "</span></div></div></a></div>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute("gallery", galleryString);
		model.addAttribute("game", gameString);
		return "homeRU";
	}

	@RequestMapping(value = { "/", "en" }, method = RequestMethod.GET)
	public String homeEN(Model model/* , @PathVariable String languageTeg */) {
		// ________________________________________________TextLoading_____________________Start_______________________________

		// textService.findByLanguageTeg(languageTeg);
		// ________________________________________________TextLoading_____________________End__________________________________

		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString += "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// ��������------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString += "<div class='b3-block1-0' style='  background-image: url(" + gameI.getPath() + ");'><a href='"
					+ gameI.getPathA()
					+ "'><div class='overlay'><div class='text-b3-box'><span style='  font-size: 25px;'>"
					+ gameI.getName() + "</span></div></div></a></div>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute("gallery", galleryString);
		model.addAttribute("game", gameString);
		return "homeEN";
	}
	@RequestMapping(value = {"presentation" }, method = RequestMethod.GET)
	public String presentation(Model model/* , @PathVariable String languageTeg */) {
	
		return "presentation";
	}

}