package ua.m_pluse.controller;

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
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;

@Controller
public class AdminController {

	@Autowired
	public UserService userService;

	@Autowired
	public ImageService imageService;

	@Autowired
	public GameService gameService;

//	@RequestMapping("loginpage")
//	public String loginpage() {
//
//		return "loginpage";
//	}

	@RequestMapping("logout")
	public String logout() {

		return "redirect:/";
	}

	@RequestMapping("chnkv2jhnmg2hkjjmnv2bh")
	public String admin(Model model) {
		String all = "";
		model.addAttribute("imgs", imageService.findAll());
		model.addAttribute("img", new Image());
		model.addAttribute("info", new User());
		model.addAttribute("games", gameService.findAll());
		model.addAttribute("game", new Game());
		for (User user : userService.findAll()) {
			if (user.getRole() == Role.ROLE_ONREAD) {
				all += "	<button onclick=\"document.getElementById('message"+user.getId()+"').style.display='block'\" style='width: auto;'>"+user.getName()+"</button><div id='message"+user.getId()+"' class='modal'><div class='modal-content animate'><div class='imgcontainer'><span onclick=\"document.getElementById('message"+user.getId()+"').style.display='none'\" class='close' title='Close Modal'>&times;</span></div><div class='container'>";
				all += "<div class='box'>" + user.getName() ;
				all += "<div class='box'>" + user.getMessage() + "</div><br>";
				all += "<div class='box'>" + user.getMessage() + "</div><br>";
				all += "<div class='box'>" + user.getEmail() + "</div><br>";
				all += "<div class='box'>" + user.getDateOfPublic() + "</div><br>";
				all += "</div><div class='container' style='background-color: #f1f1f1'><button type='button'onclick=\"document.getElementById('message"+user.getId()+"').style.display='none'\" class='cancelbtn'>Cancel</button>"+ "<a href='' onclick=\"deleteMessage(" + user.getId()
						+ ")\"> delete </a></div><br>"+"</div></div></div>";
				;
			}
		}
		for (User user : userService.findAll()) {
			if (user.getRole() == Role.ROLE_WASREAD) {

				all += "<div class='box'>" + user.getName() + "<a href='' onclick='deleteMessage(" + user.getId()
						+ ")'> delete </a></div><br>";
				all += "<div class='box'>" + user.getMessage() + "></div><br>";
				all += "<div class='box'>" + user.getMessage() + "></div><br>";
				all += "<div class='box'>" + user.getEmail() + "></div><br>";
				all += "<div class='box'>" + user.getDateOfPublic() + "></div><br>";
			}
		}
		model.addAttribute("message", all);
		return "chnkv2jhnmg2hkjjmnv2bh";
	}

	@RequestMapping(value = "saveImg", method = RequestMethod.POST)
	public String saveImg(@RequestParam MultipartFile image, @RequestParam String name) {

		imageService.saveImg(image, name);

		return "redirect:/chnkv2jhnmg2hkjjmnv2bh";
	}

	@RequestMapping(value = "saveGame", method = RequestMethod.POST)
	public String saveGame(@RequestParam MultipartFile game, @RequestParam String name, @RequestParam String pathA) {

		gameService.saveGame(game, name, pathA);

		return "redirect:/chnkv2jhnmg2hkjjmnv2bh";
	}

	@RequestMapping(value = "deleteImg/{id}", method = RequestMethod.GET)
	public String deleteImg(@PathVariable String id) {

		imageService.delete(Integer.parseInt(id));

		return "redirect:/chnkv2jhnmg2hkjjmnv2bh";
	}

	@RequestMapping(value = "deleteGame/{id}", method = RequestMethod.GET)
	public String deleteGame(@PathVariable String id) {

		gameService.delete(Integer.parseInt(id));

		return "redirect:/chnkv2jhnmg2hkjjmnv2bh";
	}

}