package ua.m_pluse.serviceImpl;


import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resources;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
	@Transactional
	public void saveImg(MultipartFile multipartFile, String name) {
		Image image=new Image(name,"resources/SomeShit/" + name +  "/" + multipartFile.getOriginalFilename());
		save(image);
        String path = System.getProperty("catalina.home") + "/resources/SomeShit/"+name + "/" + multipartFile.getOriginalFilename();
               
        File file = new File(path);

        try {
            file.mkdirs();
            
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("error with file");
        }

	}

}
