package com.dh.main;

import java.util.Date;

public class WatchaRecom {
	private int no;
	private String movieTitle;
	private String genre;
	private String txt;
	private String img;
	private Date date;
	
	public WatchaRecom() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public WatchaRecom(int no, String movieTitle, String genre, String txt, String img, Date date) {
		super();
		this.no = no;
		this.movieTitle = movieTitle;
		this.genre = genre;
		this.txt = txt;
		this.img = img;
		this.date = date;
	}
	
}
