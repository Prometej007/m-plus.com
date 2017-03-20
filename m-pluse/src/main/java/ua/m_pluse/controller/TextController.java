package ua.m_pluse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.entity.Text;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.TextService;

@Controller
public class TextController {
	@Autowired
	private TextService textService;
	@Autowired
	ImageService imageService;
	@Autowired
	GameService gameService;

	@RequestMapping(value = "{lg}home", method = RequestMethod.GET)
	public String admin(Model model, @PathVariable String lg) {

		List<Text> text = textService.findByLanguageTeg(lg);

		for (Text text2 : text) {

			model.addAttribute(text2.getNameLabel(), text2.getText());

		}

		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString += "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// доробити------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString += "<div class='b3-block1-0' style='  background-image: url(" + gameI.getPath() + ");'><a href='"
					+ gameI.getPathA()
					+ "'><div class='overlay'><div class='text-b3-box'><span style='  font-size: 25px;'>"
					+ gameI.getName() + "</span></div></div></a></div>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute("gallery", galleryString);
		model.addAttribute("game", gameString);

		return "home";
	}

	@RequestMapping(value = "{lg}admin", method = RequestMethod.GET)
	public String homeUA(Model model, @PathVariable String lg) {

		List<Text> text = textService.findByLanguageTeg(lg);

		for (Text text2 : text) {

			model.addAttribute(text2.getNameLabel(), text2.getText());

		}

		List<Image> gallery = imageService.findAll();
		List<Game> game = gameService.findAll();
		String galleryString = "";
		String gameString = "";
		for (Image image : gallery) {

			galleryString += "<a href='" + image.getPath() + "'> <img alt='" + image.getName() + "' src='"
					+ image.getPath() + "'></a>";

		}
		// доробити------------------------------------------------------------------------------------------
		for (Game gameI : game) {

			gameString += "<div class='b3-block1-0' style='  background-image: url(" + gameI.getPath() + ");'><a href='"
					+ gameI.getPathA()
					+ "'><div class='overlay'><div class='text-b3-box'><span style='  font-size: 25px;'>"
					+ gameI.getName() + "</span></div></div></a></div>";

		}
		// ____________________________________________________________________________________________________
		model.addAttribute("gallery", galleryString);
		model.addAttribute("game", gameString);

		return "homeadmin";
	}
}
