package ua.m_pluse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.FileAdmin;

public interface FileAdminService {

	void save(FileAdmin file);

	List<FileAdmin> findAll();

	FileAdmin findOne(int id);

	void delete(int id);

	FileAdmin findByPath(String path);

	FileAdmin findByName(String name);

	void saveFile(MultipartFile multipartFile, String name);

}
