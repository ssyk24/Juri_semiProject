package com.jy.netflix;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.jh.login.DBManager;

public class n_recommendDAO {

	public static void allMovie(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			String sql = "select * from netflix_movie";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ArrayList<n_recommend> n_recommends = new ArrayList<n_recommend>();
			n_recommend n = null;

			while (rs.next()) {
				n = new n_recommend();
				n.setN_b_no(rs.getInt("n_b_no"));
				n.setN_b_title(rs.getString("n_b_title"));
				n.setN_b_actor(rs.getString("n_b_actor"));
				n.setN_b_story(rs.getString("n_b_story"));
				n.setN_b_genre(rs.getString("n_b_genre"));
				n.setN_b_rank(rs.getString("n_b_rank"));
				n_recommends.add(n);
			}
			request.setAttribute("n_recommends", n_recommends);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB서버 문제");
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	public static void getMovie(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();
			String sql = "select * from netflix_movie where n_b_no = ?";
			pstmt = con.prepareStatement(sql);
			String n_b_no = request.getParameter("n_b_no");
			pstmt.setString(1, n_b_no);

			rs = pstmt.executeQuery();

			n_recommend n = null;
			String n_b_preview = null;

			if (n_b_no.equals("1")) { //1 고요의 바다
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/23968867?autoPlay=true'frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("2")) { //2 돈 룩 업
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/23571953?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("3")) { //3 모가디슈
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/20883644?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			}else if (n_b_no.equals("4")) { //4 위쳐
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/23272081?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("5")) { //5 브리저튼
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/17329314?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("6")) { //6 그 해 우리는
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/23907745?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("7")) { //7 에밀리, 파리에 가다
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/23612168?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("8")) { //8 원헌드레드
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/5911302?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("9")) { //9 스파이더맨: 홈커밍
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/1588902?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("10")) { //10 킹덤: 아신전
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/21160650?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("11")) { //11 싱크홀
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/21404771?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("12")) { //12 너의 이름은
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/1285615?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("13")) { //13 크리스마스 연대기
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/4423798?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("14")) { //14 하울의 움직이는 성
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/5275052?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("15")) { //15 가디언즈
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://www.youtube.com/embed/Q45m34nKQ_A' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else if (n_b_no.equals("16")) { //16 드래곤 길들이기
				n_b_preview = "<iframe id='n_recomDetailPreview' src='https://tv.naver.com/embed/19723702?autoPlay=true' frameborder='no' scrolling='no' allow='autoplay' allowfullscreen></iframe>";
			} else {
				n_b_preview = "동영상이 없습니다.";
			}

			if (rs.next()) {
				n = new n_recommend();

				n.setN_b_no(rs.getInt("n_b_no"));
				n.setN_b_title(rs.getString("n_b_title"));
				n.setN_b_actor(rs.getString("n_b_actor"));
				n.setN_b_story(rs.getString("n_b_story"));
				n.setN_b_genre(rs.getString("n_b_genre"));
				n.setN_b_rank(rs.getString("n_b_rank"));

				n.setN_b_preview(n_b_preview);

				/* System.out.println(n_b_preview); */

				request.setAttribute("n_movie", n);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
	
	
	
	
	
	


}
