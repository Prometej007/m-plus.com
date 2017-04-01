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
import ua.m_pluse.service.UserService;

/**
 * @author prometej
 * @version 1.0
 */
@RestController
public class UpdeteRestController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "loadMessages", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessages(@RequestBody String index) {

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "wasRead", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> wasRead(@RequestBody String index) {

		userService.updateRole(Integer.parseInt(index));

		return DtoUtilMapper.userToUserDTO(userService.findAll());
	}

	@RequestMapping(value = "loadMessagesWasRead", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessagesWasRead() {

		return DtoUtilMapper.userToUserDTOWasRead(userService.findAll());
	}

	@RequestMapping(value = "loadMessagesoneread", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadMessagesoneread() {

		return DtoUtilMapper.userToUserDTOOnRead(userService.findAll());
	}

	@RequestMapping(value = "loadUserSelect", method = RequestMethod.POST)
	public @ResponseBody List<UserDTO> loadUserSelect() {

		return DtoUtilMapper.userToUserDTO(userService.returnAllEmail());
	}

}
