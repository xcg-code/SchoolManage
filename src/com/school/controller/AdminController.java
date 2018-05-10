package com.school.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.school.entity.Admin;
import com.school.service.AdminService;

//告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
    AdminService adminService;
 
    @RequestMapping("listCategory")
    public ModelAndView listCategory(){
        ModelAndView mav = new ModelAndView();
        List<Admin> cs= adminService.list();
        
        // 放入转发参数
        mav.addObject("cs", cs);
        // 放入jsp路径
        mav.setViewName("listCategory");
        return mav;
    }

}
