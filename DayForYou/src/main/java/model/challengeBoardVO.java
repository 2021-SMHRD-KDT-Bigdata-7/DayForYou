package model;

public class challengeBoardVO {
	// 챌린지 목록 챌린지 목록
	

	    // 챌린지 순번 챌린지 순번
	    private int chalSeq;

	    // 챌린지 카테고리1 챌린지 카테고리
	    private String chalCat1;

	    // 챌린지 카테고리2 
	    private String chalCat2;

	    // 챌린지 제목 챌린지 제목
	    private String chalSubject;

	    // 챌린지 내용 챌린지 내용
	    private String chalContent;

	    // 챌린지 시작날짜 챌린지 시작날짜
	    private String chalStart;

	    // 챌린지 기간 챌린지 기간
	    private String chalPeriod;

	    // 챌린지 시간 챌린지 시간
	    private int chalTime;

	    // 챌린지 포인트 챌린지 포인트
	    private int chalPoint;

	    // 챌린지 메인사진 챌린지 사진1
	    private String chalPic1;

	    // 챌린지 예시사진 챌린지 사진2
	    private String chalPic2;

	    // 챌린지 인증사진 챌린지 사진3
	    private String chalPic3;

	    // 등록 일자 등록 일자
	    private String regDate;

	    // 등록자 아이디 등록자 아이디
	    private String mId;

	    // 챌린지 참여인원 
	    private int chalCnt;

	    // 챌린지 비밀번호 
	    private String chalPw;

	    // 챌린지 공식 
	    private String chalPublic;

	

		public challengeBoardVO(int chalSeq, String chalCat1, String chalCat2, String chalSubject, String chalContent,
				String chalStart, String chalPeriod, int chalTime, int chalPoint, String chalPic1, String chalPic2,
				String chalPic3, String regDate, String mId, int chalCnt, String chalPw, String chalPublic) {
			super();
			this.chalSeq = chalSeq;
			this.chalCat1 = chalCat1;
			this.chalCat2 = chalCat2;
			this.chalSubject = chalSubject;
			this.chalContent = chalContent;
			this.chalStart = chalStart;
			this.chalPeriod = chalPeriod;
			this.chalTime = chalTime;
			this.chalPoint = chalPoint;
			this.chalPic1 = chalPic1;
			this.chalPic2 = chalPic2;
			this.chalPic3 = chalPic3;
			this.regDate = regDate;
			this.mId = mId;
			this.chalCnt = chalCnt;
			this.chalPw = chalPw;
			this.chalPublic = chalPublic;
		}


		public challengeBoardVO(int chal_seq1, String chall_cat1, String chall_cat2, String chall_subject,
				String chall_start, String chall_period, String chall_pic1, String chall_pic2, String chall_pic3,
				String reg_date, String m_id, int chal_cnt, String chal_public) {
			// TODO Auto-generated constructor stub
		}


		public int getChalSeq() {
			return chalSeq;
		}

		public void setChalSeq(int chalSeq) {
			this.chalSeq = chalSeq;
		}

		public String getChalCat1() {
			return chalCat1;
		}

		public void setChalCat1(String chalCat1) {
			this.chalCat1 = chalCat1;
		}

		public String getChalCat2() {
			return chalCat2;
		}

		public void setChalCat2(String chalCat2) {
			this.chalCat2 = chalCat2;
		}

		public String getChalSubject() {
			return chalSubject;
		}

		public void setChalSubject(String chalSubject) {
			this.chalSubject = chalSubject;
		}

		public String getChalContent() {
			return chalContent;
		}

		public void setChalContent(String chalContent) {
			this.chalContent = chalContent;
		}

		public String getChalStart() {
			return chalStart;
		}

		public void setChalStart(String chalStart) {
			this.chalStart = chalStart;
		}

		public String getChalPeriod() {
			return chalPeriod;
		}

		public void setChalPeriod(String chalPeriod) {
			this.chalPeriod = chalPeriod;
		}

		public int getChalTime() {
			return chalTime;
		}

		public void setChalTime(int chalTime) {
			this.chalTime = chalTime;
		}

		public int getChalPoint() {
			return chalPoint;
		}

		public void setChalPoint(int chalPoint) {
			this.chalPoint = chalPoint;
		}

		public String getChalPic1() {
			return chalPic1;
		}

		public void setChalPic1(String chalPic1) {
			this.chalPic1 = chalPic1;
		}

		public String getChalPic2() {
			return chalPic2;
		}

		public void setChalPic2(String chalPic2) {
			this.chalPic2 = chalPic2;
		}

		public String getChalPic3() {
			return chalPic3;
		}

		public void setChalPic3(String chalPic3) {
			this.chalPic3 = chalPic3;
		}

		public String getRegDate() {
			return regDate;
		}

		public void setRegDate(String regDate) {
			this.regDate = regDate;
		}

		public String getmId() {
			return mId;
		}

		public void setmId(String mId) {
			this.mId = mId;
		}

		public int getChalCnt() {
			return chalCnt;
		}

		public void setChalCnt(int chalCnt) {
			this.chalCnt = chalCnt;
		}

		public String getChalPw() {
			return chalPw;
		}

		public void setChalPw(String chalPw) {
			this.chalPw = chalPw;
		}

		public String getChalPublic() {
			return chalPublic;
		}

		public void setChalPublic(String chalPublic) {
			this.chalPublic = chalPublic;
		}

	    
	

	
}
