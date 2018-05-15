package com.school.mapper;

import java.util.List;

import com.school.entity.Venue;

public interface VenueMapper {
	List<Venue> list();
	void add(String name);
	void delete(int id);
	

}
