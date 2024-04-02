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

@WebServlet("/TakeTests_avg")
public class TakeTests_avg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 디버깅용 출력문
		System.out.println("차트 테스트2 : test123");

		// 사용자 아이디 설정
		String mb_id = "test";

		// 시험 데이터 가져오기
		List<TakeTestsDTO> TestList2 = new TakeTestsDAO().take2(mb_id);

		// 과목별로 점수를 합산하여 총 점수를 저장할 배열
		int[] totalScores = new int[5];
		// 과목별 시험 횟수를 저장할 배열
		int[] testCounts = new int[5];

		// 데이터를 과목별로 분류하고 점수 합계와 시험 횟수 계산
		for(int i = 0; i < TestList2.size(); i++) {
			TakeTestsDTO test = TestList2.get(i);
			// 마지막 숫자로 과목 구분
			int subject = test.getTest_idx() % 10;
			int score = test.getTt_score();

			// 과목이 1부터 5까지인 경우에만 처리
			if (subject >= 1 && subject <= 5) {
				totalScores[subject - 1] += score;
				testCounts[subject - 1]++;
			}
		}

		// 디버깅용 과목 총점과 횟수 출력
		System.out.println("과목별 총 점수:");
		for (int i = 0; i < 5; i++) {
			System.out.println("과목" + (i + 1) + "의 총 점수: " + totalScores[i]);
			System.out.println("과목" + (i + 1) + "의 시험 횟수: " + testCounts[i]);
		}

		// 계산된 과목별 평균 점수를 JSON 배열에 추가
		JSONArray averages = new JSONArray();
		for (int i = 0; i < 5; i++) {
			JSONObject average = new JSONObject();
			average.put("subject", "과목" + (i + 1));
			// 시험 횟수가 0이 아닌 경우에만 평균 계산
			if (testCounts[i] != 0) {
				double averageScore = (double) totalScores[i] / testCounts[i];
				average.put("average", averageScore);
			} else {
				average.put("average", 0);
			}
			averages.put(average);
		}

		// JSON 데이터를 클라이언트로 전송
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");
		out.print(averages.toString());
		out.flush();

		// 계산된 평균값을 서버 콘솔에 출력
		System.out.println(averages);
	}
}
