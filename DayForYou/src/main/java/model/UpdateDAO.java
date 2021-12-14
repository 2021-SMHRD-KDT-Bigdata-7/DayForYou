package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class UpdateDAO {
	
	String sql = "";
	int cnt = 0;
	
	Connection conn = null;
	PreparedStatement psmt = null;
	MemberVo vo = null;
	ResultSet rs = null;
	
	ArrayList<challengeBoardVO> ch_boards = null;
	challengeBoardVO cbv = null;
	diaryVO dvo = null;
	
	public void connection() {
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		}
			catch(Exception e) {
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
	
	public int mupdate(String id, int point) {
		connection();
		try {

			sql = "update tbl_member set where m_id=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setInt(2, point);
			
			
		

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			
			try {
				if(psmt !=null) {
					psmt.close();
				}
				if(conn !=null) {
					conn.close();
				}

			} catch (Exception e2) {
				
			}
		}
		 
	return cnt ;


		}

}
