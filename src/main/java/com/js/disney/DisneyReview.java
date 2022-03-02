package com.js.disney;

import java.util.Date;

public class DisneyReview {
	
		private int no;
		private String genre;
		private String title;
		private String score;
		private String writer;
		private Date date;
		private String text;
		private String movie_title;
		
		public DisneyReview() {
			// TODO Auto-generated constructor stub
		}

		public DisneyReview(int no, String genre, String title, String score, String writer, Date date, String text,
				String movie_title) {
			super();
			this.no = no;
			this.genre = genre;
			this.title = title;
			this.score = score;
			this.writer = writer;
			this.date = date;
			this.text = text;
			this.movie_title = movie_title;
		}

		public int getNo() {
			return no;
		}

		public void setNo(int no) {
			this.no = no;
		}

		public String getGenre() {
			return genre;
		}

		public void setGenre(String genre) {
			this.genre = genre;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
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

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public String getText() {
			return text;
		}

		public void setText(String text) {
			this.text = text;
		}

		public String getMovie_title() {
			return movie_title;
		}

		public void setMovie_title(String movie_title) {
			this.movie_title = movie_title;
		}

		
		

		
		
		
		
		
	}
	
	
	
	
