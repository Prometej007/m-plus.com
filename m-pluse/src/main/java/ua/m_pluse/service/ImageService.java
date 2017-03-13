package ua.m_pluse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.Image;

public interface ImageService {

	void save(Image image);

	List<Image> findAll();

	Image findOne(int id);

	void delete(int id);

	void saveImg(MultipartFile multipartFile, String name);

}
