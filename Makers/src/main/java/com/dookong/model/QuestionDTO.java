package com.dookong.model;

public class QuestionDTO {
// 문제 데이터 DTO
	
	private int text_idx;
	private String ex1;
	private String ex2;
	private String ex3;
	private String ex4;
	private String best_anwser;
	private String attachment; // 사진 데이터 여부
	private String question;
	private int question_idx;
	
	public QuestionDTO(int question_idx,int text_idx, String ex1, String ex2, String ex3, String ex4, String best_anwser,
			String attachment, String question) {
		super();
		this.question=question;
		this.text_idx = text_idx;
		this.ex1 = ex1;
		this.ex2 = ex2;
		this.ex3 = ex3;
		this.ex4 = ex4;
		this.best_anwser = best_anwser;
		this.attachment = attachment;
		this.question = question;
	}
	
	public QuestionDTO() {
		
	}

	public int getQuestion_idx() {
		return question_idx;
	}
	
	public void setQuestion_idx() {
		this.question_idx=question_idx;
	}
	public int getText_idx() {
		return text_idx;
	}

	public void setText_idx(int text_idx) {
		this.text_idx = text_idx;
	}

	public String getEx1() {
		return ex1;
	}

	public void setEx1(String ex1) {
		this.ex1 = ex1;
	}

	public String getEx2() {
		return ex2;
	}

	public void setEx2(String ex2) {
		this.ex2 = ex2;
	}

	public String getEx3() {
		return ex3;
	}

	public void setEx3(String ex3) {
		this.ex3 = ex3;
	}

	public String getEx4() {
		return ex4;
	}

	public void setEx4(String ex4) {
		this.ex4 = ex4;
	}

	public String getBest_anwser() {
		return best_anwser;
	}

	public void setBest_anwser(String best_anwser) {
		this.best_anwser = best_anwser;
	}

	public String getAttachment() {
		return attachment;
	}

	public void setAttachment(String attachment) {
		this.attachment = attachment;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	
	
	
	
}
