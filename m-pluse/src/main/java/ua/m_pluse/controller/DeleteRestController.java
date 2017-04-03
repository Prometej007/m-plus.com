package ua.m_pluse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ua.m_pluse.dto.DtoUtilMapper;
import ua.m_pluse.dto.UserDTO;
import ua.m_pluse.entity.FileAdmin;
import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.FileAdminService;
import ua.m_pluse.service.GameService;
import ua.m_pluse.service.ImageService;
import ua.m_pluse.service.UserService;

/**
 * @author prometej
 * @version 1.0
 */

@RestController
public class DeleteRestController {
	@Autowired
	private ImageService imageService;

	@Autowired
	private GameService gameService;

	@Autowired
	private UserService userService;

	@Autowired
	private FileAdminService fileAdminService;

	@RequestMapping(value = "deleteMessage", method = RequestMethod.DELETE)
	public @ResponseBody List<UserDTO> deleteMessage(@RequestBody String index) {

		userService.delete(Integer.parseInt(index));

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "deleteFile", method = RequestMethod.DELETE)
	public @ResponseBody List<FileAdmin> deletefile(@RequestBody String index) {

		fileAdminService.delete(Integer.parseInt(index));

		return fileAdminService.findAll();
	}

	@RequestMapping(value = "deleteImg", method = RequestMethod.DELETE)
	public @ResponseBody List<Image> deleteImg(@RequestBody String index) {

		imageService.delete(Integer.parseInt(index));

		return imageService.findAll();
	}

	@RequestMapping(value = "deleteGame", method = RequestMethod.DELETE)
	public @ResponseBody List<Game> deleteGame(@RequestBody String index) {

		gameService.delete(Integer.parseInt(index));

		return gameService.findAll();
	}
}
