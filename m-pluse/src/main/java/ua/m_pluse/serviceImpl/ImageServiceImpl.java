package ua.m_pluse.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.dao.ImageDao;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.ImageService;
@Service
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

	public void saveImg(MultipartFile multipartFile, String name) {

		String path = System.getProperty("catalina.home") + "/resources/img/";

		File filePath = new File(path);

		try {

			Image image = new Image(name, path + multipartFile.getOriginalFilename());

			filePath.mkdirs();

			multipartFile.transferTo(filePath);
			imageDao.save(image);

		} catch (IOException e) {
			System.out.println("error with file");
		}

	}

}
