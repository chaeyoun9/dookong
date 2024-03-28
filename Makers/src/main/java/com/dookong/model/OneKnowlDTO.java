package com.dookong.model;

public class OneKnowlDTO {
	
	private String knowl_title;
	private String knowl_content;
	
	public OneKnowlDTO(String knowl_title, String knowl_content) {
		this.knowl_title = knowl_title;
		this.knowl_content = knowl_content;
	}
	public String getKnowl_title() {
		return knowl_title;
	}
	public void setKnowl_title(String knowl_title) {
		this.knowl_title = knowl_title;
	}
	public String getKnowl_content() {
		return knowl_content;
	}
	public void setKnowl_content(String knowl_content) {
		this.knowl_content = knowl_content;
	}
	
	

}
