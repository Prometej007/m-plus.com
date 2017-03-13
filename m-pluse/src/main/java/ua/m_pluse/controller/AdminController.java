package ua.m_pluse.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String home(Principal principal, Model model) {

		return "";
	}
}
