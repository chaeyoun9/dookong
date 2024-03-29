package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dookong.model.QuestionDAO;
import com.dookong.model.QuestionDTO;


@WebServlet("/QuestionServlet")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();	
		HttpSession session = request.getSession();
		
		String fileLabel = request.getParameter("fileLabel");
		
		int num = 0;
		
		if(fileLabel.equals("2020_06_06")) {
			num = 1;
		}else if(fileLabel.equals("2020_08_22")) {
			num=2;
		}else if(fileLabel.equals("2020_09_26")) {
			num=3;
		}else if(fileLabel.equals("2021_03_07")) {
			num=4;
		}else if(fileLabel.equals("2021_05_15")) {
			num=5;
		}else if(fileLabel.equals("2021_08_14")) {
			num=6;
		}else if(fileLabel.equals("2022_03_05")) {
			num=7;
		}else if(fileLabel.equals("2022_04_24")) {
			num=8;
		}else if(fileLabel.equals("1과목")) {
			num=11;
		}else if(fileLabel.equals("2과목")) {
			num=12;
		}else if(fileLabel.equals("3과목")) {
			num=13;
		}else if(fileLabel.equals("4과목")) {
			num=14;
		}else if(fileLabel.equals("5과목")) {
			num=15;
		}
		
		session.setAttribute("num", num);
		
		String path="Questions.jsp";
        request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
