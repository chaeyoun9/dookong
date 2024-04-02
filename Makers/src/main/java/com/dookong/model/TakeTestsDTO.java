package com.dookong.model;

import java.math.BigDecimal;

public class TakeTestsDTO {
	private int tt_idx;
	private int test_idx;
	private String mb_id;
	private String tested_at;
	private int tt_score;
	private char pass_yn;
	private String tt_time;
	private int tt_week;
	private int tt_que;
	
	public TakeTestsDTO(int tt_idx, int test_idx, String mb_id, String tested_at, int tt_score, char pass_yn,
			String tt_time) {
		this.tt_idx = tt_idx;
		this.test_idx = test_idx;
		this.mb_id = mb_id;
		this.tested_at = tested_at;
		this.tt_score = tt_score;
		this.pass_yn = pass_yn;
		this.tt_time = tt_time;
		this.tt_week = tt_week;
		
	}

	
	public TakeTestsDTO(int tt_que) {
		super();
		this.tt_que = tt_que;
	}


	public int getTt_que() {
		return tt_que;
	}


	public void setTt_que(int tt_que) {
		this.tt_que = tt_que;
	}


	public TakeTestsDTO(int test_idx, int tt_score) {
		super();
		this.test_idx = test_idx;
		this.tt_score = tt_score;
	}


	public TakeTestsDTO(String tested_at, int tt_score) {
		this.tested_at = tested_at;
		this.tt_score = tt_score;
	}
	
	 public TakeTestsDTO() {
	    }

	public int getTt_idx() {
		return tt_idx;
	}

	public void setTt_idx(int tt_idx) {
		this.tt_idx = tt_idx;
	}

	public int getTest_idx() {
		return test_idx;
	}

	public void setTest_idx(int test_idx) {
		this.test_idx = test_idx;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getTested_at() {
		return tested_at;
	}

	public void setTested_at(String tested_at) {
		this.tested_at = tested_at;
	}

	public int getTt_score() {
		return tt_score;
	}

	public void setTt_score(int tt_score) {
		this.tt_score = tt_score;
	}

	public char getPass_yn() {
		return pass_yn;
	}

	public void setPass_yn(char pass_yn) {
		this.pass_yn = pass_yn;
	}

	public String getTt_time() {
		return tt_time;
	}

	public void setTt_time(String tt_time) {
		this.tt_time = tt_time;
	}
}
