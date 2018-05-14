package com.school.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.entity.Group;
import com.school.mapper.GroupMapper;
import com.school.service.GroupService;

@Service
public class GroupServiceImpl implements GroupService{
	@Autowired
	GroupMapper groupMapper;

	public int count() {
		return groupMapper.count();
	}

	public List<Group> listGroup() {
		return groupMapper.listGroup();
	}
	
	public void deleteGroup(Group group){
		groupMapper.deleteGroup(group.getId());
	}

}
