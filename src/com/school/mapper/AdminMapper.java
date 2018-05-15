package com.school.mapper;

import java.util.List;

import com.school.entity.Admin;

public interface AdminMapper {
	public void add(Admin admin); 
    
    public void delete(int adminId); 
        
    public Admin get(int adminId); 
      
    public void update(Admin admin);
    public int changePwd(String adminNum,String pwd);
        
    public List<Admin> list();
    public Admin login(String adminNum,String adminPwd);
    public int count(); 

}
