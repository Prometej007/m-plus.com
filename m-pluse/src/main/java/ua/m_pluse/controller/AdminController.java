package ua.m_pluse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.Image;
import ua.m_pluse.service.ImageService;

@Controller
public class AdminController {
	
//	@Autowired
//	public ImageService imageService;
	
	@RequestMapping(value = "loginpage", method = RequestMethod.GET)
	public String loginpage() {
		
		return "loginpage";
	}
	
	@RequestMapping(value = "admin",method = RequestMethod.GET)
	public String admin(Model model){
//		model.addAttribute("imgs", imageService.findAll());
		model.addAttribute("img", new Image());
		
		
		return "admin";
	}
	
//	@RequestMapping(value = "saveImg",method = RequestMethod.POST)
//	public String saveImg(@RequestParam MultipartFile image, @RequestParam String name){
//		
//		imageService.saveImg(image, name);
//		
//		return "redirect:/admin";
//	}
//	
//	@RequestMapping(value="loadMessages",method = RequestMethod.POST)
//	public String loadMesseges(){
//		
//		return "admin";
//	}
}