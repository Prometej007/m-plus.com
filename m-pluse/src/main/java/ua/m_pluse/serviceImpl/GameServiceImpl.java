package ua.m_pluse.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import ua.m_pluse.dao.GameDao;
import ua.m_pluse.entity.Game;
import ua.m_pluse.entity.Image;
import ua.m_pluse.service.GameService;
@Service
public class GameServiceImpl implements GameService {

	@Autowired
	private GameDao gameDao;

	public void save(Game game) {
		gameDao.save(game);
	}

	public List<Game> findAll() {

		return gameDao.findAll();
	}

	public Game findOne(int id) {

		return gameDao.findOne(id);
	}

	public void delete(int id) {

		gameDao.delete(id);

	}
	@Transactional
	public void saveGame(MultipartFile multipartFile, String name, String pathA) {

		Game game=new Game(name,"resources/Games/" + name +  "/" + multipartFile.getOriginalFilename(),pathA);
		save(game);
        String path = System.getProperty("catalina.home") + "/resources/Games/"+name + "/" + multipartFile.getOriginalFilename();
               
        File file = new File(path);

        try {
            file.mkdirs();
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("error with file");
        }

	}

}
