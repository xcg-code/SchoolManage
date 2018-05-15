package com.school.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.school.entity.Notice;
import com.school.entity.User;
import com.school.entity.Venue;
import com.school.service.NoticeService;
import com.school.service.UserService;
import com.school.service.VenueService;


@Controller
@RequestMapping("")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("notice")
	public ModelAndView notice(){
		ModelAndView mav=new ModelAndView();
		List<Notice> noticeList=noticeService.listNotice();
		// 放入转发参数
        mav.addObject("noticeList", noticeList);
        // 放入jsp路径
        mav.setViewName("notice");
        return mav;
	}
	
	@RequestMapping("addNotice")
	public ModelAndView addNotice(Notice notice){
		ModelAndView mav=new ModelAndView();
		Date date = new Date();   
		Timestamp timestamp = new Timestamp(date.getTime());
		notice.setTime(timestamp);
		noticeService.addNotice(notice);
        // 放入jsp路径
        mav.setViewName("redirect:/notice");
        return mav;
	}
	
	@RequestMapping("deleteNotice")
	public ModelAndView deleteNotice(Notice notice){
		ModelAndView mav=new ModelAndView();
		noticeService.deleteNotice(notice.getId());
        // 放入jsp路径
        mav.setViewName("redirect:/notice");
        return mav;
	}
}
