package com.dh.main;

import java.util.Date;

public class WatchaBestScene {
 private int no;
 private String bestSceneTitle;
 private String movieTitle;
 private String txt;
 private String writer;
 private String genre;
 private String score;
 private String img;
 private Date date;
 
 public WatchaBestScene() {
	// TODO Auto-generated constructor stub
}

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getBestSceneTitle() {
	return bestSceneTitle;
}

public void setBestSceneTitle(String bestSceneTitle) {
	this.bestSceneTitle = bestSceneTitle;
}

public String getMovieTitle() {
	return movieTitle;
}

public void setMovieTitle(String movieTitle) {
	this.movieTitle = movieTitle;
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

public String getScore() {
	return score;
}

public void setScore(String score) {
	this.score = score;
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

public WatchaBestScene(int no, String bestSceneTitle, String movieTitle, String txt, String writer, String genre,
		String score, String img, Date date) {
	super();
	this.no = no;
	this.bestSceneTitle = bestSceneTitle;
	this.movieTitle = movieTitle;
	this.txt = txt;
	this.writer = writer;
	this.genre = genre;
	this.score = score;
	this.img = img;
	this.date = date;
}
 
 
}
