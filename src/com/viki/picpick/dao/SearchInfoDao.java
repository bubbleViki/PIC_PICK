package com.viki.picpick.dao;

import java.util.List;

import com.viki.picpick.beans.SearchInfo;

public interface SearchInfoDao {
	List<SearchInfo> savePic(String keywords, String pic_url);
	
	List<SearchInfo> displayAll(String keywords);
}
