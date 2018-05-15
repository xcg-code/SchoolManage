package com.school.service;

import java.util.List;

import com.school.entity.Venue;

public interface VenueService {
	public List<Venue> list();
	public void delete(int id);
	public void add(String name);

}
