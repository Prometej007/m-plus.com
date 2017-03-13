package ua.m_pluse.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ua.m_pluse.dao.ImageDao;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.ImageService;

public class ImageServiceImpl implements ImageService {

	@Autowired
	ImageDao imageDao;

	public void save(Image image) {
		imageDao.save(image);
	}

	public List<Image> findAll() {

		return imageDao.findAll();
	}

	public Image findOne(int id) {

		return imageDao.findOne(id);
	}

	public void delete(int id) {

		imageDao.delete(id);

	}

}
