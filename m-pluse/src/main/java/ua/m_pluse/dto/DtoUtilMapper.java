package ua.m_pluse.dto;

import java.util.ArrayList;
import java.util.List;

import ua.m_pluse.entity.User;
import ua.m_pluse.entity.enums.Role;

/**
 * @author prometej
 * @version 1.0
 */

public class DtoUtilMapper {
	
	/**
	 * wrapper
	 * @param users 
	 * @return all users
	 */
	
	public static List<UserDTO> userToUserDTO(List<User> users) {
		List<UserDTO> userDTOs = new ArrayList<UserDTO>();

		for (User user : users) {
			if (user.getEmail() != null) {

				userDTOs.add(new UserDTO(user.getId(), user.getEmail(), user.getName(), user.getPhone(),
						user.getMessage(), user.getRole(), user.getDateOfPublic()));

			}

		}
		return userDTOs;
	}
	
	
	/**
	 * wrapper
	 * @param users
	 * @return users with role ROLE_WASREAD(almost read messages)
	 */
	
	public static List<UserDTO> userToUserDTOWasRead(List<User> users) {
		List<UserDTO> userDTOs = new ArrayList<UserDTO>();

		for (User user : users) {
			if (user.getRole() == Role.ROLE_WASREAD && user.getName() != null) {

				userDTOs.add(new UserDTO(user.getId(), user.getEmail(), user.getName(), user.getPhone(),
						user.getMessage(), user.getRole(), user.getDateOfPublic()));

			}

		}
		return userDTOs;
	}
	
	/**
	 * wrapper
	 * @param users
	 * @return users with role ROLE_ONREAD(new messages)
	 */
	public static List<UserDTO> userToUserDTOOnRead(List<User> users) {
		List<UserDTO> userDTOs = new ArrayList<UserDTO>();

		for (User user : users) {
			if (user.getRole() == Role.ROLE_ONREAD && user.getName() != null) {

				userDTOs.add(new UserDTO(user.getId(), user.getEmail(), user.getName(), user.getPhone(),
						user.getMessage(), user.getRole(), user.getDateOfPublic()));

			}

		}
		return userDTOs;
	}
}
