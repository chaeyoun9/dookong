package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.MemberDAO;
import com.dookong.model.MemberDTO;



@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 인코딩 작업
		request.setCharacterEncoding("UTF-8");
		
		// 값 가져오기
		String mb_id = request.getParameter("id");
		String mb_pw = request.getParameter("pw");
		
		
		//객체 생성
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO dao = new MemberDAO();
		
		PrintWriter out = response.getWriter();	
		
		// DTO에 값 세팅
		memberDTO.setMb_id(mb_id);
		memberDTO.setMb_pw(mb_pw);
		
		// 로그인 메서드에 memberDTO(id,pw 세팅된 dto) 넣어서 나온 결과를 -> loginMember에 할당
		MemberDTO loginMember = dao.login(memberDTO);
		
		// 만약, 결과가 비어있지 않다면(사용자가 올바르게 아이디, 비번 연결)
		if(loginMember!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", loginMember);
			response.sendRedirect("Main_Page.html");
		}else {
			System.out.println("실패");
			// 뭔가 다른 값을 연결해 주고 싶음(경고창 출력)
			out.print("alert('아이디나 비밀번호를 확인해 주세요')");
		}
	}

}
