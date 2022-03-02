package com.jy.netflix;

import java.sql.Date;

public class n_review {
	private int n_no;
	private String n_writer;
	private String n_freetitle;
	private String n_movietitle;
	private String n_txt;
	private String n_genre;
	private String n_grade;
	private Date n_date;
	
	
	public n_review() {
		// TODO Auto-generated constructor stub
	}


	public n_review(int n_no, String n_writer, String n_freetitle, String n_movietitle, String n_txt, String n_genre,
			String n_grade, Date n_date) {
		super();
		this.n_no = n_no;
		this.n_writer = n_writer;
		this.n_freetitle = n_freetitle;
		this.n_movietitle = n_movietitle;
		this.n_txt = n_txt;
		this.n_genre = n_genre;
		this.n_grade = n_grade;
		this.n_date = n_date;
	}


	public int getN_no() {
		return n_no;
	}


	public void setN_no(int n_no) {
		this.n_no = n_no;
	}


	public String getN_writer() {
		return n_writer;
	}


	public void setN_writer(String n_writer) {
		this.n_writer = n_writer;
	}


	public String getN_freetitle() {
		return n_freetitle;
	}


	public void setN_freetitle(String n_freetitle) {
		this.n_freetitle = n_freetitle;
	}


	public String getN_movietitle() {
		return n_movietitle;
	}


	public void setN_movietitle(String n_movietitle) {
		this.n_movietitle = n_movietitle;
	}


	public String getN_txt() {
		return n_txt;
	}


	public void setN_txt(String n_txt) {
		this.n_txt = n_txt;
	}


	public String getN_genre() {
		return n_genre;
	}


	public void setN_genre(String n_genre) {
		this.n_genre = n_genre;
	}


	public String getN_grade() {
		return n_grade;
	}


	public void setN_grade(String n_grade) {
		this.n_grade = n_grade;
	}


	public Date getN_date() {
		return n_date;
	}


	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	
	
	
	

 
	
	
}
