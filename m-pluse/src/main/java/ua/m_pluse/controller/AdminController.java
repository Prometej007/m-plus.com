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
import ua.m_pluse.entity.User;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;

@Controller
public class AdminController {
	
	@Autowired
	public ImageService imageService;
	
	@Autowired
	public GameService gameService;
	
	@RequestMapping(value = "loginpage", method = RequestMethod.GET)
	public String loginpage() {
		
		return "loginpage";
	}
	@RequestMapping("logout")
	public String logout(){
		
		return "redirect:/";
	}
	
	@RequestMapping("admin")
	public String admin(Model model){
		model.addAttribute("imgs", imageService.findAll());
		model.addAttribute("img", new Image());
		model.addAttribute("info", new User());
		model.addAttribute("games", gameService.findAll());
		model.addAttribute("game", new Game());
		return "admin";
	}
	
	@RequestMapping(value = "saveImg",method = RequestMethod.POST)
	public String saveImg(@RequestParam MultipartFile image, @RequestParam String name){
		
		imageService.saveImg(image, name);
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "saveGame",method = RequestMethod.POST)
	public String saveGame(@RequestParam MultipartFile game, @RequestParam String name, @RequestParam String pathA ){
		
		gameService.saveGame(game, name, pathA);
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "deleteImg/{id}",method = RequestMethod.GET)
	public String deleteImg(@PathVariable String id){
		
		imageService.delete(Integer.parseInt(id));
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "deleteGame/{id}",method = RequestMethod.GET)
	public String deleteGame(@PathVariable String id){
		
		gameService.delete(Integer.parseInt(id));
		
		return "redirect:/admin";
	}
	
	
}