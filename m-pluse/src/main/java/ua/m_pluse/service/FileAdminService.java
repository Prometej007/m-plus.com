package ua.m_pluse.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.entity.FileAdmin;

public interface FileAdminService {

	void save(FileAdmin file);

	List<FileAdmin> findAll();

	FileAdmin findOne(int id);

	void delete(int id);

	public FileAdmin findByPath(String path);

	public FileAdmin findByName(String name);

	public void saveFile(MultipartFile multipartFile, String name);

}
