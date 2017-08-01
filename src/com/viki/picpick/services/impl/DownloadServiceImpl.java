package com.viki.picpick.services.impl;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viki.picpick.beans.Downloads;
import com.viki.picpick.beans.SearchInfo;
import com.viki.picpick.dao.DownloadsDao;
import com.viki.picpick.services.DownloadService;


@Service("downloadService")
public class DownloadServiceImpl implements DownloadService {

	@Autowired
	private DownloadsDao downloadsDao;
	
	public void createImage(String imgurl, String filePath) throws Exception {
		URL url = new URL(imgurl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		InputStream inputStream = conn.getInputStream(); // 通过输入流获得图片数据
		byte[] getData = readInputStream(inputStream); // 获得图片的二进制数据
		File imageFile = new File(filePath);
		FileOutputStream fos = new FileOutputStream(imageFile);
		fos.write(getData);
		fos.close();
	}

	public static byte[] readInputStream(InputStream inputStream) throws IOException {
		byte[] buffer = new byte[1024];
		int len = 0;
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		while ((len = inputStream.read(buffer)) != -1) {
			bos.write(buffer, 0, len);
		}
		bos.close();
		return bos.toByteArray();
	}

	public List<Downloads> downloadsInfo(String userName, String keyWords, String picUrl) {

		
		List<Downloads> downloads = downloadsDao.saveDownloadInfo(userName,keyWords,picUrl);
		System.out.println("name:"+userName+"keywords:"+keyWords+"url:"+picUrl);
		
		return downloads;
	}

	
	
	
}
