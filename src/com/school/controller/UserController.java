package com.school.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.school.entity.User;
import com.school.service.UserService;


@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService userService;
	
	@RequestMapping("listStudent")
	public ModelAndView listStudent(){
		ModelAndView mav=new ModelAndView();
		List<User> stuList=userService.listStudent();
		// 放入转发参数
        mav.addObject("stuList", stuList);
        // 放入jsp路径
        mav.setViewName("listStudent");
        return mav;
	}
	
	@RequestMapping("listTeacher")
	public ModelAndView listTeacher(){
		ModelAndView mav=new ModelAndView();
		List<User> teacherList=userService.listTeacher();
		// 放入转发参数
        mav.addObject("teacherList", teacherList);
        // 放入jsp路径
        mav.setViewName("listTeacher");
        return mav;
	}
	
	@RequestMapping("deleteStudent")
	public ModelAndView deleteStudent(User user){
		ModelAndView mav=new ModelAndView();
		userService.deleteStudent(user);
        // 放入jsp路径
        mav.setViewName("redirect:/listStudent");
        return mav;
	}
	@RequestMapping("deleteTeacher")
	public ModelAndView deleteTeacher(User user){
		ModelAndView mav=new ModelAndView();
		userService.deleteTeacher(user);
        // 放入jsp路径
        mav.setViewName("redirect:/listTeacher");
        return mav;
	}
	
	
}
