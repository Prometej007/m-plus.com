package ua.m_pluse.service.Impl;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.constants.Ñonfiguration;
import ua.m_pluse.dao.FileAdminDao;
import ua.m_pluse.entity.FileAdmin;
import ua.m_pluse.resource.wrapper.StringModification;
import ua.m_pluse.service.FileAdminService;

/**
 * @author prometej
 * @version 1.0
 */

@Service
public class FileAdminServiceImpl implements FileAdminService {

	@Autowired
	private FileAdminDao fileAdminDao;

	@Override
	public void save(FileAdmin file) {

		fileAdminDao.save(file);
	}

	@Override
	public List<FileAdmin> findAll() {

		return fileAdminDao.findAll();
	}

	@Override
	public FileAdmin findOne(int id) {

		return fileAdminDao.findOne(id);
	}

	@Override
	public void delete(int id) {

		fileAdminDao.delete(id);
	}

	/**
	 * save file for download
	 */
	@Override
	public void saveFile(MultipartFile multipartFile, String name) {

		String uuid = UUID.randomUUID().toString();
		FileAdmin fileAdmin = null;
		try {
			fileAdmin = new FileAdmin(name,
					new StringModification().overrideString(
							InetAddress.getLocalHost() + ":" + Ñonfiguration.PORT + "/" + Ñonfiguration.NAME_PROJECT
									+ "/" + "resources/AdminFiles/" + uuid + "/" + multipartFile.getOriginalFilename()),
					new StringModification().overrideString(InetAddress.getLocalHost() + ":" + Ñonfiguration.PORT + "/"
							+ Ñonfiguration.NAME_PROJECT + "/" + "download"));
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		save(fileAdmin);
		String path = System.getProperty("catalina.home") + "/resources/AdminFiles/" + uuid + "/"
				+ multipartFile.getOriginalFilename();

		File file = new File(path);

		try {
			file.mkdirs();

			multipartFile.transferTo(file);
		} catch (IOException e) {
			System.out.println("error with file");
		}

	}

	public FileAdmin findByPath(String path) {

		for (FileAdmin file : fileAdminDao.findAll()) {
			if (file.getPath().equals(path)) {
				return file;
			}
		}
		return null;

	}

	public FileAdmin findByName(String name) {

		for (FileAdmin file : fileAdminDao.findAll()) {
			if (file.getName().equals(name)) {
				return file;
			}
		}
		return null;

	}

}
