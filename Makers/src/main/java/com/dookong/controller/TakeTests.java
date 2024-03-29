package com.dookong.controller;

import java.io.IOException;
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

@WebServlet("/TakeTests")
public class TakeTests extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String mb_id = "mb_id 0001";
		
		JSONArray jsonArray = new JSONArray();
		List<TakeTestsDTO> TestList = new TakeTestsDAO().take(mb_id);
		for (TakeTestsDTO test : TestList) {
			JSONObject jsonObject = new JSONObject();
			String date = test.getTested_at();
			int score = test.getTt_score();

			jsonObject.put("date", date);
			jsonObject.put("score", score);

			jsonArray.put(jsonObject);
			
		}
		System.out.println(jsonArray);
	}

}
