package ua.m_pluse.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.m_pluse.dao.UserDao;
import ua.m_pluse.entity.Role;
import ua.m_pluse.entity.User;
import ua.m_pluse.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;

	public void save(User user) {
		
		user.setRole(Role.ROLE_ONREAD);

		userDao.save(user);

	}

	public List<User> findAll() {

		return userDao.findAll();
	}

	public User findOne(int id) {

		return userDao.findOne(id);
	}

	public void delete(int id) {

		userDao.delete(id);

	}

	public void updateRole(int id) {
		User user = userDao.findOne(id);
		user.setRole(Role.ROLE_WASREAD);
		userDao.save(user);
	}

	
}
