package com.js.disney;

import java.util.Date;

public class DisneyBest {
	
	private int no;
	private String title;
	private String scene;
	private String text;
	private String writer;
	private Date date;
	
	public DisneyBest() {
		// TODO Auto-generated constructor stub
	}

	public DisneyBest(int no, String title, String scene, String text, String writer, Date date) {
		super();
		this.no = no;
		this.title = title;
		this.scene = scene;
		this.text = text;
		this.writer = writer;
		this.date = date;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getScene() {
		return scene;
	}

	public void setScene(String scene) {
		this.scene = scene;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}
	
	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
