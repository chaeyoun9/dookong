package com.dookong.model;

public class MemberDTO {
	
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private int mb_date;

	
	
	public MemberDTO(String mb_id, String mb_pw, String mb_name, int mb_date) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_date=mb_date;
	}
	
	
	public MemberDTO() {
		
	}


	public MemberDTO(String id, String pw, String nick) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
	}


	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public int getMb_date() {
		return mb_date;
	}
	public void setMb_date(int mb_date) {
		this.mb_date = mb_date;
	}
}
