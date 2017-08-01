package com.viki.picpick.beans;

import java.io.Serializable;

public class User implements Serializable {
	private int u_id;
	private String u_name;
	private String u_password;
	private int weibo_uid;
	private String profile_picture;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public int getWeibo_uid() {
		return weibo_uid;
	}
	public void setWeibo_uid(int weibo_uid) {
		this.weibo_uid = weibo_uid;
	}
	public String getProfile_picture() {
		return profile_picture;
	}
	public void setProfile_picture(String profile_picture) {
		this.profile_picture = profile_picture;
	}
	
}
