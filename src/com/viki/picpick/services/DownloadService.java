package com.viki.picpick.services;

import java.util.List;

import com.viki.picpick.beans.Downloads;
import com.viki.picpick.beans.SearchInfo;

public interface DownloadService {
	public void createImage(String imgurl, String filePath) throws Exception;
	
	List<Downloads> downloadsInfo(String userName, String keyWords,String picUrl);
	
}
