package com.school.service;

import java.util.List;

import com.school.entity.Group;

public interface GroupService {
	public List<Group> listGroup();
	public void deleteGroup(Group group);
    public int count(); 

}
