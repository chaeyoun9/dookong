package com.dookong.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dookong.model.TakeTestsDAO;
import com.dookong.model.TakeTestsDTO;
import com.google.gson.Gson;

@WebServlet("/TakeTests")
public class TakeTests extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Test123");
		String mb_id = "test";

		List<TakeTestsDTO> TestList = new TakeTestsDAO().take(mb_id);

		JSONArray jsonArray = new JSONArray();

		if (TestList != null) {
			for (TakeTestsDTO test : TestList) {
				JSONObject jsonObject = new JSONObject();
				String date = test.getTested_at();
				int score = test.getTt_score();

				jsonObject.put("date", date);
				jsonObject.put("score", score);

				jsonArray.put(jsonObject);
			}
		} else {
			// TestList가 null일 때의 처리
			System.out.println("TestList=null");
		}

		Gson gson = new Gson();
		
		PrintWriter out = response.getWriter();
		//out.print(jsonArray);
		// JSON 데이터를 클라이언트로 전송
		//response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		out.print(jsonArray.toString());
		//out.print(gson.toJson(TestList).toString());
		out.flush();

		System.out.println(jsonArray);

	}

}
