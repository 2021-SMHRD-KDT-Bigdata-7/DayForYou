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

	//=============================로그인==============================
		public MemberVo login(String id, String pw) {
			connection();
			try {

				sql = "select * from tbl_member where m_id=? and m_pwd=?";

				psmt = conn.prepareStatement(sql);

				psmt.setString(1, id);
				psmt.setString(2, pw);

				rs = psmt.executeQuery();

				if (rs.next()) {
					String uid = rs.getString(1);
					String upw = rs.getString(2);
					String uname = rs.getString(3);
					String unick = rs.getString(4);
					String uphon = rs.getString(5);
					String uemail = rs.getString(6);
					String ubirthday = rs.getString(7);
					String ugender = rs.getString(8);
					String ujob = rs.getString(9);
					String uaddress = rs.getString(10);
					String ujoinday = rs.getString(11);
					int upoint = rs.getInt(12);
					String uadminYn = rs.getString(13);
					
					vo = new MemberVo(uid, upw, uname, unick, uphon, uemail,ubirthday,ugender, ujob, uaddress,ujoinday,upoint,uadminYn);

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
				sql = "insert into tbl_member values(?,?,?,?,?,?,?,?,?,?,sysdate,0,'N')";

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
			String chall_pic2, String chall_pic3, String chall_pw) {
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
			String sql = "insert into tbl_challenge(chal_cat1,chal_cat2,chal_subject,chal_content,chal_start,chal_period,chal_pic1,chal_pic2,chal_pic3,reg_date,m_id,chal_cnt,chal_public,chal_pw) values(?,?,?,?,?,?,?,?,?,sysdate,?,0,?,?)";
			
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
			psmt.setString(10, "a");
			psmt.setString(11, chall_Private);
			psmt.setString(12, chall_pw);

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
	public int diarylist(String diary_subject, String diary_date, String diary_content, String diary_file1,
			String diary_file2, String m_id) {

		connection();

		try {

			// 3.sql문 준비
			sql = "insert into tbl_diary values(TBL_DIARY_SEQ.nextval,?,?,?,?,?,?,sysdate)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, diary_subject);
			psmt.setString(2, diary_date);
			psmt.setString(3, diary_content);
			psmt.setString(4, diary_file1);
			psmt.setString(5, diary_file2);
			psmt.setString(6, m_id);

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

	public ArrayList<diaryVO> SelectDiary(String now_m_id) {

		connection();

// 결과를 담아줄 ArrayList
		ArrayList<diaryVO> dlist = new ArrayList<diaryVO>();

// try문
		try {

			String sql = "select * from tbl_diary where m_id = ? order by diary_seq desc";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, now_m_id);

			rs = psmt.executeQuery();

// 모든 회원정보를 가져옴 > 몇 번 반복해야 될지 모름
			while (rs.next() == true) {
				
				int diary_seq = rs.getInt(1);
				String diary_subject = rs.getString(2);
				String diary_date = rs.getString(3);
				String diary_content = rs.getString(4);
				String diary_file1 = rs.getString(5);
				String diary_file2 = rs.getString(6);
				String m_id = rs.getString(7);
				String reg_date = rs.getString(8);
				

				// select 문의 결과를 묶어서 vo객체로 만들기
				dvo = new diaryVO(diary_seq, diary_subject, diary_date, diary_content, diary_file1, diary_file2, m_id,
						reg_date);
				dlist.add(dvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결을 닫아주기
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
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return dlist;
	}

	public diaryVO DiaryJoin(int diary_seq) {

		connection();
		diaryVO dvo = null;

		try {
			String sql = "select * from tbl_diary where diary_seq = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, diary_seq);
			rs = psmt.executeQuery();

			if (rs.next() == true) {

				int diary_seq_1 = diary_seq;
				String diary_subject = rs.getString(2);
				String diary_date = rs.getString(3);
				String diary_content = rs.getString(4);
				String diary_file1 = rs.getString(5);
				String diary_file2 = rs.getString(6);
				String m_id = rs.getString(7);
				String reg_date = rs.getString(8);

				dvo = new diaryVO(diary_seq_1, diary_subject, diary_date, diary_content, diary_file1, diary_file2, m_id,
						reg_date);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dvo;
	}

	public challengeBoardVO ChallengeSingleService(int chal_seq) {
		challengeBoardVO zvo = null;
		connection();

		try {
			sql = "select * from tbl_challenge where chal_seq = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, chal_seq);
			rs = psmt.executeQuery();

			if (rs.next()) {
				System.out.println("들어오닝~");
				int chal_seq1 = rs.getInt(1);
				String chal_cat1 = rs.getString(2);
				String chal_cat2 = rs.getString(3);
				String chal_subject = rs.getString(4);
				 String chal_content= rs.getString(5);
				 String chal_start =rs.getString(6);
				 String chal_period =rs.getString(7);
				int chal_time=rs.getInt(8);
				int chal_point = rs.getInt(9);
				String chal_pic1 =rs.getString(10);
				String chal_pic2 = rs.getString(11);
				String chal_pic3 =rs.getString(12);
				String reg_date= rs.getString(13); //Date 자료형
				String m_id=rs.getString(14);
				int chal_cnt=rs.getInt(15);
				String chal_pw = rs.getString(16);
				String chal_public = rs.getString(17);
				zvo = new challengeBoardVO(chal_seq1, chal_cat1, chal_cat2, chal_subject, chal_content, chal_start, chal_period,chal_time,chal_point,chal_pic1, chal_pic2, chal_pic3,
						reg_date, m_id, chal_cnt, chal_pw, chal_public);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		System.out.println(zvo);
		return zvo;
	}

}


