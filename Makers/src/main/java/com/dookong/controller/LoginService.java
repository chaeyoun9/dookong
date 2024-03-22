package com.dookong.controller;

import java.io.IOException;
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
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("mb_id");
		String pw = request.getParameter("mb_pw");
		
		MemberDTO member = new MemberDTO(id,pw);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO loginMember = dao.login(member);
		
		if(loginMember!=null) {
			HttpSession session =request.getSession();
			session.setAttribute("member", loginMember);
			System.out.print(id+pw);
		}else {
			response.sendRedirect("login.html");
		}
	}

}
