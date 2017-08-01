package com.viki.picpick.services.impl;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Writer;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.viki.picpick.beans.SearchInfo;
import com.viki.picpick.dao.SearchInfoDao;
import com.viki.picpick.services.SpiderService;



@Service("spiderService")
public class SpiderImpl implements SpiderService{
	

	@Autowired
	private SearchInfoDao searchDao;
	
	public void getAjaxCotnent(String url, String keywords) throws IOException {
		System.out.println(url);
		Runtime rt = Runtime.getRuntime();
		Process p = rt.exec("phantomjs.exe E:/JavaScript/phantomjsDemo/saveHtml.js "+url+" "+keywords);
		  InputStream is = p.getInputStream();     
	        BufferedReader br = new BufferedReader(new InputStreamReader(is));     
	        StringBuffer sbf = new StringBuffer();     
	        String tmp = "";     
	        while((tmp = br.readLine())!=null){     
	            sbf.append(tmp);     
	        }     
	        System.out.println(sbf.toString());  
		
		BufferedInputStream bis = new BufferedInputStream(p.getInputStream());
		bis.close();
		
	}

	public void savePic(String keywords) throws IOException {
		
		File f = new File("E:/GitHub/myPro/Pic_Pick/PIC_PICK/WebContent/static/html/"+keywords+".txt");
		Writer writer = null;
		writer = new FileWriter(f);

		Document doc = Jsoup.parse(new File("E:/GitHub/myPro/Pic_Pick/PIC_PICK/WebContent/static/html/"+keywords+".html"),
				"utf-8");
		Elements images = doc.select("img[src~=(?i)\\.(png|jpe?g|gif)]");

		for (Element image : images) {

			// writer.write(pic.toString());

			String imageX = image.attr("src");
			// System.out.println(image.attr("src").substring(7, 8)+"\n");

			if (image.attr("src").substring(7, 9).equals("ww")
					|| image.attr("src").substring(22, 31).equals("thumbnail")) {
				String imageY;
				if (image.attr("src").substring(22, 31).equals("thumbnail"))
					imageY = imageX.substring(0, 22) + "bmiddle" + imageX.substring(31, imageX.length());

				else
					imageY = imageX.substring(0, 22) + "bmiddle" + imageX.substring(28, imageX.length());

				writer.write(imageY + "\n");
				
				System.out.println(imageY);
				System.out.println(keywords);
				
				
				List<SearchInfo> searchInfo=searchDao.savePic(keywords,imageY);
				System.out.println(keywords);
				

			}
		}

		writer.flush();
		writer.close();
		
		
	
	
}}
