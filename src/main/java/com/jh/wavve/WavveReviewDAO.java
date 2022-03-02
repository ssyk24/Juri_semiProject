package com.jh.wavve;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import oracle.net.aso.r;

public class WavveReviewDAO {

private ArrayList<WavveReview> reviews;

private static final WavveReviewDAO WRDAO = new WavveReviewDAO();

public WavveReviewDAO() {
	
}


	
public static WavveReviewDAO getWrdao() {
	return WRDAO;
}



public void paging(int page,HttpServletRequest request) {
		
		
		
		request.setAttribute("curPageNo", page);
			
			//전체페이지 수 계산
		int cnt = 10; //한페이지당 보여줄 개수
		int total = reviews.size(); //총 데이터 개수
		
		if (total != 0) {
			int pageCount = (int)Math.ceil((double)total / cnt); 
			request.setAttribute("pageCount", pageCount);
				
			int start = total - (cnt * (page - 1));
				
			int end = (page == pageCount) ? -1 : start - (cnt + 1);	
				
				
			ArrayList<WavveReview> items = new ArrayList<WavveReview>();
			for (int i = start-1; i > end; i--) {
				items.add(reviews.get(i));
			}
			
			request.setAttribute("reviews", items);
			
			} 
		}			
		
public void index_paging(int page,HttpServletRequest request) {
	
	
	
	request.setAttribute("curPageNo", page);
		
		//전체페이지 수 계산
	int cnt = 5; //한페이지당 보여줄 개수
	int total = reviews.size(); //총 데이터 개수
		
	int pageCount = (int)Math.ceil((double)total / cnt); 
	request.setAttribute("pageCount", pageCount);
		
	int start = total - (cnt * (page - 1));
		
	int end = (page == pageCount) ? -1 : start - (cnt + 1);	
		
		
	ArrayList<WavveReview> items = new ArrayList<WavveReview>();
	for (int i = start-1; i > end; i--) {
		items.add(reviews.get(i));
	}
	
	request.setAttribute("reviews", items);
	
	} 
	
