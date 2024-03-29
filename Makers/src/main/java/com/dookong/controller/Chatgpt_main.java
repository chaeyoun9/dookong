package com.dookong.controller;

import java.net.http.HttpHeaders;
import java.net.http.HttpResponse;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class Chatgpt_main {

	public static void main(String[] args) {
		String apiKey = "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";
		String question = "chatgpt가 뭐야?";

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpPost httpPost = new HttpPost("https://api.openai.com/v1/chat/completions");

			httpPost.setHeader(HttpHeaders.CONTENT_TYPE, "application/json");
			httpPost.setHeader(HttpHeaders.AUTHORIZATION, "Bearer " + apiKey);

			JsonObject requestBody = new JsonObject();
			requestBody.addProperty("prompt", question);
			requestBody.addProperty("max_tokens", 50);

			StringEntity stringEntity = new StringEntity(requestBody.toString());
			httpPost.setEntity(stringEntity);

			HttpResponse httpResponse = httpClient.execute(httpPost);
			HttpEntity httpEntity = httpResponse.getEntity();

			if (httpEntity != null) {
				String responseString = EntityUtils.toString(httpEntity);
				JsonObject jsonResponse = JsonParser.parseString(responseString).getAsJsonObject();
				// choices에 api에서 반환된 다양한 텍스트 프롬프트 담기
				JsonArray choices = jsonResponse.getAsJsonArray("choices");

				// choices 배열이 null이 아니고 비어있지 않은 경우
				if (choices != null && choices.size() > 0) {
					// choices 배열의 첫 번째 요소를 가지고 와서 JsonObject로 변환 => 첫 번째 선택지에 접근
					JsonObject firstChoice = choices.get(0).getAsJsonObject();
					// 선택지의 'text'객체 가져오기 => 실제 답변이 포함되어 있음
					JsonObject text = firstChoice.getAsJsonObject("text");

					// text가 비어있지 않으면 즉시 답변 가져오기
					if (text != null) {
						// text 객체에서 content 속성 가져와서 답변 얻기 => 실제 답변이 포함되어 있음
						String answer = text.get("content").getAsString();
						System.out.println("Answer: " + answer);
					} else {
						System.out.println("No text content found in the response.");
					}
					// choices 배열이 null이거나 비어있는 경우
				} else {
					System.out.println("No choices found in the response.");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}