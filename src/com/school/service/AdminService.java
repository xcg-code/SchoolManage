package com.school.service;

import java.util.List;

import com.school.entity.Admin;

public interface AdminService {
	List<Admin> list();
	Admin login(Admin admin);
	int changePwd(String adminNum,String pwd);
}
