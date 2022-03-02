package com.jy.netflix;

import java.sql.Date;

public class n_best {
	
	private int n_no;
	private String n_writer;
	private String n_movietitle;
	private String n_txt;
	private String n_img;
	private Date n_date;
 
	public n_best() {
		// TODO Auto-generated constructor stub
	}

	public n_best(int n_no, String n_writer, String n_movietitle, String n_txt, String n_img, Date n_date) {
		super();
		this.n_no = n_no;
		this.n_writer = n_writer;
		this.n_movietitle = n_movietitle;
		this.n_txt = n_txt;
		this.n_img = n_img;
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

	public String getN_img() {
		return n_img;
	}

	public void setN_img(String n_img) {
		this.n_img = n_img;
	}

	public Date getN_date() {
		return n_date;
	}

	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}
	
	
 
	
	 
	
	
}
