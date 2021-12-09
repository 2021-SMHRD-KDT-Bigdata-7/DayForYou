package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAO {

	String sql = "";
	int cnt = 0;
	
	Connection conn = null;
	PreparedStatement psmt = null;
	MemberVo vo = null;
	ResultSet rs = null;
	
	ArrayList<challengeBoardVO> ch_boards = null;
	challengeBoardVO cbv = null;
	
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

	public MemberVo login(String id, String pw) {
		connection();
		try {

			sql = "select * from tbl_member where id=? and pw=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
				String uid = rs.getString("id");
				String upw = rs.getString("pw");
				String uname = rs.getString("name");
				String unick = rs.getString("nick");
				String uphon = rs.getString("phon");
				String uemail = rs.getString("email");
				String ugender = rs.getString("gender");
				String ujob = rs.getString("job");
				String uadress = rs.getString("adress");
				String ubirthday = rs.getString("birthday");

				vo = new MemberVo(uid, upw, uname, unick, uphon, uemail, ugender, ujob, uadress, ubirthday);

			}
		} catch (Exception e) {

		} finally {
			close();

		}

		return vo;
	}

	public int Join(String id, String pw, String name, String nick, String phone, String email, String birthdate,
			String gender, String job, String address) {

		connection();
		
		try {
		
			// 3.sql�� �غ�
			String sql = "insert into tbl_member values(?,?,?,?,?,?,?,?,?,?,sysdate,0,N)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			psmt.setString(4, nick);
			psmt.setString(5, phone);
			psmt.setString(6, email);
			psmt.setString(7, birthdate);
			psmt.setString(8, gender);
			psmt.setString(9, job);
			psmt.setString(10, address);

			// 5. ����!
			// select ->executeQury()-->return Resultset
			// insert,delete, update ->esecutUpdate()
			// ->return int(�� ���� �����ߴ���

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6.����ݾ��ֱ�
			close();
		}

		return 0;
	}
	
	//----------
	/*
	 * ç���� �Խ����� ����ϴ� �޼ҵ�
	 */
	public ArrayList<challengeBoardVO> SelectChallengeBoard(){
		
		ch_boards = new ArrayList<>(); 
		
		connection();
		
		try {
			sql = "select * from tbl_challenge";
			
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {				
				
				cbv = new challengeBoardVO(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getString(12),
						rs.getString(13), rs.getInt(14), rs.getString(15),
						rs.getString(16));
				
				ch_boards.add(cbv);				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return ch_boards;
	}
	
	/**
	 * ç���� �Խ����� ī�װ� ���� ����ϴ� �޼ҵ�
	 * 
	 * @param cat
	 * 		  ç���� ū �׷��� �з��ϱ� ���� ī�װ�
	 * 		  ex) ��ü, �׷�, ����, ��õ, �α�... ��  
	 */
	
	public ArrayList<challengeBoardVO> SelectChallengeBoard_cat(String cat){
		
		ch_boards = new ArrayList<>(); 
		
		connection();
		
		try {
			sql = "select * from tbl_challenge where chal_cat1 = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cat);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {				
				
				cbv = new challengeBoardVO(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getString(12),
						rs.getString(13), rs.getInt(14), rs.getString(15),
						rs.getString(16));
								
				ch_boards.add(cbv);				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
		return ch_boards;
	}

}