	public void getAllReview(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from wavve_review order by wr_date";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			reviews = new ArrayList<WavveReview>();
			WavveReview r = null;
			
					
			while (rs.next()) {
				r = new WavveReview();
				r.setNo(rs.getInt("wr_no"));
				r.setTitle(rs.getString("wr_title"));
				r.setTxt(rs.getString("wr_txt"));
				r.setWriter(rs.getString("wr_writer"));
				r.setDate(rs.getDate("wr_date"));
				r.setGrade(rs.getString("wr_grade"));
				r.setMovie_title(rs.getString("wr_movie_title"));
				
				reviews.add(r);
			}
			request.setAttribute("reviews", reviews);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public static void insertReview(HttpServletRequest request) {
		
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("UTF-8");
			con = DBManager.connect();
			String sql = "insert into wavve_review values(wavve_review_seq.nextval,?,?,?,?,?,?,sysdate)";
			pstmt = con.prepareStatement(sql);

			String title = request.getParameter("title");
			String txt = request.getParameter("txt");
			String writer = request.getParameter("writer");
			String genre = request.getParameter("genre");
			String movie_title = request.getParameter("movie_title");
			String grade = request.getParameter("grade");

			
			
			System.out.println(title);
			System.out.println(txt);
			System.out.println(writer);
			System.out.println(genre);
			System.out.println(movie_title);
			System.out.println(grade);
			
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, writer);
			pstmt.setString(4, genre);
			pstmt.setString(5, movie_title);
			pstmt.setString(6, grade);
			
			if(pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			}
			else {
				System.out.println("등록 실패");
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	public static void getReview(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from wavve_review where wr_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			
			rs = pstmt.executeQuery();
			
			
			WavveReview r = null;
			
			if(rs.next()) {
				r = new WavveReview();
				r.setNo(rs.getInt("wr_no"));
				r.setTitle(rs.getString("wr_title"));
				r.setTxt(rs.getString("wr_txt"));
				r.setWriter(rs.getString("wr_writer"));
				r.setDate(rs.getDate("wr_date"));
				r.setGenre(rs.getString("wr_genre"));
				r.setMovie_title(rs.getString("wr_movie_title"));
				r.setGrade(rs.getString("wr_grade"));
				
				request.setAttribute("review", r);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

public static void getGoodReview(HttpServletRequest request) {
		
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		con = DBManager.connect();
		String sql = "select * from wavve_review where wr_movie_title = ? order by wr_date ";
		pstmt = con.prepareStatement(sql);
		System.out.println(request.getParameter("title_name"));
		pstmt.setString(1, request.getParameter("title_name"));
		rs = pstmt.executeQuery();
		
		ArrayList<WavveReview> reviews = new ArrayList<WavveReview>();
		WavveReview r = null;
		
		while (rs.next()) {
			r = new WavveReview();
			r.setNo(rs.getInt("wr_no"));
			r.setTitle(rs.getString("wr_title"));
			r.setTxt(rs.getString("wr_txt"));
			r.setWriter(rs.getString("wr_writer"));
			r.setDate(rs.getDate("wr_date"));
			r.setGrade(rs.getString("wr_grade"));
			r.setMovie_title(rs.getString("wr_movie_title"));
			
			reviews.add(r);
		}
		
		if (reviews.size()==0) {
			request.setAttribute("noreview", "noreview");
		}
		
		request.setAttribute("reviews", reviews);
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		DBManager.close(con, pstmt, rs);
	}
	
}
	public static void updateReview(HttpServletRequest request) {
		
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "update wavve_review set wr_title=?,wr_txt=?,wr_genre=?,wr_movie_title=?,wr_grade=?,wr_date = sysdate where wr_no = ?";
			
			pstmt = con.prepareStatement(sql);

			
			String title = request.getParameter("title");
			String txt = request.getParameter("txt");
			String genre = request.getParameter("genre");
			String movie_title = request.getParameter("movie_title");
			String grade = request.getParameter("grade");
			String no = request.getParameter("no");

			
			
			System.out.println(title);
			System.out.println(txt);
			System.out.println(genre);
			System.out.println(movie_title);
			System.out.println(grade);
			System.out.println(no);
			
			pstmt.setString(1, title);
			pstmt.setString(2, txt);
			pstmt.setString(3, genre);
			pstmt.setString(4, movie_title);
			pstmt.setString(5, grade);
			pstmt.setString(6, no);
			
			if(pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");
				request.setAttribute("r", "수정 성공!");
			}
			else {
				request.setAttribute("r", "수정 실패!");
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
	}

	public static void deleteReview(HttpServletRequest request) {
		
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			String sql = "delete wavve_review where wr_no = ?";
			pstmt = con.prepareStatement(sql);

			String no = request.getParameter("no");

			
			
			System.out.println(no);
			
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
				request.setAttribute("r", "삭제 성공!");
			}
			else {
				request.setAttribute("r", "삭제 실패!");
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	public void searchReview(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from wavve_review where wr_title like '%'||?||'%'";
			String searchTitle = request.getParameter("searchTitle");
			System.out.println(searchTitle);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, searchTitle);
			
			rs = pstmt.executeQuery();
			
			
			reviews = new ArrayList<WavveReview>();
			WavveReview r = null;
			
			while (rs.next()) {
				r = new WavveReview();
				r.setNo(rs.getInt("wr_no"));
				r.setTitle(rs.getString("wr_title"));
				r.setTxt(rs.getString("wr_txt"));
				r.setWriter(rs.getString("wr_writer"));
				r.setDate(rs.getDate("wr_date"));
				r.setGenre(rs.getString("wr_genre"));
				r.setMovie_title(rs.getString("wr_movie_title"));
				r.setGrade(rs.getString("wr_grade"));
				
				reviews.add(r);
			}
			
			if (reviews.size()==0) {
				request.setAttribute("noreview", "noreview");
			}
						
			request.setAttribute("reviews", reviews);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	public void genreSearchReview(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String genre = request.getParameter("genre");
			System.out.println(genre);
			if (genre.equals("*")) {
				con = DBManager.connect();
				String sql = "select * from wavve_review order by wr_date";
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				
				reviews = new ArrayList<WavveReview>();
				WavveReview r = null;
				

				
				while (rs.next()) {
					r = new WavveReview();
					r.setNo(rs.getInt("wr_no"));
					r.setTitle(rs.getString("wr_title"));
					r.setTxt(rs.getString("wr_txt"));
					r.setWriter(rs.getString("wr_writer"));
					r.setDate(rs.getDate("wr_date"));
					r.setGenre(rs.getString("wr_genre"));
					r.setMovie_title(rs.getString("wr_movie_title"));
					r.setGrade(rs.getString("wr_grade"));
					
					reviews.add(r);
				}
				

				
				request.setAttribute("reviews", reviews);
			}
			else {
				con = DBManager.connect();
				String sql = "select * from wavve_review where wr_genre = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, genre);
				
				rs = pstmt.executeQuery();
				
				
				reviews = new ArrayList<WavveReview>();
				WavveReview r = null;
				

				
				while (rs.next()) {
					r = new WavveReview();
					r.setNo(rs.getInt("wr_no"));
					r.setTitle(rs.getString("wr_title"));
					r.setTxt(rs.getString("wr_txt"));
					r.setWriter(rs.getString("wr_writer"));
					r.setDate(rs.getDate("wr_date"));
					r.setGenre(rs.getString("wr_genre"));
					r.setMovie_title(rs.getString("wr_movie_title"));
					r.setGrade(rs.getString("wr_grade"));
					
					reviews.add(r);
				}
				

				
				request.setAttribute("reviews", reviews);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
		
	}

