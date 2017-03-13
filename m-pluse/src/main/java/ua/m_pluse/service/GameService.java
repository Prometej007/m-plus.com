package ua.m_pluse.service;

import java.util.List;

import ua.m_pluse.entity.Game;

public interface GameService {

	void save(Game game);

	List<Game> findAll();

	Game findOne(int id);

	void delete(int id);

}
