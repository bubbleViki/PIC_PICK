package com.viki.picpick.services;

import java.util.List;

import com.viki.picpick.beans.SearchInfo;

public interface SearchService {
	List<SearchInfo> dispalyAll(String keywords);
}
