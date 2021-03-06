package ua.m_pluse.service;

import java.util.List;

import ua.m_pluse.entity.User;

/**
 * @author prometej
 * @version 1.0
 */

public interface UserService {

	void save(User user);

	List<User> findAll();

	User findOne(int id);

	void delete(int id);

	void updateRole(int id);

	List<User> returnAllEmail();
}
