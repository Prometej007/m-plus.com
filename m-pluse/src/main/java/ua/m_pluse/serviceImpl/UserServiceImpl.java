package ua.m_pluse.serviceImpl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
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

	public List<User> returnAllEmail() {
		List<User> list = new ArrayList<User>();
		List<User> listUser = userDao.findAll();
		for (User user : listUser) {
			boolean check = false;
			if (list.size() != 0 && user.getEmail() != null) {

				for (User userL : list) {
					if (!(userL.getEmail().equals(user.getEmail())) && !check) {

					} else {
						check = true;
					}
				}
				if (!check) {
					list.add(user);
				}
			} else if (list.size() == 0 && user.getEmail() != null) {
				if (user.getEmail() != null) {

					list.add(user);
				}
			}
		}

		return list;
	}

	public List<User> researchUser(String research) {
		List<User> dataUsers = userDao.findAll();
		HashSet<User> hashSetUsers = new HashSet<>();
		List<User> returnUser = new ArrayList<>();
		for (User user : dataUsers) {

			for (int i = 0; i < research.toLowerCase().length(); i++) {
				if (user.getEmail() != null && research.toLowerCase().length() <= user.getEmail().toLowerCase().length()
						&& research.toLowerCase().charAt(i) == user.getEmail().charAt(i)) {
					hashSetUsers.add(user);
				}
			}
			for (int i = 0; i < research.toLowerCase().length(); i++) {
				if (user.getName() != null && research.toLowerCase().length() <= user.getName().toLowerCase().length()
						&& research.toLowerCase().charAt(i) == user.getEmail().charAt(i)) {
					hashSetUsers.add(user);
				}
			}

		}
		for (User user : hashSetUsers) {
			returnUser.add(user);
		}
		return returnUser;

	}
}