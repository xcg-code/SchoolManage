package com.school.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.entity.Venue;
import com.school.mapper.VenueMapper;
import com.school.service.VenueService;
@Service
public class VenueServiceImpl implements VenueService{
	@Autowired
	VenueMapper venueMapper;

	public List<Venue> list() {
		return venueMapper.list();
	}

	public void add(String name){
		venueMapper.add(name);
	}
	public void delete(int id){
		venueMapper.delete(id);
	}

}
