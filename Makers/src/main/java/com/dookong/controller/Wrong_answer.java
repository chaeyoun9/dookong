package com.dookong.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.Wrong_answerDAO;

@WebServlet("/Wrong_answer")
public class Wrong_answer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
//		
//		//session.getAttribute("created_at");
//		//session.getAttribute("mb_id");
//		String created_at = null; 
//		String mb_id = null;
//		new Wrong_answerDAO().Wrong(created_at, mb_id);
	}

}
