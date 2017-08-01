package com.viki.picpick.services;

import java.io.IOException;
import java.util.List;

import com.viki.picpick.beans.SearchInfo;

public interface SpiderService {
	
	void getAjaxCotnent(String url,String name) throws IOException;
	
	void savePic(String keywords) throws IOException;
	
}
