package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.m_pluse.entity.Game;

public interface GameDao extends JpaRepository<Game, Integer> {

}
