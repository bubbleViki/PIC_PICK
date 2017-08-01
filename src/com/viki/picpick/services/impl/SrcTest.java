package com.viki.picpick.services.impl;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.viki.picpick.beans.SearchInfo;

public class SrcTest {

	public static void getSrc() throws IOException {

		File f = new File("E:/GitHub/myPro/Pic_Pick/PIC_PICK/WebContent/static/html/weibo100.txt");
		Writer writer = null;
		writer = new FileWriter(f);

		Document doc = Jsoup.parse(new File("E:/GitHub/myPro/Pic_Pick/PIC_PICK/WebContent/static/html/weibotest.html"),
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

				SearchInfo searchInfo=null;
				searchInfo.setPic_url(imageY);
				
				writer.write(imageY + "\n");

			}
		}

		writer.flush();
		writer.close();
	}

	public static void main(String args[]) throws IOException {
		getSrc();
	}
}
