package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.m_pluse.entity.User;

/**
 * @author prometej
 * @version 1.0
 */

public interface UserDao extends JpaRepository<User, Integer> {
	/**
	 * work with BD requests 
	 * all main methods (save,delete,findAll,findOne)
	 * 
	 */
}
