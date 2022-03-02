package com.jh.wavve;

import java.util.Date;

public class Best {

	private int b_no;
	private String b_name;
	private String b_img;
	private String b_txt;
	private Date date;
	private String b_writer;
	
	public Best() {
		// TODO Auto-generated constructor stub
	}

	public Best(int b_no, String b_name, String b_img, String b_txt, Date date, String b_writer) {
		super();
		this.b_no = b_no;
		this.b_name = b_name;
		this.b_img = b_img;
		this.b_txt = b_txt;
		this.date = date;
		this.b_writer = b_writer;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_img() {
		return b_img;
	}

	public void setB_img(String b_img) {
		this.b_img = b_img;
	}

	public String getB_txt() {
		return b_txt;
	}

	public void setB_txt(String b_txt) {
		this.b_txt = b_txt;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	
	
	
	
	
	
}
