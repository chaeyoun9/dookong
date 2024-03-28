package com.dookong.model;

public class QuestionDTO {
// 문제 데이터 DTO
	
	private int text_idx;
	private String num1;
	private String num2;
	private String num3;
	private String num4;
	private String anwser;
	private String attach; // 사진 데이터 여부
	
	
	
	public QuestionDTO(int text_idx, String num1, String num2, String num3, String num4, String anwser, String attach) {
		super();
		this.text_idx = text_idx;
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
		this.num4 = num4;
		this.anwser = anwser;
		this.attach = attach;
	}
	
	public int getText_idx() {
		return text_idx;
	}
	public void setText_idx(int text_idx) {
		this.text_idx = text_idx;
	}
	public String getNum1() {
		return num1;
	}
	public void setNum1(String num1) {
		this.num1 = num1;
	}
	public String getNum2() {
		return num2;
	}
	public void setNum2(String num2) {
		this.num2 = num2;
	}
	public String getNum3() {
		return num3;
	}
	public void setNum3(String num3) {
		this.num3 = num3;
	}
	public String getNum4() {
		return num4;
	}
	public void setNum4(String num4) {
		this.num4 = num4;
	}
	public String getAnwser() {
		return anwser;
	}
	public void setAnwser(String anwser) {
		this.anwser = anwser;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttach(String attach) {
		this.attach = attach;
	}
	
	
}
