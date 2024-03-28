package com.dookong.model;

public class TestDTO {

	private int test_idx;
	private String test_title;
	
	public TestDTO(int test_idx, String test_title) {
		super();
		this.test_idx = test_idx;
		this.test_title = test_title;
	}

	public int getTest_idx() {
		return test_idx;
	}

	public void setTest_idx(int test_idx) {
		this.test_idx = test_idx;
	}

	public String getTest_title() {
		return test_title;
	}

	public void setTest_title(String test_title) {
		this.test_title = test_title;
	}
	
	
	
	
}
