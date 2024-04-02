package com.dookong.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TakeTests_sub")
public class TakeTests_sub extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 요청에서 과목별 푼 문제 개수를 가져옴
		int[] solvedProblems = new int[5];
		for (int i = 0; i < 5; i++) {
			String param = request.getParameter("subject_" + (i + 1));
			if (param != null && !param.isEmpty()) {
				solvedProblems[i] = Integer.parseInt(param);
			} else {
				solvedProblems[i] = 0;
			}
		}

		// 그래프 그리기

		// 디버깅용 콘솔 출력 
		for (int i = 0; i < 5; i++) {
			System.out.println("과목 " + (i + 1) + " 푼 문제 개수: " + solvedProblems[i]);
		}


	}
}
