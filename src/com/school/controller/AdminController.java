package com.school.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
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
	public ModelAndView listAdmin() {
		ModelAndView mav = new ModelAndView();
		List<Admin> cs = adminService.list();

		// 放入转发参数
		mav.addObject("cs", cs);
		// 放入jsp路径
		mav.setViewName("listCategory");
		return mav;
	}

	@RequestMapping("login")
	public ModelAndView login(Admin admin, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Admin user = adminService.login(admin);
		if (user != null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("admin", user);
			session.setAttribute("adminNum", user.getAdminNum());
			mav.setViewName("redirect:/profile");
		} else {
			// 放入转发参数
			HttpSession session = request.getSession(true);
			session.setAttribute("error", "用户名或密码错误");
			// 放入jsp路径
			mav.setViewName("redirect:/error");
		}
		return mav;
	}

	@RequestMapping("error")
	public ModelAndView error() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("error");
		return mav;
	}

	@RequestMapping("profile")
	public ModelAndView profile() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("profile");
		return mav;
	}

	@RequestMapping("changePwd")
	public ModelAndView changePwd() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("changePwd");
		return mav;
	}

	@RequestMapping("change")
	public ModelAndView change(SessionStatus sessionStatus,
			HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		// 放入转发参数
		HttpSession session = request.getSession(true);
		String adminNum = (String) session.getAttribute("adminNum");
		String pwd1 = request.getParameter("newPassword");
		String pwd2 = request.getParameter("newPassword2");
		if (!pwd1.equals(pwd2)) {
			// 放入转发参数
			session.setAttribute("error", "密码不一致！");
			// 放入jsp路径
			mav.setViewName("redirect:/error");
			return mav;
		}
		if (adminService.changePwd(adminNum,pwd1)!=0) {
			sessionStatus.setComplete();
			mav.setViewName("redirect:/");
		}
		return mav;
	}

	@RequestMapping("logout")
	public ModelAndView logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		return mav;
	}

}
