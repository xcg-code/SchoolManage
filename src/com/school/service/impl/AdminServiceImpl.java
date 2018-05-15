package com.school.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.entity.Admin;
import com.school.mapper.AdminMapper;
import com.school.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
    AdminMapper adminMapper;

	public List<Admin> list() {
		return adminMapper.list();
	}

	@Override
	public Admin login(Admin admin) {
		return adminMapper.login(admin.getAdminNum(),admin.getAdminPwd());
	}

	@Override
	public int changePwd(String adminNum, String pwd) {
		return adminMapper.changePwd(adminNum,pwd);
		
	}

}
