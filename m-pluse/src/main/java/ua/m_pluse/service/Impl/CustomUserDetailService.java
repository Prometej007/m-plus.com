package ua.m_pluse.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import ua.m_pluse.dao.UserDao;
import ua.m_pluse.entity.User;

@Service("customUserDS")
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	private UserDao userDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		   User user;
	        try {
	            user = userDAO.findByName(username);
	        }catch(Exception e){
	        user=null;
	        }
	            if (user == null) {
	            throw new UsernameNotFoundException(String.format("User %s does not exist!", username));
	        }
	        return user;
	}

}
