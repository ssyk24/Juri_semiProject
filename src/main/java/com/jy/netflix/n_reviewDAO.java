package com.jy.netflix;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import javax.websocket.Session;

import com.jh.login.Account;
import com.jh.login.DBManager;

public class n_reviewDAO {

	private ArrayList<n_review> n_reviews;

	private static final n_reviewDAO NRDAO = new n_reviewDAO();

	public n_reviewDAO() {
	}

	public static n_reviewDAO getNrdao() {
		return NRDAO;
	}

	public void n_regReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			request.setCharacterEncoding("utf-8");

			con = DBManager.connect();
			String sql = "insert into netflix_review values(netflix_review_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt = con.prepareStatement(sql);

			String n_writer = request.getParameter("n_id");
			String n_reviewWFreeTitle = request.getParameter("n_reviewWFreeTitle");
			String n_reviewWMovieTitle = request.getParameter("n_reviewWMovieTitle");
			String n_reviewWTxt = request.getParameter("n_reviewWTxt");
			n_reviewWTxt = n_reviewWTxt.replace("\r\n", "<br>");
			String n_genreSelect = request.getParameter("n_genreSelect");
			String n_reviewWStar = request.getParameter("n_reviewWStar");

			pstmt.setString(1, n_writer);
			pstmt.setString(2, n_reviewWFreeTitle);
			pstmt.setString(3, n_reviewWMovieTitle);
			pstmt.setString(4, n_reviewWTxt);
			pstmt.setString(5, n_genreSelect);
			pstmt.setString(6, n_reviewWStar);

			System.out.println(n_reviewWTxt);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록 성공");
			} else {
				System.out.println("등록 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_reviewAll(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			String sql = "select * from netflix_review order by n_date";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			n_reviews = new ArrayList<n_review>();
			n_review n = null;

			while (rs.next()) {
				n = new n_review();
				n.setN_no(rs.getInt("n_no"));
				n.setN_freetitle(rs.getString("n_freetitle"));
				n.setN_movietitle(rs.getString("n_movietitle"));
				n.setN_txt(rs.getString("n_txt"));
				n.setN_genre(rs.getString("n_genre"));
				n.setN_grade(rs.getString("n_grade"));
				n.setN_date(rs.getDate("n_date"));
				n.setN_writer(rs.getString("n_writer"));

				n_reviews.add(n);
			}

			request.setAttribute("n_reviews", n_reviews);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public void n_getreview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			String sql = "select * from netflix_review where n_no = ?";
			pstmt = con.prepareStatement(sql);

			String n_no = request.getParameter("n_no");

			pstmt.setString(1, n_no);

			rs = pstmt.executeQuery();

			n_review n = null;

			if (rs.next()) {
				n = new n_review();

				n.setN_freetitle(rs.getString("n_freetitle"));
				n.setN_movietitle(rs.getString("n_movietitle"));
				n.setN_genre(rs.getString("n_genre"));
				n.setN_grade(rs.getString("n_grade"));
				n.setN_txt(rs.getString("n_txt"));
				n.setN_date(rs.getDate("n_date"));
				n.setN_writer(rs.getString("n_writer"));

				request.setAttribute("n_review", n);
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void n_reviewDelete(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			con = DBManager.connect();
			String sql = "delete from netflix_review where n_no = ? ";
			pstmt = con.prepareStatement(sql);
			int no = Integer.parseInt(request.getParameter("n_no"));
			pstmt.setInt(1, no);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_editReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();

			String sql = "update netflix_review set n_freetitle = ?, n_movietitle = ?, n_txt = ?, n_genre = ?, n_grade = ?, n_date = sysdate where n_no = ?";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, request.getParameter("n_reviewWFreeTitle"));
			pstmt.setString(2, request.getParameter("n_reviewWMovieTitle"));

			String n_reviewWTxt = request.getParameter("n_reviewWTxt");
			n_reviewWTxt = n_reviewWTxt.replace("\r\n", "<br>");
			pstmt.setString(3, n_reviewWTxt);

			pstmt.setString(4, request.getParameter("n_genreSelect"));
			pstmt.setString(5, request.getParameter("n_reviewWStar"));

			pstmt.setString(6, request.getParameter("n_no"));

			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	public void n_movieSearch(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			String sql = "select * from netflix_review where n_movietitle like '%'||?||'%' ";
			pstmt = con.prepareStatement(sql);
			String n_search = request.getParameter("n_search");
			pstmt.setString(1, n_search);
			rs = pstmt.executeQuery();

			n_reviews = new ArrayList<n_review>();
			n_review n = null;

			while (rs.next()) {
				n = new n_review();
				n.setN_no(rs.getInt("n_no"));
				n.setN_freetitle(rs.getString("n_freetitle"));
				n.setN_movietitle(rs.getString("n_movietitle"));
				n.setN_txt(rs.getString("n_txt"));
				n.setN_genre(rs.getString("n_genre"));
				n.setN_grade(rs.getString("n_grade"));
				n.setN_date(rs.getDate("n_date"));
				n.setN_writer(rs.getString("n_writer"));

				n_reviews.add(n);
			}

			request.setAttribute("n_reviews", n_reviews);


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public void n_reviewSearch(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			String n_search = request.getParameter("n_search");
			String n_Select = request.getParameter("n_Select");

			con = DBManager.connect();

			if (n_Select.equals("n_SAll")) {
				String sql = "select * from netflix_review where (n_freetitle || n_movietitle) like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_search);

				System.out.println(n_search);

			} else if (n_Select.equals("n_SMovieTitle")) {
				String sql = "select * from netflix_review where n_movietitle like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_search);

				System.out.println(n_search);

			} else if (n_Select.equals("n_SSearchFreeTitle")) {
				String sql = "select * from netflix_review where n_freetitle like '%'||?||'%'";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, n_search);

				System.out.println(n_search);
			}

			rs = pstmt.executeQuery();

			n_reviews = new ArrayList<n_review>();
			n_review n = null;

			while (rs.next()) {
				n = new n_review();
				n.setN_no(rs.getInt("n_no"));
				n.setN_freetitle(rs.getString("n_freetitle"));
				n.setN_movietitle(rs.getString("n_movietitle"));
				n.setN_txt(rs.getString("n_txt"));
				n.setN_genre(rs.getString("n_genre"));
				n.setN_grade(rs.getString("n_grade"));
				n.setN_date(rs.getDate("n_date"));

				n_reviews.add(n);
			}
			System.out.println(n_reviews.size());

			request.setAttribute("n_reviews", n_reviews);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	

	public void n_paging(int page, HttpServletRequest request) {

		request.setAttribute("curPageNo", page);

		int cnt = 5; 
		int total = n_reviews.size(); 
		int pageCount = (int) Math.ceil((double) total / cnt);
		request.setAttribute("pageCount", pageCount);

		int start = total - (cnt * (page - 1));
		int end = (page == pageCount) ? -1 : start - (cnt + 1);

		ArrayList<n_review> items = new ArrayList<n_review>();
		for (int i = start - 1; i > end; i--) {
			if(n_reviews.size()==0) {
				request.setAttribute("resultNone", "리뷰가 없습니다.");
			}else {
			items.add(n_reviews.get(i));
			}
		}
		
		request.setAttribute("n_reviews", items);

	}

}
