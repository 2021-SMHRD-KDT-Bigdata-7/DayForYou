package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DiaryDAO {
	
	
	String sql = "";
	int cnt = 0;

	Connection conn = null;
	PreparedStatement psmt = null;
	MemberVo vo = null;
	ResultSet rs = null;
	diaryVO dvo = null;
	
	
	public void connection() {
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "cgi_2_2_1215";
			String dbpw = "smhrd2";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	


	public int diaryDelete(int diary_seq) {
		
		connection();
		
		try {
			sql = "DELETE FROM tbl_diary WHERE diary_seq=?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, diary_seq);
		
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	
}
