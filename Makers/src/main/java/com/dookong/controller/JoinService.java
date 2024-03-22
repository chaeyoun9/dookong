package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dookong.model.MemberDAO;
import com.dookong.model.MemberDTO;




@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
	
			e.printStackTrace();
		}
		// 2. 요청값에서 필요한 데이터 꺼내오기! 
		//    -
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String pwCheck = request.getParameter("pwCheck");
		
		// 3. 처리해야 하는 로직 구현 -> 회원가입!
		MemberDTO dto = new MemberDTO(id,pw,nick);
		
		
		MemberDAO dao = new MemberDAO();
		int result = dao.join(dto);
		

		// 4. 결과 처리
		if(result > 0) {
			// 회원가입 성공시!
			// 회원의 이메일 값을 JoinSuccess.jsp 페이지로 공유하기!
			// -> request 영역 활용하기!
			// -> 페이지 이동 방식 -> forward 방식
			request.setAttribute("info", nick);
			
			System.out.println("가입 성공");
			
			String path="JoinSuccess.jsp";
			request.setAttribute("info", nick);
	        request.getRequestDispatcher(path).forward(request, response);
//			rd.forward(request, response);
			
		}else{
			System.out.println("가입 실패");
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		    out.println("alert('아이디 또는 비밀번호가 올바르지 않습니다 다시 시도해주세요.');");
		    out.println("window.location.href = 'Main_Login.jsp';"); // 로그인 페이지로 이동
		    out.println("</script>");
		}
	
	}

}
