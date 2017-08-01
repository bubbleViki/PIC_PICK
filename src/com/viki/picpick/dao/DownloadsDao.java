package com.viki.picpick.dao;

import java.util.List;

import com.viki.picpick.beans.Downloads;

public interface DownloadsDao {

	List<Downloads> saveDownloadInfo(String userName, String keyWords, String picUrl);
}
