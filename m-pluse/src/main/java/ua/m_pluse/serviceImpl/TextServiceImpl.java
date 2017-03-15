package ua.m_pluse.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.m_pluse.dao.TextDao;
import ua.m_pluse.entity.Text;
import ua.m_pluse.service.TextService;

@Service
public class TextServiceImpl implements TextService {
	@Autowired
	TextDao textDao;

	public void save(Text text) {
		textDao.save(text);
	}

	public List<Text> findAll() {

		return textDao.findAll();
	}

	public Text findOne(int id) {
		
		return textDao.findOne(id);
	}

	public void delete(int id) {
		textDao.findOne(id);
	}

	
}
