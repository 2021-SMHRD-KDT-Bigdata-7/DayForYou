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
	
	public int mupdate(String m_id, String m_pwd, String m_name, String m_nick, String m_phone, String m_email, String m_birthdate,
			String m_gender, String m_job, String m_addr) {
		
		connection();
		
		try {

			sql = "update tbl_member set m_pwd=?, m_name=?, m_nick=?, m_phone=?, m_email=?, m_birthdate=?, m_gender=?, m_job=?, m_addr=? where m_id=?";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, m_pwd);
			psmt.setString(2, m_name);
			psmt.setString(3, m_nick);
			psmt.setString(4, m_phone);
			psmt.setString(5, m_email);
			psmt.setString(6, m_birthdate);
			psmt.setString(7, m_gender);
			psmt.setString(8, m_job);
			psmt.setString(9, m_addr);
			psmt.setString(10, m_id);
			
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
