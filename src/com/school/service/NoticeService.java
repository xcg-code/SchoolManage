package com.school.service;

import java.util.List;

import com.school.entity.Notice;

public interface NoticeService {
	public List<Notice> listNotice();
	public void addNotice(Notice notice);
	public void deleteNotice(int id);

}
