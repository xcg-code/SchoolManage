package com.school.mapper;

import java.util.List;

import com.school.entity.Group;

public interface GroupMapper {
    public List<Group> listGroup();
    public void deleteGroup(int id);
    public int count(); 

}
