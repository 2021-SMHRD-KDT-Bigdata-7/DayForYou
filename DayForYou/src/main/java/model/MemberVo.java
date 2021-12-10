package model;

public class MemberVo {

	private String id;
	private String pw;
	private String name;
	private String nick;
	private String phone;
	private String email;
	private String birthday;
	private String gender;
	private String job;
	private String address;
	private String joindate;
	private int point;
	private String adminYn;
	public MemberVo(String id, String pw, String name, String nick, String phone, String email, String birthday,
			String gender, String job, String address, String joindate, int point, String adminYn) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.gender = gender;
		this.job = job;
		this.address = address;
		this.joindate = joindate;
		this.point = point;
		this.adminYn = adminYn;
	}
	
	/* 회원가입(join) 생성자로 쓰임 */
	public MemberVo(String id, String pw, String name, String nick, String phone, String email, String birthday,
			String gender, String job, String address) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nick = nick;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.gender = gender;
		this.job = job;
		this.address = address;
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getAdminYn() {
		return adminYn;
	}
	public void setAdminYn(String adminYn) {
		this.adminYn = adminYn;
	}
	
}