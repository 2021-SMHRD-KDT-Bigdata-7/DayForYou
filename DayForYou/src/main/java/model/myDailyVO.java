package model;

public class myDailyVO {
	private int chal_seq;
	private String attend_id;
	private String chal_time;
	private int chal_num;
	public myDailyVO(int chal_seq, String attend_id, String chal_time, int chal_num) {
		super();
		this.chal_seq = chal_seq;
		this.attend_id = attend_id;
		this.chal_time = chal_time;
		this.chal_num = chal_num;
	}
	public int getChal_seq() {
		return chal_seq;
	}
	public void setChal_seq(int chal_seq) {
		this.chal_seq = chal_seq;
	}
	public String getAttend_id() {
		return attend_id;
	}
	public void setAttend_id(String attend_id) {
		this.attend_id = attend_id;
	}
	public String getChal_time() {
		return chal_time;
	}
	public void setChal_time(String chal_time) {
		this.chal_time = chal_time;
	}
	public int getChal_num() {
		return chal_num;
	}
	public void setChal_num(int chal_num) {
		this.chal_num = chal_num;
	}
	
	
}
