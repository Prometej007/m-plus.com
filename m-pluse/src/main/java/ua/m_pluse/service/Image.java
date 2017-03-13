package ua.m_pluse.service;

import java.util.List;

public interface Image {

	void save(Image image);

	List<Image> findAll();

	Image findOne(int id);

	void delete(int id);

}
