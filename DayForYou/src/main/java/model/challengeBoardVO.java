package model;

public class challengeBoardVO {
	// ç���� ��� ç���� ���
	

	    // ç���� ���� ç���� ����
	    private int chalSeq;

	    // ç���� ī�װ�1 ç���� ī�װ�
	    private String chalCat1;

	    // ç���� ī�װ�2 
	    private String chalCat2;

	    // ç���� ���� ç���� ����
	    private String chalSubject;

	    // ç���� ���� ç���� ����
	    private String chalContent;

	    // ç���� ���۳�¥ ç���� ���۳�¥
	    private String chalStart;

	    // ç���� �Ⱓ ç���� �Ⱓ
	    private String chalPeriod;

	    // ç���� �ð� ç���� �ð�
	    private int chalTime;

	    // ç���� ����Ʈ ç���� ����Ʈ
	    private int chalPoint;

	    // ç���� ���λ��� ç���� ����1
	    private String chalPic1;

	    // ç���� ���û��� ç���� ����2
	    private String chalPic2;

	    // ç���� �������� ç���� ����3
	    private String chalPic3;

	    // ��� ���� ��� ����
	    private String regDate;

	    // ����� ���̵� ����� ���̵�
	    private String mId;

	    // ç���� �����ο� 
	    private int chalCnt;

	    // ç���� ��й�ȣ 
	    private String chalPw;

	    // ç���� ���� 
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
