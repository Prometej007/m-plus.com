package ua.m_pluse.service;

import java.util.List;

import ua.m_pluse.entity.Text;

public interface TextService {
	void save(Text text);

	List<Text> findAll();

	Text findOne(int id);

	void delete(int id);
}
