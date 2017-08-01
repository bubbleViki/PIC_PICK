package com.viki.picpick.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.viki.picpick.beans.Downloads;
import com.viki.picpick.beans.SearchInfo;
import com.viki.picpick.services.DownloadService;
import com.viki.picpick.services.SearchService;
import com.viki.picpick.services.SpiderService;

@Controller
@RequestMapping("/page")
public class PageController {

	@Resource(name = "searchService")
	private SearchService searchService;

	@Resource(name = "spiderService")
	private SpiderService spiderService;

	@Resource(name = "downloadService")
	private DownloadService downloadService;

	/**
	 * HOME PAGE
	 */

	@RequestMapping("/index")
	public String getIndex() {
		return "index";
	}
	
	@RequestMapping("/home")
	
		public ModelAndView getHome(HttpServletRequest request, HttpServletResponse response) throws IOException {
			ModelAndView mv = new ModelAndView();

			String username = request.getParameter("username");
			
			
			request.setAttribute("username", username);
			mv.setViewName("home");
			return mv;
		}
		
	
	

	@RequestMapping("/star")
	
		public ModelAndView getStar(HttpServletRequest request, HttpServletResponse response) throws IOException {
			ModelAndView mv = new ModelAndView();

			String username = request.getParameter("username");
			
			
			String[] chsId=request.getParameterValues("chsId");
			
			
			int i= chsId.length;
			while(i!=0){
				System.out.println(chsId[i]);
				i--;
				
			}
			
			
			
			//BookService bookService=new BookService();
			
			
		//	boolean bool=bookService.deleteBooks(chsId);
			
			//int currentPage=new Integer(request.getSession().getAttribute("currentPage").toString());
		//	response.sendRedirect(bool?"loadAll?pageCount="+currentPage:"error.jsp");
			
			
			request.setAttribute("username", username);
			mv.setViewName("star");
			return mv;
			
			
			
			
			
			
			
		}
	

	@RequestMapping("/display/download")
	public ModelAndView download(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();

		String keywords = request.getParameter("keywords");
		String username = request.getParameter("username");
		//User user = (User) request.getSession().getAttribute("user");
		//System.out.println("session:"+username);
		
	
		
		List<SearchInfo> searchInfo = null;
		searchInfo = searchService.dispalyAll(keywords);

		List<Downloads> downloads = null;
		
		String userName=username;
		
		if(username==null) 
			userName="guest";
		
		
		//创建下载文件夹
		long x = 1;
		String folderName = "E:\\GitHub\\myPro\\Pic_Pick\\PIC_PICK\\WebContent\\static\\images\\downloads\\" + keywords;
		File folder = new File(folderName);
		System.out.println(folderName);
		folder.mkdirs();
		
		
		
		
		for (SearchInfo info : searchInfo) {
			
			//1.数据库存档
			downloads=downloadService.downloadsInfo(userName, keywords,info.getPic_url());
			
			
			//2.图片保存到本地
			int index = info.getPic_url().lastIndexOf(".");
			String style = info.getPic_url().substring(index,info.getPic_url().length());
			
			System.out.println(style);

			String filePath = folderName + "\\" + keywords +"_"+ x + style;
			downloadService.createImage(info.getPic_url(), filePath);
			x++;
		}
		
		for(Downloads load:downloads){
			System.out.println("vers2:"+"name:"+load.getU_name()+"keywords:"+load.getKeywords()+"url:"+load.getPic_url());
		}
		
		
		
		request.setAttribute("keywords", keywords);

		mv.addObject("searchInfo", searchInfo);
		mv.setViewName("index_login");
		
		
		

		return mv;

	}

	
	
	/**
	 * SEARCH PAGE
	 * 
	 * @throws IOException
	 * 
	 */

	@RequestMapping("/search")
	public ModelAndView displaySearchInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();

		String keywords = request.getParameter("keywords");
		String username = request.getParameter("username");
		//User user = (User) request.getSession().getAttribute("user");
		System.out.println("session:"+username);
		
		
		
		// get html sourceCode
		spiderService.getAjaxCotnent("http://s.weibo.com/weibo/" + keywords + "?topnav=1", keywords);

		// get url then save
		spiderService.savePic(keywords);

		List<SearchInfo> searchInfo = null;
		searchInfo = searchService.dispalyAll(keywords);

		for (SearchInfo info : searchInfo) {
			System.out.println(info.getPic_url());
		}


		
		request.setAttribute("keywords", keywords);
		
		
		mv.addObject("searchInfo", searchInfo);
		mv.setViewName("display");
		
		if(username!=null){
			request.setAttribute("username", username);
			mv.setViewName("display_login");
		}
		
		

		
		


		return mv;
	}
	
	
	
}
