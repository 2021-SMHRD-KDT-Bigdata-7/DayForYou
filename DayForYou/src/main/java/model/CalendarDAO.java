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

	// DB ����
	
	public void connection() {
		try {
			// JDBC
			// 1. ���� �ε�
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. ���� ��ü ����
			String url = "jdbc:oracle:thin:@172.30.1.49:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";

			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// DB ���� ����
	
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
	
   // ��������	
	public int todo_Input(String todo_title, String todo_cate,String todo_sdate,String todo_edate,  
			 String m_id, String todo_allday) {
		connection();
		try {	

			// 3. sql�� �غ�
			String sql = "insert into tbl_todo values (TBL_TODO_SEQ.nextval,?, ?, ?, ? ,sysdate,?,?)";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			
			psmt.setString(1, todo_title);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, m_id);	
			psmt.setString(6, todo_allday);

			// 5. ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return cnt;
	}
	

	// ���� Ȯ��
	
	public ArrayList<CalendarVO> todo_select() {

		ArrayList<CalendarVO> todo = new ArrayList<CalendarVO>();
		
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "select * from tbl_todo";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			

			// 5. ����
			rs = psmt.executeQuery();

			if (rs.next() == true) {

				int u_todo_seq = rs.getInt(1);
				String u_todo_subject = rs.getString(2);
				String u_todo_cate = rs.getString(3);
				String u_todo_sdate = rs.getString(4);
				String u_todo_edate = rs.getString(5);
				String u_reg_date = rs.getString(6);
				String u_m_id = rs.getString(7);
				String u_todo_allday = rs.getString(8); //�Ϸ�����

				// select���� ����� ��� VO��ü�� �����
				cvo = new CalendarVO(u_todo_seq, u_todo_subject, u_todo_cate, 
									u_todo_sdate, u_todo_edate, 
									u_reg_date, u_m_id, u_todo_allday);

				todo.add(cvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return todo;

	}
	
	// ���� ����
	
	public int Todo_update(int todo_seq, String todo_title, String todo_cate,String todo_sdate,String todo_edate,  
			 String m_id, String todo_allday) {

		// try��
		// JDBC �ڵ�� ������ �´��� ������ �߻��ϴ� ����ó�� �ʿ�.
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "update tbl_todo set todo_title =? , todo_cate = ?, todo_sdate =?, todo_edate = ?, todo_allday = ? where todo_seq = ? and m_id = ?";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, todo_title);//seq x
			psmt.setString(2, todo_cate);
			psmt.setString(3, todo_sdate);
			psmt.setString(4, todo_edate);
			psmt.setString(5, todo_allday);
			psmt.setInt(6, todo_seq);	
			psmt.setString(7, m_id);	

			// 5. ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return cnt;
	}

	// ���� ����

	public int Todo_delete(int todo_seq) {
		
		try {

			connection();

			// 3. sql�� �غ�
			String sql = "delete from tbl_todo where todo_seq = ?";

			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setInt(1, todo_seq);

			// 5. ����
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. ���� �ݾ��ֱ�
			close();
		}
		return cnt;
	}

	

	}

