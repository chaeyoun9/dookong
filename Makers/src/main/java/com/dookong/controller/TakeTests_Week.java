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

@WebServlet("/TakeTests_week")
public class TakeTests_Week extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 사용자 아이디 설정
		String mb_id = "test";

		// 시험 데이터 가져오기
		List<TakeTestsDTO> TestList3 = new TakeTestsDAO().take3(mb_id);

		// 주차별 정답률을 저장할 배열
		double[] correctRates = new double[5]; // 주차는 5주차까지만 가정

		// 데이터를 주차별로 분류하고 정답률 계산
		for (int i = 0; i < TestList3.size(); i++) {
			TakeTestsDTO test = TestList3.get(i);
			int week = test.getTt_week(); // 주차 정보 가져오기
			int score = test.getTt_score(); // 사용자의 점수
			int maxScore = 100; // 한 시험당 최대 점수

			// 정답률 계산
			double correctRate = (double) score / maxScore;

			// 주차별 정답률 누적
			correctRates[week - 1] += correctRate; // 주차는 1부터 시작하므로 배열 인덱스는 주차 - 1

		}

		// 주차별 정답률 평균 계산
		JSONArray improvementRates = new JSONArray();
		for (int i = 0; i < correctRates.length; i++) {
			JSONObject improvementRate = new JSONObject();
			improvementRate.put("week", i + 1); // 주차 정보 추가
			// 주차별 정답률 평균 계산 및 저장
			double averageCorrectRate = correctRates[i] / testCounts[i]; // 주차별 평균 정답률 계산
			improvementRate.put("improvementRate", averageCorrectRate); // 주차별 학습 개선율 추가
			improvementRates.put(improvementRate);
		}

		// JSON 데이터를 클라이언트로 전송
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");
		out.print(improvementRates.toString());
		out.flush();
	}

	// 주어진 시험 데이터 리스트에서 주차별 시험 횟수를 계산하는 메서드
	private int[] countTestsByWeek(List<TakeTestsDTO> testList) {
		int[] testCounts = new int[5]; // 주차는 1주차부터 시작한다고 가정

		for (TakeTestsDTO test : testList) {
			int week = test.getTt_week(); // 시험의 주차 정보 가져오기
			testCounts[week - 1]++; // 주차별 시험 횟수 증가
		}

		return testCounts;
	}
}
