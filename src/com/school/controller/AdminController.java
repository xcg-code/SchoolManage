package com.school.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.school.entity.Admin;
import com.school.service.AdminService;

//告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
    AdminService adminService;
 
    @RequestMapping("listCategory")
    public ModelAndView listAdmin(){
        ModelAndView mav = new ModelAndView();
        List<Admin> cs= adminService.list();
        
        // 放入转发参数
        mav.addObject("cs", cs);
        // 放入jsp路径
        mav.setViewName("listCategory");
        return mav;
    }
    
    
    @RequestMapping("login")
    public ModelAndView login(Admin admin,HttpServletRequest request){
    	ModelAndView mav = new ModelAndView();
    	Admin user=adminService.login(admin);
    	if(user!=null){
    		HttpSession session = request.getSession(true);
    		 session.setAttribute("admin",user);
    		mav.setViewName("redirect:/profile");
    	}
    	return mav;
    }
    
    @RequestMapping("profile")
    public ModelAndView profile(){
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("profile");
    	return mav;
    }

}
