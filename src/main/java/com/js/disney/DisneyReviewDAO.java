package com.js.disney;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.jh.login.Account;
import com.jh.login.AccountDAO;
import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DisneyReviewDAO {
	
	private ArrayList<DisneyReview> reviews;
	
	private static final DisneyReviewDAO DRDAO = new DisneyReviewDAO();
	
	private DisneyReviewDAO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public static DisneyReviewDAO getDrdao() {
		return DRDAO;
	}




	public void paging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		
		// 전체 페이지 수 계산
				int cnt = 10; // 한 페이지 당 보여줄 데이터 수
				int total = reviews.size(); // 전체 데이터 개수
				
				
				if (total != 0) {
					
				int pageCount = (int) Math.ceil((double)total / cnt);
				request.setAttribute("pageCount", pageCount);
				
				int start =  (page - 1) * cnt + 1;
				int end = (page == pageCount) ? total : start + cnt - 1;
				
//				// 페이지 블록 - jsp에 식
				int totalBlcok = pageCount / 10;
				int curBlock = (page - 1) / 10 + 1;
				int startBlcok = (curBlock - 1) * 10 + 1;
				int endBlcok = startBlcok + 10 - 1;
				
					request.setAttribute("curBlock", curBlock);
					request.setAttribute("startBlcok", startBlcok);
					request.setAttribute("endBlcok", endBlcok);
//		
				ArrayList<DisneyReview> items = new ArrayList<DisneyReview>();
				
				// 배열은 0부터 시작. 0을 시작으로 맞춤.
				for (int i = start - 1; i < end; i++) {
					
//					System.out.println(movies.get(i));
//					System.out.println(i);
					
					items.add(reviews.get(i));
					
				}
				
					request.setAttribute("reviews", items);

				
				}
				
				
	}
	


	public void regReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into disney_review values (disney_review_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate)";
		
		HttpSession hs = request.getSession();
		Account a = (Account) hs.getAttribute("accountInfo");
		
		try {
			request.setCharacterEncoding("utf-8");
			
		con = DBManager.connect();
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("m_title"));
		pstmt.setString(3, request.getParameter("text"));
		pstmt.setString(4, a.getId());
		pstmt.setString(5, request.getParameter("genre"));
		pstmt.setString(6, request.getParameter("score"));
		
		
		
		if (pstmt.executeUpdate() == 1) {
			System.out.println("등록 성공");
			request.setAttribute("r", "등록 성공");
		} else {
			System.out.println("등록 실패");
			request.setAttribute("r", "등록 실패");
		}
		
		
		
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 문제");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	

	public void showReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from disney_review order by d_date desc";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			reviews = new ArrayList<DisneyReview>();
			DisneyReview r = null;
			
			while (rs.next()) {
				r = new DisneyReview();
				r.setNo(rs.getInt("d_no"));
				r.setGenre(rs.getString("d_genre"));
				r.setTitle(rs.getString("d_title"));
				r.setWriter(rs.getString("d_writer"));
				r.setDate(rs.getDate("d_date"));
				
				r.setScore(rs.getString("d_score"));

//				if (r.getScore().equals("5")) {
//					r.setScore("★★★★★");
//				} else if (r.getScore().equals("4")) {
//					r.setScore("★★★★☆");
//				} else if (r.getScore().equals("3")) {
//					r.setScore("★★★☆☆");
//				} else if (r.getScore().equals("2")) {
//					r.setScore("★★☆☆☆");
//				} else  {
//					r.setScore("★☆☆☆☆");
//				}
				
				
				reviews.add(r);
			}
			
				request.setAttribute("reviews", reviews);
			
				
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

	

	public void getReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from disney_review where d_no = ?";
		
		try {
		
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("no"));
			
			rs = pstmt.executeQuery();
			
			DisneyReview review = null;
			
			if (rs.next()) {
				review = new DisneyReview();
				review.setNo(rs.getInt("d_no"));
				review.setTitle(rs.getString("d_title"));
				review.setMovie_title(rs.getString("d_movietitle"));
				review.setScore(rs.getString("d_score"));
				review.setDate(rs.getDate("d_date"));
				review.setWriter(rs.getString("d_writer"));
				review.setText(rs.getString("d_text"));
				
				if (review.getScore().equals("5")) {
					review.setScore("★★★★★");
				} else if (review.getScore().equals("4")) {
					review.setScore("★★★★☆");
				} else if (review.getScore().equals("3")) {
					review.setScore("★★★☆☆");
				} else if (review.getScore().equals("2")) {
					review.setScore("★★☆☆☆");
				} else  {
					review.setScore("★☆☆☆☆");
				}
				
				
				request.setAttribute("review", review);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			DBManager.close(con, pstmt, rs);
			
		}
		
		
	}


	public void deleteReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete disney_review where d_no = ?";
		
		try {
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("no"));
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 에러");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}


	public void updateReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		 
		String sql = "update disney_review set d_title = ?, d_score = ?, d_text = ?, d_movietitle = ?, d_date = sysdate where d_no = ?";
		
		try {
			
			request.setCharacterEncoding("UTF-8");
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("score"));
			pstmt.setString(3, request.getParameter("text"));
			pstmt.setString(4, request.getParameter("m_title"));
			pstmt.setString(5, request.getParameter("no"));
			
			if (pstmt.executeUpdate() == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
		
		
	}


	public void searchReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = null;
		
		String genre =  request.getParameter("genre");
		String search = request.getParameter("search");
		
		try {
			
			con = DBManager.connect();
			
			
			if (genre.equals("all")) {
			
				sql = "select * from disney_review where (d_genre = '영화' or d_genre = '시리즈' or d_genre = '애니메이션') and d_title like '%'||?||'%' order by d_date desc"; 
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, search);
	
			} else {
				sql = "select * from disney_review where d_genre = ? and d_title like '%'||?||'%' order by d_date desc";  
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, genre);
				pstmt.setString(2, search);
			}
			
			
			rs = pstmt.executeQuery();
			
			reviews = new ArrayList<DisneyReview>();
			DisneyReview r = null;
			
			while (rs.next()) {
				r = new DisneyReview();
				r.setNo(rs.getInt("d_no"));
				r.setGenre(rs.getString("d_genre"));
				r.setTitle(rs.getString("d_title"));
				r.setScore(rs.getString("d_score"));
				r.setWriter(rs.getString("d_writer"));
				r.setDate(rs.getDate("d_date"));
				
				reviews.add(r);
			}
			
				request.setAttribute("reviews", reviews);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	


	





	
	
	
	
	
	
	

}
