package com.dookong.model;

public class MemberDTO {
	
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String joined_at;

	
	
	public MemberDTO(String mb_id, String mb_pw, String mb_name) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
	}
	
	public MemberDTO(String mb_id, String mb_pw, String mb_name,String joined_at) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
	}
	
	public MemberDTO() {
		
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
	public String getJoined_at() {
		return joined_at;
	}
	public void setJoined_at(String joined_at) {
		this.joined_at = joined_at;
	}
}
