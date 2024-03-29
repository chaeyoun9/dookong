package com.dookong.model;

public class Wrong_answerDTO {
	private int wrong_idx;
	private String mb_id;
	private int question_idx;
	private String created_at;
	private String answer_YN;
	private int tt_idx;

	
	public Wrong_answerDTO(int wrong_idx, String mb_id, int question_idx, String created_at, String answer_YN, int tt_idx) {
		super();
		this.wrong_idx = wrong_idx;
		this.mb_id = mb_id;
		this.question_idx = question_idx;
		this.created_at = created_at;
		this.answer_YN = answer_YN;
		this.tt_idx=tt_idx;
	}
	
	public Wrong_answerDTO(String mb_id, String created_at) {
		super();
		this.mb_id = mb_id;
		this.created_at = created_at;
	}

	public int getQuestion_idx() {
		return question_idx;
	}
	public void setQuestion_idx(int question_idx) {
		this.question_idx = question_idx;
	}
	
	public int getTt_idx() {
		return tt_idx;
	}
	
	public void setTt_idx(int tt_idx) {
		this.tt_idx=tt_idx;
	}
	
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getAnswer_YN() {
		return answer_YN;
	}
	public void setAnswer_YN(String answer_YN) {
		this.answer_YN = answer_YN;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	
}
