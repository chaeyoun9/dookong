package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.MemberDAO;
import com.dookong.model.MemberDTO;



@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 인코딩 작업
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();	
		HttpSession session = request.getSession();
	
		String mb_id=(String)request.getAttribute("id");
		String mb_name = request.getParameter("nick");
		String mb_pw = request.getParameter("cur_pw");
		String re_pw = request.getParameter("re_pw");
		String check_pw = request.getParameter("check_pw");
		
		System.out.println(mb_id);
		System.out.println(mb_pw);
		System.out.println(re_pw);
		System.out.println(mb_name);
		System.out.println(check_pw);
		
//		MemberDTO updateMember = new MemberDTO();
//		
//		if(re_pw!=null) { // 바꿀 비밀번호가 null이 아닐 경우 -> pw 수정
//			
//			if(mb_name!=null) {// 닉네임이 null이 아닐 경우 -> 닉네임 변경
//				
//				
//				if(re_pw.equals(check_pw)==false) { // 바꿀 비밀번호와 check가 일치하지 않을 경우
//					out.println("<script type=\"text/javascript\">");
//					out.println("alert('비밀번호가 일치하지 않습니다.');");
//					out.println("window.location.href = 'My_page.jsp';");
//					out.println("</script>");
//					
//				}
//			}else {
//				mb_name = (String)session.getAttribute("name"); // 닉네임이 null이 경우
//			}
//			
//		}else{
//			re_pw =mb_pw; // 비어있을 경우 -> 값 재할당(원래 비번으로)
//			
//		}
//		updateMember.setMb_id(mb_id);
//		updateMember.setMb_pw(re_pw);
//		updateMember.setMb_name(mb_name);
//		
//		// MemberDTO 객체 생성하기
//		
//		int cnt = new MemberDAO().updateMember(updateMember);
//		
//		
//		// 콘솔창에서 성공실패 확인하기
//		if(cnt>0) {
//			System.out.println("성공");
//		}else {
//			System.out.println("실패");
//		}
//		
		
		
		
	}

}
