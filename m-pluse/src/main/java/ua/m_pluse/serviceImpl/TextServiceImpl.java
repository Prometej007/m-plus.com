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

	@Override
	public void save(Text text) {
		textDao.save(text);
	}

	@Override
	public List<Text> findAll() {

		return textDao.findAll();
	}

	@Override
	public Text findOne(int id) {
		// TODO Auto-generated method stub
		return textDao.findOne(id);
	}

	@Override
	public void delete(int id) {
		textDao.findOne(id);
	}

}
