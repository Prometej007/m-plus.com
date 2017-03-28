package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.m_pluse.entity.Game;

/**
 * @author prometej
 * @version 1.0
 */

public interface GameDao extends JpaRepository<Game, Integer> {
	/**
	 * work with BD requests 
	 * all main methods (save,delete,findAll,findOne)
	 * 
	 */
}
