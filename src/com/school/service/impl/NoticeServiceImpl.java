package com.school.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.entity.Notice;
import com.school.mapper.NoticeMapper;
import com.school.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	NoticeMapper noticeMapper;

	public List<Notice> listNotice() {
		return noticeMapper.listNotice();
	}

	public void addNotice(Notice notice){
		noticeMapper.addNotice(notice);
	}

	public void deleteNotice(int id) {
		noticeMapper.deleteNotice(id);
	}
}
