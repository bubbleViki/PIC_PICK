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
		  // path��ָ�����ص��ļ���·����
		  File file = new File(path);
		  //�жϵ�ǰ�ļ��Ƿ����,���ǲ��������ܳ��쳣
		  if(!file.exists()) {
		   try {
			throw new Exception("����ʧ��,���ļ�������,�����Ѿ���ɾ��");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  }
		  // ȡ���ļ�����
		  String filename = file.getName();
		  // ��������ʽ�����ļ���
		  fis = new FileInputStream(path);
		  bis = new BufferedInputStream(fis);
		  byte[] buffer = new byte[bis.available()];
		  fis.read(buffer);
		  fis.close();
		  bis.close();
		  // ���response
		  response.reset();
		  // ����response��Header
		  response.addHeader("Content-Disposition", "attachment;filename=" + new String(filename.getBytes()));
		  response.addHeader("Content-Length", "" + file.length());
		  toClient = new BufferedOutputStream(response.getOutputStream());
		  response.setContentType("application/octet-stream");
		  toClient.flush();
		  toClient.write(buffer);
		  toClient.close();
		 }
}
