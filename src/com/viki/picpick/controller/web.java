package com.viki.picpick.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletResponse;

public class web {
	public static void download(String path, HttpServletResponse response) throws FileNotFoundException, IOException {
		  OutputStream toClient = null;
		  InputStream bis = null;
		  FileInputStream fis = null;
		  // path是指欲下载的文件的路径。
		  File file = new File(path);
		  //判断当前文件是否存在,若是不存在则跑出异常
		  if(!file.exists()) {
		   try {
			throw new Exception("下载失败,该文件不存在,可能已经被删除");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  // 取得文件名。
		  String filename = file.getName();
		  // 以流的形式下载文件。
		  fis = new FileInputStream(path);
		  bis = new BufferedInputStream(fis);
		  byte[] buffer = new byte[bis.available()];
		  fis.read(buffer);
		  fis.close();
		  bis.close();
		  // 清空response
		  response.reset();
		  // 设置response的Header
		  response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
		  response.addHeader("Content-Length", "" + file.length());
		  toClient = new BufferedOutputStream(response.getOutputStream());
		  response.setContentType("application/octet-stream");
		  toClient.flush();
		  toClient.write(buffer);
		  toClient.close();
		 }
}
