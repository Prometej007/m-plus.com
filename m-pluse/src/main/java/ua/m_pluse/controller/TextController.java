package ua.m_pluse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import ua.m_pluse.service.TextService;

@Controller
public class TextController {
	@Autowired
	private TextService textService;

}
