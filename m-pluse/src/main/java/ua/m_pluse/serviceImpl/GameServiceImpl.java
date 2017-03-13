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
		
	}

	public List<Game> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Game findOne(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

}
