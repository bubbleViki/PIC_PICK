package com.viki.picpick.beans;

import java.io.Serializable;

public class Downloads implements Serializable {
	private String u_name ;
	private String keywords;
	private int pic_id;
	private String pic_url;
	private String source_url;
	private String pic_time;
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
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
	public String getSource_url() {
		return source_url;
	}
	public void setSource_url(String source_url) {
		this.source_url = source_url;
	}
	public String getPic_time() {
		return pic_time;
	}
	public void setPic_time(String pic_time) {
		this.pic_time = pic_time;
	}
	
	
}
