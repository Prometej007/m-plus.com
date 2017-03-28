package ua.m_pluse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.Game;

/**
 * @author prometej
 * @version 1.0
 */

public interface GameService {

	void save(Game game);

	List<Game> findAll();

	Game findOne(int id);

	void delete(int id);

	void saveGame(MultipartFile multipartFile, String name, String pathA);
}
