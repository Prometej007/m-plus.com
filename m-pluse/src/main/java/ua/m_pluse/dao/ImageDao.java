package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ua.m_pluse.entity.Image;

/**
 * @author prometej
 * @version 1.0
 */
@Repository
public interface ImageDao extends JpaRepository<Image, Integer> {
	/**
	 * work with BD requests 
	 * all main methods (save,delete,findAll,findOne)
	 * 
	 */
}
