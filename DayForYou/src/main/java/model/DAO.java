package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

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
	shopVO svo = null;

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

	// =============================로그인==============================
	public MemberVo login(String id, String pw) {
		connection();
		try {

			sql = "select * from tbl_member where m_id=? and m_pwd=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
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

				vo = new MemberVo(uid, upw, uname, unick, uphon, uemail, ubirthday, ugender, ujob, uaddress, ujoinday,
						upoint, uadminYn);

			}

			sql = "SELECT TO_CHAR(m_birthdate, 'YYYY/MM/DD') FROM tbl_member where m_id=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next() == true) {
				vo.setBirthday(rs.getString(1));
			}

		} catch (Exception e) {

		} finally {
			close();

		}

		return vo;
	}

	// ==================================회원가입=============================
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

	// ----------
	/*
	 * 챌린지 게시판을 출력하는 메소드
	 */
	public ArrayList<challengeBoardVO> SelectChallengeBoard() {

		ch_boards = new ArrayList<>();

		connection();

		try {
			sql = "select * from tbl_challenge";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {

				cbv = new challengeBoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getInt(15),
						rs.getString(16), rs.getString(17));

				ch_boards.add(cbv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return ch_boards;
	}

	/**
	 * 챌린지 게시판을 카테고리 별로 출력하는 메소드
	 * 
	 * @param cat 챌린지 큰 그룹을 분류하기 위한 카테고리 ex) 전체, 그룹, 개인, 추천, 인기... 등
	 */

	public ArrayList<challengeBoardVO> SelectChallengeBoard_cat(String cat) {

		ch_boards = new ArrayList<>();

		connection();

		try {
			sql = "select * from tbl_challenge where chal_cat1 = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cat);

			rs = psmt.executeQuery();

			while (rs.next()) {

				cbv = new challengeBoardVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getInt(15),
						rs.getString(16), rs.getString(17));

				ch_boards.add(cbv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return ch_boards;
	}

	/**
	 * 챌린지 숫자 카운팅 메소드 모음: 전체 챌린지 수
	 * 
	 * @param
	 */

	public int CountAllChallenge() {
		int num = 0;

		connection();

		try {
			sql = "select count(*) from tbl_challenge";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				num = rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return num;

	}

	/**
	 * 챌린지 마감날짜 불러오는 메소드
	 * 
	 * @param
	 */
	public ArrayList<String> getEndDateChallenge() {
		ArrayList<String> endDateChall = new ArrayList<>();

		connection();

		try {
			sql = "select chal_period from tbl_challenge";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				endDateChall.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return endDateChall;
	}
	
	/**
	 * 챌린지 peroid 정제하는 메소드.
	 * 
	 * @return 모든 챌린지 마지막 날짜 출력
	 * @param 0이면, 시작날짜, 1이면 마지막 날짜 출력. 0과 1만 넣어야함.
	 */
	public ArrayList<DayDAO> getChallengePeriod(int input) {
		ArrayList<DayDAO> periodDay = new ArrayList<>();
		DayDAO ddao = null;

		// 챌린지 마감날짜 불러오기.
		ArrayList<String> endDateChall = getEndDateChallenge();

		// 챌린지 기간 ~를 기점으로 마감날짜만 빼오는 배열
		ArrayList<String> divide1 = new ArrayList<String>();

		for (int i = 0; i < endDateChall.size(); i++) {	
		
			divide1.add(dividePeriodWave(endDateChall.get(i),input));

		}

		for (int i = 0; i < divide1.size(); i++) {
			String[] arr = divide1.get(i).split("-");
			ddao = new DayDAO(Integer.parseInt(arr[0]), Integer.parseInt(arr[1]), Integer.parseInt(arr[2]));
			periodDay.add(ddao);
		}

		return periodDay;
	}
	
	/**
	 * @param 
	 * data 나눌데이터
	 * input 0이면, 시작날짜, 1이면 마지막날짜
	 * */
	public String dividePeriodWave(String data, int input) {
		String[] arr = data.split("~");
		
		return arr[input];				
	}

	/**
	 * 
	 * */

	public ArrayList<String> challengeCategoryNoDuple(String user_id) {
		ArrayList<String> cat2 = new ArrayList<>();
		connection();
		try {
			sql = "select distinct a.chal_cat2 from tbl_challenge a, tbl_my_challenge b where b.attend_id = ? and a.chal_seq = b.chal_seq";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			while (rs.next()) {
				cat2.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cat2;
	}
	/**
	 * 챌린지 누적 참가자 메소드
	 * 
	 * @param
	 */

	public int countChallCnt() {
		int sum = 0;

		connection();
		try {
			sql = "select chal_cnt from tbl_challenge";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				sum = sum + rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return sum;
	}

	/**
	 * 챌린지 현재 참가자 알아내는 메소드
	 * 
	 * @param
	 */
	public ArrayList<Integer> getNowCnt() {
		ArrayList<Integer> cnt = null;

		connection();

		try {
			sql = "select chal_cnt from tbl_challenge";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			cnt = new ArrayList<>();

			while (rs.next()) {
				cnt.add(rs.getInt(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public int ChallInsert(String chall_cat1, String chall_subject, String chall_cat2, String chall_Introduce,
			String chall_pic1, String chall_start, String chall_period, String chall_Private, String chall_pic12,
			String chall_pic2, String chall_pic3, String chall_pw) {
		connection();
		try {

			// JDBD
			// 1.동적로딩 (클래스를 사용하겠따!!)

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
			psmt.setString(10, "dayfor12");
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
				int chal_seq1 = rs.getInt(1);
				String chal_cat1 = rs.getString(2);
				String chal_cat2 = rs.getString(3);
				String chal_subject = rs.getString(4);
				String chal_content = rs.getString(5);
				String chal_start = rs.getString(6);
				String chal_period = rs.getString(7);
				int chal_time = rs.getInt(8);
				int chal_point = rs.getInt(9);
				String chal_pic1 = rs.getString(10);
				String chal_pic2 = rs.getString(11);
				String chal_pic3 = rs.getString(12);
				String reg_date = rs.getString(13); // Date 자료형
				String m_id = rs.getString(14);
				int chal_cnt = rs.getInt(15);
				String chal_pw = rs.getString(16);
				String chal_public = rs.getString(17);
				zvo = new challengeBoardVO(chal_seq1, chal_cat1, chal_cat2, chal_subject, chal_content, chal_start,
						chal_period, chal_time, chal_point, chal_pic1, chal_pic2, chal_pic3, reg_date, m_id, chal_cnt,
						chal_pw, chal_public);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return zvo;
	}

	// ===========================
	// =================================shop===================
	public ArrayList<shopVO> selectAllGoods() {
		ArrayList<shopVO> goods = new ArrayList<>();

		connection();

		try {
			sql = "select * from tbl_shop order by shop_seq desc";

			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				int shop_seq = rs.getInt(1);
				String goods_name = rs.getString(2);
				String goods_category = rs.getString(3);
				String shop_pic1 = rs.getString(4);
				String shop_pic2 = rs.getString(5);
				int goods_point = rs.getInt(6);
				String buy_day = rs.getString(7);
				String exp_day = rs.getString(8);
				String m_id = rs.getString(9);

				 svo = new shopVO(shop_seq, goods_name, goods_category, shop_pic1, shop_pic2, goods_point,
						buy_day, exp_day, m_id);

				goods.add(svo);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return goods;
	}




	public int shopbuy(String id, int point) {
		connection();
		try {

			sql = "update tbl_member set m_point=? where m_id=?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, point);
			psmt.setString(2, id);

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

	public void ChallengeCntUp(int chal_seq) {
		connection();

		try {
			sql = "UPDATE tbl_challenge SET chal_cnt=chal_cnt+1 WHERE chal_seq = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, chal_seq);
			rs = psmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public MySelectChallVO MySelectChall(int chal_seq) {
		MySelectChallVO msvo = null;
		connection();
		try {
			sql = "select * from tbl_challenge where chal_seq = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, chal_seq);
			rs = psmt.executeQuery();

			if (rs.next()) {
				int chal_seq1 = rs.getInt(1);
				String chal_cat1 = rs.getString(2);
				String chal_cat2 = rs.getString(3);
				String chal_subject = rs.getString(4);
				String chal_content = rs.getString(5);
				String chal_start = rs.getString(6);
				String chal_period = rs.getString(7);
				int chal_time = rs.getInt(8);
				int chal_point = rs.getInt(9);
				String chal_pic1 = rs.getString(10);
				String chal_pic2 = rs.getString(11);
				String chal_pic3 = rs.getString(12);
				String reg_date = rs.getString(13); // Date 자료형
				String m_id = rs.getString(14);
				int chal_cnt = rs.getInt(15);
				String chal_pw = rs.getString(16);
				String chal_public = rs.getString(17);
				// 일단 추가할수 있으니 값 다 넣어준거임
				msvo = new MySelectChallVO(chal_cat1, chal_cat2, chal_subject, chal_period, chal_pic1,chal_public);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return msvo;
	}

	public int MyChallengeinsert(int chal_seq, String attend_id, String chal_time, String my_chal_memo,
			int chal_num) {
		connection();

		try {

			// 3.sql문 준비
			sql = "insert into tbl_my_challenge values(tbl_my_challenge_seq.nextval,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, chal_seq);
			psmt.setString(2, attend_id);
			psmt.setString(3, chal_time);
			psmt.setString(4, my_chal_memo);
			psmt.setInt(5, chal_num);

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

	public int ChallengeCheck(String m_id, int chal_seq) {
		challengeBoardVO zvo = null;
		connection();
		int num=chal_seq;

		try {
			sql = "select * from tbl_my_challenge where attend_id =? and chal_seq=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1,m_id);
			psmt.setInt(2,chal_seq);
			rs = psmt.executeQuery();

			if (rs.next() == false) {
			} else {
				num = 999999;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return num;
	}


	public ArrayList<MyChallengeVO> MychallengeSelectAll(String attend_id) {
		ArrayList<MyChallengeVO> arr = new ArrayList<MyChallengeVO>();
		connection();
		try {
			String sql = "select * from tbl_my_challenge where attend_id = ?";

			// 4. PreparedStatement 객체 준비
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, attend_id);
			rs = psmt.executeQuery();
			
			while(rs.next() == true) {
				int my_chal_seq = rs.getInt(1);
				int chal_seq = rs.getInt(2);
				attend_id = rs.getString(3);
				String chal_time = rs.getString(4);
				String my_chal_memo = rs.getString(5);
				int chal_num = rs.getInt(6);
				MyChallengeVO mvo = new MyChallengeVO(my_chal_seq, chal_seq,attend_id,chal_time,my_chal_memo,chal_num);
				arr.add(mvo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(psmt != null){
					psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch (Exception e2) {
			}
		}
		return arr;
	}
	
	//===================================shopinsert=============
	
	public int shop_insert(String goods_name, String goods_category, int goods_point, String m_id) {
		connection();
		try {
		sql="insert into tbl_shop values(TBL_shop_SEQ.NEXTVAL,?,?,null,null,?,sysdate,'2022-02-25',?)";	
		
		psmt = conn.prepareStatement(sql);		
		psmt.setString(1, goods_name);
		psmt.setString(2, goods_category);
		psmt.setInt(3, goods_point);
		psmt.setString(4, m_id);
		
		cnt = psmt.executeUpdate(); 
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		
		close();
	}

	return cnt;

}
	

//======================shopupdate===========================

public int shop_update(int shop_seq,String goods_name, String goods_category, String goods_point) {
	shopVO svo = new shopVO();
	connection();

	try {
		sql = "UPDATE tbl_shop SET goods_name=?,goods_category=?,goods_point=? where TBL_shop_SEQ=?";

		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, goods_name);
		psmt.setString(2, goods_category);
		psmt.setString(3, goods_point);
		psmt.setInt(4, shop_seq);
		
		cnt = psmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return cnt;
}
//===================shop_delete=============
public int shop_delete(int shop_seq) {
	shopVO svo = new shopVO();
	connection();
	try {
		sql = "DELETE FROM tbl_shop WHERE shop_seq=?";

		psmt = conn.prepareStatement(sql);
		psmt.setInt(1,shop_seq);
	
		cnt = psmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return cnt;
}


public myDailyVO myDailyChallengeCheck(String attend_id, int chal_seq) {
	myDailyVO mdvo = null;
	connection();

	try {
		sql = "select * from tbl_my_challenge where attend_id =? and chal_seq=?";

		psmt = conn.prepareStatement(sql);
		psmt.setString(1,attend_id);
		psmt.setInt(2,chal_seq);
		rs = psmt.executeQuery();

		if (rs.next() == true) {
			String chal_time = rs.getString(4);
			int chal_num=rs.getInt(6);
			mdvo=new myDailyVO(chal_seq, attend_id, chal_time, chal_num);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return mdvo;
}
public ArrayList<String> getMyDailyChallengeImg(int chal_seq, String attend_id) {
    ArrayList<String> images = null;
    
    
    connection();
    try {
       
       images = new ArrayList<>();
       sql = "select daily_pic from tbl_daily_challenge where chal_seq = ? and attend_id = ?";
       
       psmt = conn.prepareStatement(sql);
       psmt.setInt(1, chal_seq);
       psmt.setString(2, attend_id);
       rs = psmt.executeQuery();

       while(rs.next()) {
          images.add(rs.getString(1));
       }
       
    }catch(Exception e) {
       e.printStackTrace();
    }finally {
       close();
    }
    return images;
 }

public int MyDailyChallengeinsert(int chal_seq, String attend_id,String daily_pic,int point, String daily_chal_done) 
{
	connection();

	try {

		// 3.sql문 준비
		sql = "insert into tbl_daily_challenge values(tbl_daily_challenge_seq.nextval,?,?,?,?,?,sysdate)";

		psmt = conn.prepareStatement(sql);

		psmt.setInt(1, chal_seq);
		psmt.setString(2, attend_id);
		psmt.setString(3, daily_pic);
		psmt.setInt(4, point);
		psmt.setString(5, daily_chal_done);

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

	
}

