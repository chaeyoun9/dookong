package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.AnswerDTO;
import com.dookong.model.MemberDTO;




@WebServlet("/AnswerService")
public class AnswerService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();	
		HttpSession session = request.getSession();
		
	
		MemberDTO memDTO=(MemberDTO)session.getAttribute("dto");
		int tt_idx = (Integer)session.getAttribute("num"); // tt_idx 설정
		String mb_id = memDTO.getMb_id(); // 회원 아이디 설정 로그인 안하면 에러남 // 받아와지는거 확인 완료
		

	
		String[] questions = request.getParameterValues("question");
	    String[] answers = request.getParameterValues("answer");
	    String[] questions_idx = request.getParameterValues("question_idx");
	    String[] questions_idx_value = request.getParameterValues("question_idx_value");
	    
	    System.out.println(questions[0]);
	    System.out.println(answers[0]);
	    System.out.println(questions_idx[0]);
	    System.out.println(questions_idx_value[0]);
	    
	    AnswerDTO dto = new AnswerDTO();
	   
	        
	    
	    
		
	}

}
