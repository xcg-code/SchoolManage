package com.school.entity;

import java.sql.Timestamp;

public class Notice {
	private int id;
	private String content;
	private Timestamp time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Notice [id=" + id + ", content=" + content + ", time=" + time
				+ "]";
	}
}
