package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class DAO {
	
	int cnt=0;
	Connection conn =null;
	PreparedStatement psmt=null;
	MemberVo vo = null;
	ResultSet rs = null;
	
	public MemberVo login(String id,String pw) {
		try {

		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String dbid="hr";
		String dbpw="hr";
			
				conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "select * from tbl_member where id=? and pw=?";
		
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1,id);
			psmt.setString(2,pw);
			
			rs=psmt.executeQuery();
			
			if(rs.next()== true) {
				String uid= rs.getString("id");
				String upw =rs.getString("pw");
				String uname =rs.getString("name");
				String unick= rs.getString("nick");
				String uphon= rs.getString("phon");
				String uemail =rs.getString("email");
				String ugender =rs.getString("gender");
				String ujob= rs.getString("job");
				String uadress= rs.getString("adress");
				String ubirthday =rs.getString("birthday");
				
				
				vo = new MemberVo(uid, upw,uname,unick,uphon,uemail,ugender,ujob,uadress,ubirthday);
				
			
					
				} 
		}catch (Exception e) {
					
				}finally {
					try {
						if(rs !=null) {
							rs.close();
						}
						if(psmt !=null) {
							psmt.close();
						}
						if(conn != null) {
							conn.close();
						}
					}catch (Exception e) {
						
					}
					
				}
		
		
	return vo;
		}

	public int Join(String id, String pw, String name, String nick, String phone, String email, String birthdate,
			String gender, String job, String address) {
		
		try {
			//JDBC
			//1.동적로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2.연결객체 생성
			String url ="jdbc:oracle:thin:@localhost:1521:xe";
			String dbid="hr";
			String dbpw="hr";
		
		conn = DriverManager.getConnection(url,dbid,dbpw);
		
		//3.sql문 준비
		String sql ="insert into tbl_member values(?,?,?,?,?,?,?,?,?,?,sysdate,0,N)";
		
		 psmt = conn.prepareStatement (sql);
		
		psmt.setString(1,id);
		psmt.setString(2,pw);
		psmt.setString(3,name);
		psmt.setString(4,nick);
		psmt.setString(5,phone);
		psmt.setString(6,email);
		psmt.setString(7,birthdate);
		psmt.setString(8,gender);
		psmt.setString(9,job);
		psmt.setString(10,address);
		
		
		
		//5. 실행!
		//select ->executeQury()-->return Resultset
		//insert,delete, update ->esecutUpdate()
		//->return int(몇 행이 성공했는지
		
		 cnt=psmt.executeUpdate();
		
		 
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		//6.연결닫아주기
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
		
		return 0;
	}

}
