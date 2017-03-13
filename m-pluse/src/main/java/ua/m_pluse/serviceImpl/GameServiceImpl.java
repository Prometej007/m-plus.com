package ua.m_pluse.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ua.m_pluse.dao.GameDao;
import ua.m_pluse.entity.Game;
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

}
