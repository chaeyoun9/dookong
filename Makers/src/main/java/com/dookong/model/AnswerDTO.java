package com.dookong.model;

public class AnswerDTO {
	private int ans_idx;
	private int question_idx;
	private int choose_answer;
	private int tt_idx;
	private String correct_YN;
	private String mb_id;
	
	
	public AnswerDTO(int ans_idx, int question_idx, int choose_answer, int tt_idx, String correct_YN, String mb_id) {
		super();
		this.ans_idx = ans_idx;
		this.question_idx = question_idx;
		this.choose_answer = choose_answer;
		this.tt_idx = tt_idx;
		this.correct_YN = correct_YN;
	}
	
	
	public AnswerDTO(){}
	
	
	public String getMb_id() {
		return mb_id;
	}
	
	public void setMb_id(String mb_id) {
		this.mb_id=mb_id;
	}
	
	public int getAns_idx() {
		return ans_idx;
	}
	public void setAns_idx(int ans_idx) {
		this.ans_idx = ans_idx;
	}
	public int getQuestion_idx() {
		return question_idx;
	}
	public void setQuestion_idx(int question_idx) {
		this.question_idx = question_idx;
	}
	public int getChoose_answer() {
		return choose_answer;
	}
	public void setChoose_answer(int choose_answer) {
		this.choose_answer = choose_answer;
	}
	public int getTt_idx() {
		return tt_idx;
	}
	public void setTt_idx(int tt_idx) {
		this.tt_idx = tt_idx;
	}
	public String getCorrect_YN() {
		return correct_YN;
	}
	public void setCorrect_YN(String correct_YN) {
		this.correct_YN = correct_YN;
	}
	
	
	
}
