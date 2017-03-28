package ua.m_pluse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.Game;

/**
 * @author prometej
 * @version 1.0
 */

public interface GameService {

	/**
	 * @param game - object for save
	 */
	void save(Game game);

	/**
	 * @return list of objects Game
	 */
	List<Game> findAll();

	/**
	 * @param id - find 1 object from DB by id
	 * @return Game object
	 */
	Game findOne(int id);

	/**
	 * @param id - delete 1 object from DB by id
	 */
	void delete(int id);

	/**
	 * 
	 * @param multipartFile - save image for list of games on site
	 * @param name - name of game
	 * @param pathA - link for game
	 */
	void saveGame(MultipartFile multipartFile, String name, String pathA);
}
