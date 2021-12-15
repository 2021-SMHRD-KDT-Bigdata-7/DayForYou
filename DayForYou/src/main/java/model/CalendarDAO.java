package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CalendarDAO {
	
	CalendarVO cvo = null;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	// DB 연결
	
	public void connection() {
		try {
			// JDBC
			// 1. 동적 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 연결 객체 생성
			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// DB 연결 해제
	
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

		} catch (Exception e2) {

		}
		
	}
	
   // 일정삽입	
	public int todo_Input(String todo_title, String todo_cate,String todo_sdate,String todo_edate,  
			 String m_id, String todo_allday) {
		connection();
		try {	

			// 3. sql문 준비
			String sql = "insert into tbl_todo values (TBL_TODO_SEQ.nextval,?, ?, ?, ? ,sysdate,?,?)";

			psmt = conn.prepareStatement(sql);

			// 4. 바인드 변수 채우기
			
			psmt.setString(1, todo_title);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, m_id);	
			psmt.setString(6, todo_allday);

			// 5. 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결 닫아주기
			close();
		}
		return cnt;
	}
	

	// 일정 확인
	
	public ArrayList<CalendarVO> todo_select() {

		ArrayList<CalendarVO> todo = new ArrayList<CalendarVO>();
		
		try {

			connection();

			// 3. sql문 준비
			String sql = "select * from tbl_todo";

			psmt = conn.prepareStatement(sql);

			// 4. 바인드 변수 채우기
			

			// 5. 실행
			rs = psmt.executeQuery();

			if (rs.next() == true) {

				int u_todo_seq = rs.getInt(1);
				String u_todo_subject = rs.getString(2);
				String u_todo_cate = rs.getString(3);
				String u_todo_sdate = rs.getString(4);
				String u_todo_edate = rs.getString(5);
				String u_reg_date = rs.getString(6);
				String u_m_id = rs.getString(7);
				String u_todo_allday = rs.getString(8); //하루종일

				// select문의 결과를 묶어서 VO객체로 만들기
				cvo = new CalendarVO(u_todo_seq, u_todo_subject, u_todo_cate, 
									u_todo_sdate, u_todo_edate, 
									u_reg_date, u_m_id, u_todo_allday);

				todo.add(cvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결 닫아주기
			close();
		}
		return todo;

	}
	
	// 일정 수정
	
	public int Todo_update(int todo_seq, String todo_title, String todo_cate,String todo_sdate,String todo_edate,  
			 String m_id, String todo_allday) {

		// try문
		// JDBC 코드는 문법이 맞더라도 실행중 발생하는 오류처리 필요.
		try {

			connection();

			// 3. sql문 준비
			String sql = "update tbl_todo set todo_title =? , todo_cate = ?, todo_sdate =?, todo_edate = ?, todo_allday = ? where todo_seq = ? and m_id = ?";

			psmt = conn.prepareStatement(sql);

			// 4. 바인드 변수 채우기
			psmt.setString(1, todo_title);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, todo_allday);
			psmt.setInt(6, todo_seq);	
			psmt.setString(7, m_id);	

			// 5. 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결 닫아주기
			close();
		}
		return cnt;
	}

	// 일정 삭제

	public int Todo_delete(int todo_seq) {
		
		try {

			connection();

			// 3. sql문 준비
			String sql = "delete from tbl_todo where todo_seq = ?";

			psmt = conn.prepareStatement(sql);

			// 4. 바인드 변수 채우기
			psmt.setInt(1, todo_seq);

			// 5. 실행
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. 연결 닫아주기
			close();
		}
		return cnt;
	}

	

	}

