package com.school.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.entity.User;
import com.school.mapper.UserMapper;
import com.school.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;

	public int count() {
		return userMapper.count();
	}

	public List<User> listStudent() {
		return userMapper.listStudent();
	}

	public List<User> listTeacher() {
		return userMapper.listTeacher();
	}
	
	public void deleteStudent(User user){
		userMapper.deleteStudent(user.getId());
	}
	public void deleteTeacher(User user){
		userMapper.deleteTeacher(user.getId());
	}

}
