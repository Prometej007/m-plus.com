package ua.m_pluse.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.dao.GameDao;
import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.GameService;

public class GameServiceImpl implements GameService {

	@Autowired
	private GameDao gameDao;

	public void save(Game game) {
		gameDao.save(game);
	}

	public List<Game> findAll() {

		return gameDao.findAll();
	}

	public Game findOne(int id) {

		return gameDao.findOne(id);
	}

	public void delete(int id) {

		gameDao.delete(id);

	}

	public void saveGame(MultipartFile multipartFile, String name, String pathA) {

		String path = System.getProperty("catalina.home") + "/resources/img/";

		File filePath = new File(path);

		try {

			filePath.mkdirs();

			multipartFile.transferTo(filePath);
			Game game = new Game(name, path, pathA);
			gameDao.save(game);
		} catch (IOException e) {
			System.out.println("error with file");
		}

	}

}
