package com.dookong.model;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OneKnowl")
public class OneKnowl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// OneKnowlDAO를 사용해 데이터 가져오기
		OneKnowlDAO odao = new OneKnowlDAO();
		// 랜덤 숫자 가져오기
		int rdNum = odao.rd();
		// 해당 번호에 해당하는 문제 가져오기
		OneKnowlDTO rdQ = odao.printk(rdNum);

		// 가져온 데이터 request에 저장하기
		request.setAttribute("content", rdQ);

		// 페이지 이동을 위한 RequestDispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher("/newtest.jsp");

		// 페이지로 데이터를 전달하고 forward 방식으로 페이지 이동
		dispatcher.forward(request, response);
		
		System.out.println("서비스 rdq확인"+rdQ);
	}

}
