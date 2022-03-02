package com.dh.main;

import java.util.Date;

public class WatchaReview {
	private int no;
	private String txt;
	private String genre;
	private Date date;
	private String movieTitle;
	private String reviewTitle;
	private String score;
	private String writer;
	
	public WatchaReview() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTxt() {
		return txt;
	}

	public void setTxt(String txt) {
		this.txt = txt;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getMovieTitle() {
		return movieTitle;
	}

	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public WatchaReview(int no, String txt, String genre, Date date, String movieTitle, String reviewTitle,
			String score, String writer) {
		super();
		this.no = no;
		this.txt = txt;
		this.genre = genre;
		this.date = date;
		this.movieTitle = movieTitle;
		this.reviewTitle = reviewTitle;
		this.score = score;
		this.writer = writer;
	}

}
