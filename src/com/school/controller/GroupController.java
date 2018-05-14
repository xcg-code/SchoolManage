package com.school.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.school.entity.Group;
import com.school.service.GroupService;



@Controller
@RequestMapping("")
public class GroupController {
	@Autowired
	GroupService groupService;
	
	@RequestMapping("listGroup")
	public ModelAndView listGroup(){
		ModelAndView mav=new ModelAndView();
		List<Group> groupList=groupService.listGroup();
		// 放入转发参数
        mav.addObject("groupList", groupList);
        // 放入jsp路径
        mav.setViewName("listGroup");
        return mav;
	}
	
	
	@RequestMapping("deleteGroup")
	public ModelAndView deleteTeacher(Group group){
		ModelAndView mav=new ModelAndView();
		groupService.deleteGroup(group);
        // 放入jsp路径
        mav.setViewName("redirect:/listGroup");
        return mav;
	}
	
	
}
