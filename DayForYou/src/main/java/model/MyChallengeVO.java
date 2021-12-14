package model;

public class MyChallengeVO {
	private int chal_seq;
	private String chal_s_date;
	private String chal_e_date;
	private String chal_time;
	private String my_chal_memo;
	private String m_id;
	
	public MyChallengeVO(int chal_seq, String chal_s_date, String chal_e_date, String chal_time, String my_chal_memo,
			String m_id) {
		super();
		this.chal_seq = chal_seq;
		this.chal_s_date = chal_s_date;
		this.chal_e_date = chal_e_date;
		this.chal_time = chal_time;
		this.my_chal_memo = my_chal_memo;
		this.m_id = m_id;
	}

	public int getChal_seq() {
		return chal_seq;
	}

	public void setChal_seq(int chal_seq) {
		this.chal_seq = chal_seq;
	}

	public String getChal_s_date() {
		return chal_s_date;
	}

	public void setChal_s_date(String chal_s_date) {
		this.chal_s_date = chal_s_date;
	}

	public String getChal_e_date() {
		return chal_e_date;
	}

	public void setChal_e_date(String chal_e_date) {
		this.chal_e_date = chal_e_date;
	}

	public String getChal_time() {
		return chal_time;
	}

	public void setChal_time(String chal_time) {
		this.chal_time = chal_time;
	}

	public String getMy_chal_memo() {
		return my_chal_memo;
	}

	public void setMy_chal_memo(String my_chal_memo) {
		this.my_chal_memo = my_chal_memo;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	

}
