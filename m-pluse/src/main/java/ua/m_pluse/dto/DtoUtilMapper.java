package ua.m_pluse.dto;

import java.util.ArrayList;
import java.util.List;

import ua.m_pluse.entity.User;

public class DtoUtilMapper {
	public static List<UserDTO> userToUserDTO(List<User> users){		
		List<UserDTO> userDTOs=new ArrayList<UserDTO>();
		
		for (User user : users) {
			
			userDTOs.add(new UserDTO(user.getId(),user.getEmail(),user.getMessage(),
										user.getName(),user.getPhone(),user.getRole(),user.getDateOfPublic()));
			
		}
		return userDTOs;
	}
}
