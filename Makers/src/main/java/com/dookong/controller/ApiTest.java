//package com.dookong.controller;
//
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.net.HttpURLConnection;
//import java.net.URL;
//
//public class ApiTest {
//	public static void main(String[] args) {
//		try {
//			// API 요청을 보낼 URL 설정
//			URL url = new URL("https://api.openai.com/v1/chat/completions");
//			// 올바른 URL을 사용했는지 확인
//			System.out.println("Request URL: " + url.toString());
//
//			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//			conn.setRequestMethod("POST"); // POST 요청으로 변경
//
//			// 'Authorization' 헤더를 사용해 API 키 전달
//			String apiKey = "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";
//			conn.setRequestProperty("Authorization", "Bearer " + apiKey);
//
//			// 응답 코드 확인
//			int responseCode = conn.getResponseCode();
//			System.out.println("Response Code: " + responseCode);
//
//			// 응답 내용 출력
//			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//			String inputLine;
//			StringBuilder response = new StringBuilder();
//			while ((inputLine = in.readLine()) != null) {
//				response.append(inputLine);
//			}
//			in.close();
//
//			// 응답 내용 출력
//			System.out.println("Response: " + response.toString());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//}