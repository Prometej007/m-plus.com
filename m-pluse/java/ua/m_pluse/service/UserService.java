package ua.m_pluse.service;

import java.util.List;

import ua.m_pluse.entity.User;

public interface UserService {

	void save(User user);

	List<User> findAll();

	User findOne(int id);

	void delete(int id);
	
	void updateRole(int id);
}
