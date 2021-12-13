package model;

public class shopVO {

	private int shop_seq;
	private String goods_name;
	private String goods_category;
	private String goods_pic1;
	private String goods_pic2;
	private int goods_point;
	private int buy_day;
	private int exp_day;
	private String m_id;
	
	
	
	
	
	public shopVO(int shop_seq, String goods_name, String goods_category, String goods_pic1, String goods_pic2,
			int goods_point, int buy_day, int exp_day, String m_id) {
		super();
		this.shop_seq = shop_seq;
		this.goods_name = goods_name;
		this.goods_category = goods_category;
		this.goods_pic1 = goods_pic1;
		this.goods_pic2 = goods_pic2;
		this.goods_point = goods_point;
		this.buy_day = buy_day;
		this.exp_day = exp_day;
		this.m_id = m_id;
	}
	public shopVO() {
		
	}
	public int getShop_seq() {
		return shop_seq;
	}
	public void setShop_seq(int shop_seq) {
		this.shop_seq = shop_seq;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_category() {
		return goods_category;
	}
	public void setGoods_category(String goods_category) {
		this.goods_category = goods_category;
	}
	public String getGoods_pic1() {
		return goods_pic1;
	}
	public void setGoods_pic1(String goods_pic1) {
		this.goods_pic1 = goods_pic1;
	}
	public String getGoods_pic2() {
		return goods_pic2;
	}
	public void setGoods_pic2(String goods_pic2) {
		this.goods_pic2 = goods_pic2;
	}
	public int getGoods_point() {
		return goods_point;
	}
	public void setGoods_point(int goods_point) {
		this.goods_point = goods_point;
	}
	public int getBuy_day() {
		return buy_day;
	}
	public void setBuy_day(int buy_day) {
		this.buy_day = buy_day;
	}
	public int getExp_day() {
		return exp_day;
	}
	public void setExp_day(int exp_day) {
		this.exp_day = exp_day;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
	
	
	
	
	
	
}

