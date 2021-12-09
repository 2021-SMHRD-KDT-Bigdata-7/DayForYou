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
//=============================로그인==============================
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
//==================================회원가입=============================
	public int Join(String id, String pw, String name, String nick, String phone, String email, String birthday,
			String gender, String job, String address) {

		connection();
		
		try {
		
			// 3.sql문 준비
			String sql = "insert into tbl_member values(?,?,?,?,?,?,?,?,?,?,sysdate,0,'N')";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			psmt.setString(4, nick);
			psmt.setString(5, phone);
			psmt.setString(6, email);
			psmt.setString(7, birthday);
			psmt.setString(8, gender);
			psmt.setString(9, job);
			psmt.setString(10, address);

			// 5. 실행!
			// select ->executeQury()-->return Resultset
			// insert,delete, update ->esecutUpdate()
			// ->return int(몇 행이 성공했는지

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6.연결닫아주기
			close();
		}

		return cnt;
	}
	
	//----------
	/*
	 * 챌린지 게시판을 출력하는 메소드
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
						rs.getString(6), rs.getString(7), rs.getInt(8),
						rs.getInt(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13),
						rs.getString(14), rs.getInt(15), rs.getString(16),
						rs.getString(17));
				
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
	 * 챌린지 게시판을 카테고리 별로 출력하는 메소드
	 * 
	 * @param cat
	 * 		  챌린지 큰 그룹을 분류하기 위한 카테고리
	 * 		  ex) 전체, 그룹, 개인, 추천, 인기... 등  
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
						rs.getString(6), rs.getString(7), rs.getInt(8),
						rs.getInt(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13),
						rs.getString(14), rs.getInt(15), rs.getString(16),
						rs.getString(17));
								
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



	public int ChallInsert(String chall_cat1, String chall_subject, String chall_cat2, String chall_Introduce,
			String chall_pic1, String chall_start, String chall_period, String chall_Private, String chall_pic12,
			String chall_pic2, String chall_pic3) {
		try {

			// JDBD
			// 1.동적로딩 (클래스를 사용하겠따!!)
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2.연결 객체 생성
			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			// 3.sql문 준비
			String sql = "insert into tbl_challenge(chal_cat1,chal_cat2,chal_subject,chal_content,chal_start,chal_period,chal_pic1,chal_pic2,chal_pic3,reg_date,m_id,chal_cnt) values(?,?,?,?,?,?,?,?,?,sysdate,'m_id 1',0)";
			
			psmt = conn.prepareStatement(sql);
			
//			chal_seq
//			chal_cat1 1
//			chal_cat2 2 
//			chal_subject 3 
//			chal_content 4
//			chal_Start
//			chal_period
//			chal_pic1
//			chal_pic2
//			chal_pic3
//			reg_date
//			m_id
//			chal_cnt 참여인원
//			공식 비공식
			
			
			// 4.바인드 변수 채우기
			psmt.setString(1, chall_cat1);
			psmt.setString(2, chall_cat2);
			psmt.setString(3, chall_subject);
			psmt.setString(4, chall_Introduce);
			psmt.setString(5, chall_start);
			psmt.setString(6, chall_period);
			psmt.setString(7, chall_pic1);
			psmt.setString(8, chall_pic2);
			psmt.setString(9, chall_pic3);

			// 5.실행
			// select-> excuteQuery()--> return ResultSet
			// insert,delete,update --> executeUpdate()--->return int(몇 행이 성공했는지)

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
			}
		}
		return cnt;
	}

}
