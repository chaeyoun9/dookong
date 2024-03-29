package com.dookong.controller;

import java.net.http.HttpHeaders;
import java.net.http.HttpResponse;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class ApiTest2 {

	  public static void main(String[] args) {
		  	// openai api 키 
	        String apiKey = "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"; 
	        // 질문
	        String question = "What is your name?"; 
	        
	        
	        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
	            HttpPost httpPost = new HttpPost("https://api.openai.com/v1/chat/completions");

	            httpPost.setHeader(HttpHeaders.CONTENT_TYPE, "application/json");
	            httpPost.setHeader(HttpHeaders.AUTHORIZATION, "Bearer " + apiKey);

	            JsonObject requestBody = new JsonObject();
	            requestBody.addProperty("model", "text-davinci-004");
	            requestBody.addProperty("prompt", question);
	            requestBody.addProperty("max_tokens", 50);

	            StringEntity stringEntity = new StringEntity(requestBody.toString());
	            httpPost.setEntity(stringEntity);

	            HttpResponse httpResponse = httpClient.execute(httpPost);
	            HttpEntity httpEntity = httpResponse.getEntity();

	            if (httpEntity != null) {
	                String responseString = EntityUtils.toString(httpEntity);
	                JsonObject jsonResponse = JsonParser.parseString(responseString).getAsJsonObject();
	                System.out.println(jsonResponse);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}
}