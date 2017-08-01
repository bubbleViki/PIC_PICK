package com.viki.picpick.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viki.picpick.beans.User;
import com.viki.picpick.dao.UserDao;
import com.viki.picpick.services.UserService;


@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	


	public User getUserByName(String userName) {
		User user=this.userDao.getUserByName(userName);
	    return user;
	}



	public User checkUser(User user) {
		User u = userDao.checkUser(user);
		return u;
	}



	public void newUser(User user) {
		
		System.out.println("dao:"+user.getU_name()+user.getU_password());
		userDao.newUser(user.getU_name(),user.getU_password());
		
	}



	
	
	
	
	
	

}
