package com.jh.wavve;

import java.util.Date;

public class WavveReview {

	private int no;
	private String title;
	private String txt;
	private String writer;
	private String genre;
	private String movie_title;
	private String grade;
	private Date date;
	
	public WavveReview() {
		// TODO Auto-generated constructor stub
	}

	public WavveReview(int no, String title, String txt, String writer, String genre, String movie_title, String grade,
			Date date) {
		super();
		this.no = no;
		this.title = title;
		this.txt = txt;
		this.writer = writer;
		this.genre = genre;
		this.movie_title = movie_title;
		this.grade = grade;
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

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getMovie_title() {
		return movie_title;
	}

	public void setMovie_title(String movie_title) {
		this.movie_title = movie_title;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}