package com.dh.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import oracle.net.aso.r;

public class WatchaMainDAO {

private ArrayList<WatchaReview> reviews;
private ArrayList<WatchaBestScene> bestScenes;
	
	private static final WatchaMainDAO WMDAO = new WatchaMainDAO();
	
	private WatchaMainDAO() {
		
	}


	public static WatchaMainDAO getWmdao() {
		return WMDAO;
	}
	

	public void watchaReviewPaging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		// 전체 페이지 수 계산
		int cnt = 3; // 한 페이지당 보여줄 개수
		int total = reviews.size();	// 총 데이터 개수
		
		int pageCount = (int) Math.ceil(total/(double)cnt);
		request.setAttribute("pageCount", pageCount);
		
		int start = total - (cnt * (page-1));			
		int end = (page == pageCount) ? -1 : start - (cnt + 1); // 3은 cnt를 의미
		
		ArrayList<WatchaReview> wr = new ArrayList<WatchaReview>();
		for (int i = start-1; i > end; i--) {
			wr.add(reviews.get(i));
		}
		
		request.setAttribute("reviews", wr);
		
	}
	public void watchaBestScenePaging(int page, HttpServletRequest request) {
		
		request.setAttribute("curPageNo", page);
		// 전체 페이지 수 계산
		int cnt = 3; // 한 페이지당 보여줄 개수
		int total = bestScenes.size();	// 총 데이터 개수
		
		int pageCount = (int) Math.ceil(total/(double)cnt);
		request.setAttribute("pageCount", pageCount);
		
		int start = total - (cnt * (page-1));			
		int end = (page == pageCount) ? -1 : start - (cnt + 1); // 3은 cnt를 의미
		
		ArrayList<WatchaBestScene> wbs = new ArrayList<WatchaBestScene>();
		for (int i = start-1; i > end; i--) {
			wbs.add(bestScenes.get(i));
		}
		
		request.setAttribute("bestScenes", wbs);
		
	}
	
	public void reviewReg(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into WATCHA_REVIEW values (watcha_review_seq.nextval,?,?,?,?,?,?,sysdate)";
		// no reviewTitle movieTtile txt  genre score date
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("reviewTitle"));
			pstmt.setString(2, request.getParameter("movieTitle") );
			pstmt.setString(3, request.getParameter("writer") );
			pstmt.setString(4, request.getParameter("txt"));
			pstmt.setString(5, request.getParameter("genre"));
			pstmt.setString(6, request.getParameter("score") );
			if(pstmt.executeUpdate() == 1) {
                System.out.println("등록 성공");
                request.setAttribute("r", "등록 성공");
            }
            else {
                System.out.println("등록 실패");
                request.setAttribute("r", "등록 실패");
            }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	
	
	public void getAllReview(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from watcha_review order by w_date";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//no reviewTitle movieTtile txt  genre score date
			reviews = new ArrayList<WatchaReview>();
			
			WatchaReview r = null;
			
			while (rs.next()) {
				r = new WatchaReview();
				r.setNo(rs.getInt("w_no"));
				r.setMovieTitle(rs.getString("w_movietitle"));
				r.setReviewTitle(rs.getString("w_reviewtitle"));
				r.setTxt(rs.getString("w_txt"));
				r.setDate(rs.getDate("w_date"));
				r.setGenre(rs.getString("w_genre"));
				r.setScore(rs.getString("w_score"));
				r.setWriter(rs.getString("w_writer"));
				reviews.add(r);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void reviewDel(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete watcha_review where w_no = ?";
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String no = request.getParameter("no");
			pstmt.setString(1, no);
			// 세팅 완료
			
			if(pstmt.executeUpdate() ==1) {
				request.setAttribute("r", "삭제 성공!");
			}else {
				request.setAttribute("r", "삭제 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
	}
	public void searchReview(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from watcha_review where w_movieTitle like '%'||?||'%' order by w_date desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("search"));
			rs = pstmt.executeQuery();
			ArrayList<WatchaReview> WatchaReviews = new ArrayList<WatchaReview>();
			WatchaReview wr = null;
			while (rs.next()) {
				//객체 Bean 필요.
				wr = new WatchaReview();
				wr.setNo(rs.getInt("w_no"));
				wr.setMovieTitle(rs.getString("w_movieTitle"));
				wr.setTxt(rs.getString("w_txt"));
				wr.setDate(rs.getDate("w_date"));
				wr.setGenre(rs.getString("w_genre"));
				wr.setScore(rs.getString("w_score"));
				wr.setReviewTitle(rs.getString("w_reviewTitle"));
				wr.setWriter(rs.getString("w_writer"));
				WatchaReviews.add(wr);
				
			}
			request.setAttribute("WatchaReviews", WatchaReviews);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	public void updateReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update watcha_review set w_txt=?"
				+ ",w_reviewTitle = ?, w_movieTitle = ?,"
				+ " w_genre = ?, w_score = ?,w_writer=? where w_no = ?";
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String txt = request.getParameter("txt");
			String reviewTitle = request.getParameter("reviewTitle");
			String movieTitle = request.getParameter("movieTitle");
			String no = request.getParameter("no");
			String writer = request.getParameter("writer");
			String genre = request.getParameter("genre");
			String score = request.getParameter("score");
			
			pstmt.setString(1, txt);
			pstmt.setString(2, reviewTitle);
			pstmt.setString(3, movieTitle);
			pstmt.setString(4, genre);
			pstmt.setString(5, score);
			pstmt.setString(6, writer);
			pstmt.setString(7, no);
			
			if(pstmt.executeUpdate() ==1) {
				request.setAttribute("r", "수정 성공!");
			}else {
				request.setAttribute("r", "수정 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 문제..");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	public void getReview(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from watcha_review where w_no=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			
			rs = pstmt.executeQuery();
			
			WatchaReview r = null;
			
			if (rs.next()) {
				r = new WatchaReview();
				r.setNo(rs.getInt("w_no"));
				r.setMovieTitle(rs.getString("w_movietitle"));
				r.setReviewTitle(rs.getString("w_reviewtitle"));
				r.setTxt(rs.getString("w_txt"));
				r.setDate(rs.getDate("w_date"));
				r.setGenre(rs.getString("w_genre"));
				r.setScore(rs.getString("w_score"));
				r.setWriter(rs.getString("w_writer"));
				request.setAttribute("review", r);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void bestSceneReg(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into watcha_bestScene values "
				+ "(watcha_bestScene_seq.nextval,?,?,?,?,?,?,sysdate)";
		// no bestSceneTitle genre movieTitle txt img date
		try {
		//	request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			String saveDirectory = request.getServletContext().getRealPath("image");
			System.out.println(saveDirectory);
			
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8", 
					new DefaultFileRenamePolicy());
			
			String genre = mr.getParameter("genre");
			String bestSceneTitle = mr.getParameter("bestSceneTitle");
			String txt = mr.getParameter("txt");
			String movieTitle = mr.getParameter("movieTitle");
			String writer = mr.getParameter("writer");
			String fName = mr.getFilesystemName("file");
			System.out.println(genre);
			System.out.println(bestSceneTitle);
			System.out.println(txt);
			System.out.println(writer);
			System.out.println(fName);
			System.out.println(movieTitle);
			
			// 값을 잘 받고 나면 그걸 아래 물음표 채울때 쓰면 됨.
			
			pstmt.setString(1, bestSceneTitle);
			pstmt.setString(2, genre);
			pstmt.setString(3, writer);
			pstmt.setString(4, movieTitle);
			pstmt.setString(5, txt);
			pstmt.setString(6, fName);
		
			if(pstmt.executeUpdate() ==1) {
				request.setAttribute("r", "등록 성공! ^^");
			} else {
				request.setAttribute("r", "등록 실패!!!!");
			}
		
		
		}
		
		 catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, null);
		}
	}
	public void getBestScene(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from watcha_bestScene where bs_no=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("no"));
			
			rs = pstmt.executeQuery();
			
			WatchaBestScene bs = null;
			
			if (rs.next()) {
				bs = new WatchaBestScene();
				bs.setNo(rs.getInt("bs_no"));
				bs.setBestSceneTitle(rs.getString("bs_bestSceneTitle"));
				bs.setMovieTitle(rs.getString("bs_movieTitle"));
				bs.setTxt(rs.getString("bs_txt"));
				bs.setDate(rs.getDate("bs_date"));
				bs.setWriter(rs.getString("bs_writer"));
				bs.setGenre(rs.getString("bs_genre"));
				
				request.setAttribute("bs", bs);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	public void getAllBestScene(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from watcha_bestScene order by bs_date";
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//no reviewTitle movieTtile txt  genre score date
			bestScenes = new ArrayList<WatchaBestScene>();
			
			WatchaBestScene bs = null;
			
			while (rs.next()) {
				bs = new WatchaBestScene();
				bs.setNo(rs.getInt("bs_no"));
				bs.setBestSceneTitle(rs.getString("bs_bestSceneTitle"));
				bs.setMovieTitle(rs.getString("bs_movieTitle"));
				bs.setTxt(rs.getString("bs_txt"));
				bs.setDate(rs.getDate("bs_date"));
				bs.setImg(rs.getString("bs_img"));
				bs.setGenre(rs.getString("bs_genre"));
				bs.setWriter(rs.getString("bs_writer"));
				bestScenes.add(bs);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	public void bestSceneDel(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "delete watcha_bestScene where bs_no = ?";
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			
			String no = request.getParameter("no");
			pstmt.setString(1, no);
			// 세팅 완료
			
			if(pstmt.executeUpdate() ==1) {
				request.setAttribute("r", "삭제 성공!");
			}else {
				request.setAttribute("r", "삭제 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(con, pstmt, null);
		}
	}
	
	public void bestSceneUpdate(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = "update watcha_bestScene set bs_txt=?"
				+ ",bs_bestSceneTitle = ?, bs_movieTitle = ?,"
				+ " bs_genre = ?, bs_img=?, bs_writer=? where bs_no = ?";
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			String saveDirectory = request.getServletContext().getRealPath("image");
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "utf-8", 
					new DefaultFileRenamePolicy());
			
			String genre = mr.getParameter("genre");
			String bestSceneTitle = mr.getParameter("bestSceneTitle");
			String txt = mr.getParameter("txt");
			String movieTitle = mr.getParameter("movieTitle");
			String writer = mr.getParameter("writer");
			String fName = mr.getFilesystemName("file");
			String no = mr.getParameter("no");
			System.out.println(genre);
			System.out.println(bestSceneTitle);
			System.out.println(txt);
			System.out.println(fName);
			System.out.println(movieTitle);
			System.out.println(no);
			
			// 값을 잘 받고 나면 그걸 아래 물음표 채울때 쓰면 됨.
			
			pstmt.setString(1, txt);
			pstmt.setString(2, bestSceneTitle);
			pstmt.setString(3, movieTitle);
			pstmt.setString(4, genre);
			pstmt.setString(5, fName);
			pstmt.setString(6, writer);
			pstmt.setString(7, no);
		
			if(pstmt.executeUpdate() ==1) {
				request.setAttribute("r", "수정 성공!");
			}else {
				request.setAttribute("r", "수정 실패!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB 서버 문제..");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	public void bestSceneSearch(HttpServletRequest request) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			String sql = "select * from watcha_bestScene where bs_movieTitle like '%'||?||'%' order by bs_date";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("bestSceneSearch"));
			rs = pstmt.executeQuery();
			bestScenes = new ArrayList<WatchaBestScene>();
			WatchaBestScene wbs = null;
			while (rs.next()) {
				//객체 Bean 필요.
				wbs = new WatchaBestScene();
				wbs.setNo(rs.getInt("bs_no"));
				wbs.setBestSceneTitle(rs.getString("bs_bestSceneTitle"));
				wbs.setMovieTitle(rs.getString("bs_movieTitle"));
				wbs.setTxt(rs.getString("bs_txt"));
				wbs.setDate(rs.getDate("bs_date"));
				wbs.setImg(rs.getString("bs_img"));
				wbs.setGenre(rs.getString("bs_genre"));
				wbs.setWriter(rs.getString("bs_writer"));
				bestScenes.add(wbs);
				
			}
			request.setAttribute("bestScenes", bestScenes);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}
	public static void fareCalc(HttpServletRequest request) {
		// TODO Auto-generated method stub
		String fareType = request.getParameter("fareType");
		int popu = Integer.parseInt(request.getParameter("popu"));  
		int result = 0;
		if(fareType.equals("일반")) {
			result = 7900 * popu;
		}else {
			result = 12900 * popu;
		}
		request.setAttribute("r", result);
		request.setAttribute("p", popu);
		request.setAttribute("f", fareType);
		System.out.println(result);
		System.out.println(popu);
		System.out.println(fareType);
		
	}



	public static void getRecomDetail(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from watcha_recom where rc_movieTitle=?";
		
		try {
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("movieTitle"));
			
			rs = pstmt.executeQuery();
			
			WatchaRecom rc = null;
			
			if (rs.next()) {
				rc = new WatchaRecom();
				rc.setNo(rs.getInt("rc_no"));
				rc.setMovieTitle(rs.getString("rc_movieTitle"));
				rc.setGenre(rs.getString("rc_genre"));
				rc.setImg(rs.getString("rc_img"));
				request.setAttribute("recom", rc);
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}finally {
			DBManager.close(con, pstmt, rs);
		}
		
	}

}








