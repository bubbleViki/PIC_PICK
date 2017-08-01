package com.viki.picpick.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.viki.picpick.beans.SearchInfo;
import com.viki.picpick.beans.User;
import com.viki.picpick.services.SearchService;
import com.viki.picpick.services.UserService;


@Controller
@SessionAttributes("user")
@RequestMapping("/user")

public class UserController {
	@Resource(name="userService")
	private UserService userService;
	
	@Resource(name = "searchService")
	private SearchService searchService;

	
	@RequestMapping("/login")
	public ModelAndView LoginView(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		//String userName="viki";
		
		//User user=this.userService.getUserByName(userName);
		//System.out.println(user.getU_id());
		
		//String keywords=request.getParameter("keywords");
		//System.out.println(keywords);
		
		

		
		
		mv.setViewName("login");

		
		

		
		


		return mv;
					
	}
	
	
	@RequestMapping("/signIn")
	public String getSignin() {
		return "signIn";
	}
	
	@RequestMapping("/signIn/submit")
	public ModelAndView submitInfo(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		
		
		System.out.println(username+password);
	
		User user=new User();
		user.setU_name(username);
		user.setU_password(password);

		
		
		   userService.newUser(user);

		
		
		
			mv.setViewName("login");
		
			return mv;
		
		
		
		
	}
	
	
	
	@RequestMapping("/InfoCheck")
	public ModelAndView InfoCheck(HttpServletRequest request,HttpServletResponse response){
		ModelAndView mv = new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(password);
	
		User user=new User();
		user.setU_name(username);
		user.setU_password(password);

		user = userService.checkUser(user);

		
		if(user==null){
			mv.setViewName("login");
			System.out.println("xxcw");
		}else{
			
			mv.addObject("user",user);
			mv.setViewName("index_login");
		}
		return mv;
		
		
		
		
	}
	
		
	 @RequestMapping("/outLogin")
	    public String outLogin(HttpSession session){
	        //通过session.invalidata()方法来注销当前的session
	        session.invalidate();
	        return "index";
	   }	
		
	
	
	
}
