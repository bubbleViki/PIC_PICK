package com.viki.picpick.services;

import com.viki.picpick.beans.User;

public interface UserService {
	
	
	User getUserByName(String userName);
	User checkUser(User user);
	public void newUser(User user);
}
