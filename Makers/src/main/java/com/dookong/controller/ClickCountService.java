package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.MemberDTO;


@WebServlet("/ClickCountService")
public class ClickCountService extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private int clickCount = 0;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//클릭 시 데이터 증가 표시하고, db에 데이터 update
		// 인코딩 작업
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();	
				HttpSession session = request.getSession();
				
				
				MemberDTO memDTO=(MemberDTO)session.getAttribute("dto");
				String mb_id = memDTO.getMb_id(); // mb_id 설정
				
				
	}

}
