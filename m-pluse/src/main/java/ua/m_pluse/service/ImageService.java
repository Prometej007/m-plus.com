package ua.m_pluse.service;

import java.util.List;

public interface ImageService {

	void save(Image image);

	List<Image> findAll();

	Image findOne(int id);

	void delete(int id);

}
