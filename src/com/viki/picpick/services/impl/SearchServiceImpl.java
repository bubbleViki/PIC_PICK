package com.viki.picpick.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viki.picpick.beans.SearchInfo;
import com.viki.picpick.dao.SearchInfoDao;
import com.viki.picpick.services.SearchService;

@Service("searchService")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchInfoDao searchDao;
	
	public List<SearchInfo> dispalyAll(String keywords) {
		
		List<SearchInfo> searchInfo=searchDao.displayAll(keywords);
		return searchInfo;
	}

}
