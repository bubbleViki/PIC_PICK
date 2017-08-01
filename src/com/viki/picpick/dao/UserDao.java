package com.viki.picpick.dao;

import com.viki.picpick.beans.User;

public interface UserDao {
	
	public User getUserByName(String userName);
	public User checkUser(User user);
	public void newUser(String userName,String userPassword);
}
