package model;

public class MySelectChallVO {
	private String chal_cat1;
	private String chal_cat2;
	private String chal_subject;
	private String chal_period;
	private String chal_pic1;
	private String chal_public;
	public MySelectChallVO(String chal_cat1, String chal_cat2, String chal_subject, String chal_period,
			String chal_pic1, String chal_public) {
		super();
		this.chal_cat1 = chal_cat1;
		this.chal_cat2 = chal_cat2;
		this.chal_subject = chal_subject;
		this.chal_period = chal_period;
		this.chal_pic1 = chal_pic1;
		this.chal_public = chal_public;
	}
	public String getChal_cat1() {
		return chal_cat1;
	}
	public void setChal_cat1(String chal_cat1) {
		this.chal_cat1 = chal_cat1;
	}
	public String getChal_cat2() {
		return chal_cat2;
	}
	public void setChal_cat2(String chal_cat2) {
		this.chal_cat2 = chal_cat2;
	}
	public String getChal_subject() {
		return chal_subject;
	}
	public void setChal_subject(String chal_subject) {
		this.chal_subject = chal_subject;
	}
	public String getChal_period() {
		return chal_period;
	}
	public void setChal_period(String chal_period) {
		this.chal_period = chal_period;
	}
	public String getChal_pic1() {
		return chal_pic1;
	}
	public void setChal_pic1(String chal_pic1) {
		this.chal_pic1 = chal_pic1;
	}
	public String getChal_public() {
		return chal_public;
	}
	public void setChal_public(String chal_public) {
		this.chal_public = chal_public;
	}
	

}
