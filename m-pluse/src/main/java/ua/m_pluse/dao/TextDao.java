package ua.m_pluse.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ua.m_pluse.entity.Text;

public interface TextDao extends JpaRepository<Text, Integer> {

}
