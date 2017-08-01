package com.viki.picpick.beans;

import java.io.Serializable;

public class Stars implements Serializable {
	private int userID;
	private int starID;
	private String picURL;
	private String picSource;
	
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getStarID() {
		return starID;
	}
	public void setStarID(int starID) {
		this.starID = starID;
	}
	public String getPicURL() {
		return picURL;
	}
	public void setPicURL(String picURL) {
		this.picURL = picURL;
	}
	public String getPicSource() {
		return picSource;
	}
	public void setPicSource(String picSource) {
		this.picSource = picSource;
	}
}
