package model;

public class challengeBoardVO {
	// 챌린지 목록 챌린지 목록

	// 챌린지 순번 챌린지 순번
	private int chal_seq;

	// 챌린지 카테고리 챌린지 카테고리
	private String chal_cat;

	// 챌린지 제목 챌린지 제목
	private String chal_subject;

	// 챌린지 내용 챌린지 내용
	private String chal_content;

	// 챌린지 기간 챌린지 기간
	private String chal_period;

	// 챌린지 시간 챌린지 시간
	private int chal_time;

	// 챌린지 포인트 챌린지 포인트
	private int chal_point;

	// 챌린지 메인사진 챌린지 사진1
	private String chal_pic1;

	// 챌린지 예시사진 챌린지 사진2
	private String chal_pic2;

	// 챌린지 인증사진 챌린지 사진3
	private String chal_pic3;

	// 등록 일자 등록 일자
	private String reg_date;

	// 등록자 아이디 등록자 아이디
	private String m_id;

	// 챌린지 참여인원
	private Double chal_cnt;

	// 챌린지 비밀번호
	private String chal_pw;

	// 챌린지 공식
	private String chal_public;

	public challengeBoardVO(int chal_seq, String chal_cat, String chal_subject, String chal_content, String chal_period,
			int chal_time, int chal_point, String chal_pic1, String chal_pic2, String chal_pic3, String reg_date,
			String m_id, Double chal_cnt, String chal_pw, String chal_public) {
		super();
		this.chal_seq = chal_seq;
		this.chal_cat = chal_cat;
		this.chal_subject = chal_subject;
		this.chal_content = chal_content;
		this.chal_period = chal_period;
		this.chal_time = chal_time;
		this.chal_point = chal_point;
		this.chal_pic1 = chal_pic1;
		this.chal_pic2 = chal_pic2;
		this.chal_pic3 = chal_pic3;
		this.reg_date = reg_date;
		this.m_id = m_id;
		this.chal_cnt = chal_cnt;
		this.chal_pw = chal_pw;
		this.chal_public = chal_public;
	}

	public int getChal_seq() {
		return chal_seq;
	}

	public void setChal_seq(int chal_seq) {
		this.chal_seq = chal_seq;
	}

	public String getChal_cat() {
		return chal_cat;
	}

	public void setChal_cat(String chal_cat) {
		this.chal_cat = chal_cat;
	}

	public String getChal_subject() {
		return chal_subject;
	}

	public void setChal_subject(String chal_subject) {
		this.chal_subject = chal_subject;
	}

	public String getChal_content() {
		return chal_content;
	}

	public void setChal_content(String chal_content) {
		this.chal_content = chal_content;
	}

	public String getChal_period() {
		return chal_period;
	}

	public void setChal_period(String chal_period) {
		this.chal_period = chal_period;
	}

	public int getChal_time() {
		return chal_time;
	}

	public void setChal_time(int chal_time) {
		this.chal_time = chal_time;
	}

	public int getChal_point() {
		return chal_point;
	}

	public void setChal_point(int chal_point) {
		this.chal_point = chal_point;
	}

	public String getChal_pic1() {
		return chal_pic1;
	}

	public void setChal_pic1(String chal_pic1) {
		this.chal_pic1 = chal_pic1;
	}

	public String getChal_pic2() {
		return chal_pic2;
	}

	public void setChal_pic2(String chal_pic2) {
		this.chal_pic2 = chal_pic2;
	}

	public String getChal_pic3() {
		return chal_pic3;
	}

	public void setChal_pic3(String chal_pic3) {
		this.chal_pic3 = chal_pic3;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public Double getChal_cnt() {
		return chal_cnt;
	}

	public void setChal_cnt(Double chal_cnt) {
		this.chal_cnt = chal_cnt;
	}

	public String getChal_pw() {
		return chal_pw;
	}

	public void setChal_pw(String chal_pw) {
		this.chal_pw = chal_pw;
	}

	public String getChal_public() {
		return chal_public;
	}

	public void setChal_public(String chal_public) {
		this.chal_public = chal_public;
	}

	

	
}
