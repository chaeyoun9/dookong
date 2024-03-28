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


@WebServlet("/ClickCountServlet")
public class ClickCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();	
		HttpSession session = request.getSession();
		
		MemberDTO memDTO=(MemberDTO)session.getAttribute("dto");
		int count = Integer.parseInt(request.getParameter("count"));
		
		String mb_id = memDTO.getMb_id();
		
		// 3. 처리해야 하는 로직 구현 -> 회원가입!
		MemberDTO dto = new MemberDTO();
		
		dto.setMb_date(count);
		dto.setMb_id(mb_id);
		
		int result = new MemberDAO().saveToDB(dto);
		
		// 콘솔창에서 성공실패 확인하기 -- 성공 확인
				if(result>0) {
					System.out.println("성공");
					out.println("<script type=\"text/javascript\">");
				    out.println("alert('어서오세요! 환영합니다.');");
				    out.println("</script>");
				    
				    session.setAttribute("mb_date",count);	
				 	String path="newtest.jsp";
				 	request.getRequestDispatcher(path).forward(request, response);
				 	        
				 	        
				 	        
				}else {
					System.out.println("실패");
				}
		
		    
		
	}

}
