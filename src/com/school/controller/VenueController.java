package com.school.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.school.entity.User;
import com.school.entity.Venue;
import com.school.service.UserService;
import com.school.service.VenueService;


@Controller
@RequestMapping("")
public class VenueController {
	@Autowired
	VenueService venueService;
	
	@RequestMapping("venueType")
	public ModelAndView venueType(){
		ModelAndView mav=new ModelAndView();
		List<Venue> venueList=venueService.list();
		// 放入转发参数
        mav.addObject("venueList", venueList);
        // 放入jsp路径
        mav.setViewName("venueType");
        return mav;
	}
	
	@RequestMapping("type_add")
	public ModelAndView type_add(Venue venue){
		ModelAndView mav=new ModelAndView();
		venueService.add(venue.getName());
        // 放入jsp路径
        mav.setViewName("redirect:/venueType");
        return mav;
	}
	@RequestMapping("type_delete")
	public ModelAndView type_delete(Venue venue){
		ModelAndView mav=new ModelAndView();
		venueService.delete(venue.getId());
        // 放入jsp路径
        mav.setViewName("redirect:/venueType");
        return mav;
	}
	
}
