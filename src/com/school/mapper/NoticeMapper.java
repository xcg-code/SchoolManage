package com.school.mapper;

import java.util.List;

import com.school.entity.Notice;

public interface NoticeMapper {
	List<Notice> listNotice();
	void addNotice(Notice notice);
	void deleteNotice(int id);
}
