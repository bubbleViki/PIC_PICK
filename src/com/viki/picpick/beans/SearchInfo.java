package com.viki.picpick.beans;

import java.io.Serializable;

public class SearchInfo implements Serializable{
	private int u_id;
	private String keywords;
	private int pic_id;
	private String pic_url;
	private String pic_source;
	private String time;
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public int getPic_id() {
		return pic_id;
	}
	public void setPic_id(int pic_id) {
		this.pic_id = pic_id;
	}
	public String getPic_url() {
		return pic_url;
	}
	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}
	public String getPic_source() {
		return pic_source;
	}
	public void setPic_source(String pic_source) {
		this.pic_source = pic_source;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
}
