package com.school.mapper;

import java.util.List;

import com.school.entity.User;

public interface UserMapper {
    public List<User> listStudent();
    public List<User> listTeacher();
    public void deleteStudent(int id);
    public void deleteTeacher(int id);
    public int count(); 

}
