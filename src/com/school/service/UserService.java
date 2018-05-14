package com.school.service;

import java.util.List;

import com.school.entity.User;

public interface UserService {
	public List<User> listStudent();
	public List<User> listTeacher();
	public void deleteStudent(User user);
	public void deleteTeacher(User user);
    public int count(); 

}
