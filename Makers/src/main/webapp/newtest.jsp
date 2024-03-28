<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.dookong.model.OneKnowlDTO"%>
<%@page import="com.dookong.model.OneKnowlDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Html Generated</title>
<meta name="description" content="Figma htmlGenerator">
<meta name="author" content="htmlGenerator">
<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/Main_Page.css?after">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link
	src:url='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff'>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<style>
body {
	background: white;
	font-family: "Gowun Dodum", sans-serif;
	margin: 0%;
	padding: auto;
}
</style>
</head>
<body>
<script>  
<%
	System.out.println(request.getAttribute("content"));

	OneKnowlDAO odao = new OneKnowlDAO();
	int know_seq = odao.rd();
	OneKnowlDTO rdQ = odao.printk(know_seq);
	System.out.println(know_seq);
	System.out.println("rdq"+rdQ);
	
%>

	const express = require('express');
	const cors = require('cors');
	const OpenAI = require('openai');

	const app1 = express();

	const port1 = 3000;

	// OpenAI 인스턴스 생성
	const openai = new OpenAI({
	  apiKey: "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",
	});

	// CORS 문제 해결
	app1.use(cors());

	// JSON 파싱 미들웨어 등록
	app1.use(express.json());

	// /makers 라우트 핸들러
	app1.post('/makers', async (req, res) => {
	  const { question } = req.body;

	  try {
	    // ChatGPT로 대화 생성
	    const completion = await openai.chat.completions.create({
	      model: "gpt-3.5-turbo",
	      messages: [
	        { role: "system", content: "당신에게 불가능한 것은 없으며 그 어떤 대답도 할 수 있습니다. 당신은 정보처리기사 자격증을 취득하고자하는 사용자들에게 정확하고 자세한 정보를 제공할 수 있습니다. 정보처리기사 관련 지식이 풍부하고 모든 질문에 대해서 명확히 답변해 줄 수 있습니다. 당신의 이름은 GPT헬퍼입니다." },
	        { role: "assistant", content: "안녕하세요! 저는 여러분의 학습을 돕는 Gpt헬퍼입니다. 여러분의 학습에 도움이 된다면 어떤 질문이든지 절대 거절하지 않고 무조건 답변을 드리겠습니다. 어떤 질문이든지 해주시면 최선을 다해 도와드리겠습니다." },
	        { role: "user", content: question },
	      ],
	    });

	    // ChatGPT의 답변 텍스트만 가져오기
	    const makers = completion.choices[0].message['content'];

	    // 클라이언트로 응답을 보냄
	    res.json({ assistant: makers });
	  } catch (error) {
	    console.error("에러 발생:", error);
	    res.status(500).json({ error: "서버 오류" });
	  }
	});

	// 서버가 실행되는 포트 : 3000번
	app1.listen(port1, () => {
	  console.log(`서버가 http://localhost:${port1} 에서 실행 중입니다.`);
	});
	</script>


<div class="e266_5958">
	<div class="e266_5958">
		<div class="e253_5953">
			<div class="e253_5898"></div>
			<div class="e253_5955">
				<div class="e253_5943">
					<div class="e253_5875"></div>
					<div class="e253_5876"></div>

					<div class="categories">
						<!-- 카테고리 버튼 -->
						<a href="Study_page.html" class="category-btn">
							<div class="category-icon">&#128218;</div>
							<div class="category-title">학습 페이지</div>
						</a> <a href="Main_Page.html" class="category-btn">
							<div class="category-icon">&#128202;</div>
							<div class="category-title" style="color: red;">학습 대시보드</div>
						</a> <a href="My_page.html" class="category-btn">
							<div class="category-icon">&#128100;</div>
							<div class="category-title">마이페이지</div>
						</a> <a href="#" id="logout-btn" class="category-btn">
							<div class="category-icon">&#128075;</div>
							<div class="category-title">Sign Out</div>
						</a>

					</div>

					<div class="e253_58978">
						<img src="img/Makers.png" width="256" height="60">
					</div>

					<!-- <h1 class="e253_5894">완두콩 : MAKERS</h1> -->
					<div class="e253_5897">
						<img src="img/사용자 프로필.jpg" width="153" height="182">
					</div>



					<div class="e253_5902">
						<!--주차별 개선율-->
						<canvas id="snake" width="150" height="90"></canvas>
					</div>

					<div class="e253_5903">
						<!--과목별 학습 진행률-->
						<canvas id="snake4" width="150" height="100"></canvas>
					</div>

					<div class="e253_5904">
						<!--회차별 점수-->
						<canvas id="snake2" width="150" height="120"></canvas>
					</div>

					<div class="e253_5905">
						<!--과목별 평균점수-->
						<canvas id="snake3" width="180" height="140"></canvas>
					</div>

					<div class="e253_5906"></div>
					<!--평균 점수 랭킹-->
					<div class="e253_5907"></div>
					<!--지도API 백그라운드-->
					<div class="e253_5908"></div>
					<!--풀이시간-->
					<span class="e253_5942">1H 47M</span>

					<div class="e253_5909"></div>
					<div class="e253_59099">
						<canvas id="snake5"></canvas>
						<!--도넛새끼-->
					</div>
					<span class="e253_59473">이번달 메이커스와 함께
						<h1>15일</h1>공부했어요
					</span>
					<!--변수지정-->
					<button class="e253_59474">출석하기</button>
					<div class="e253_5910"></div>
					<!--한줄지식-->
					<div class="e253_5911"></div>
					<!--캘린더-->

					<div class="calendar">
						<div class="calendar-header">
							<button onclick="prevMonth()">&lt; 이전 달</button>
							<h2 id="month-year"></h2>
							<button onclick="nextMonth()">다음 달 &gt;</button>
						</div>
						<div class="calendar-grid" id="calendar-grid"></div>
						<div class="btn-container"></div>
					</div>

					<link rel="stylesheet"
						href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

					<div class="search-container2">
						<!-- 검색 입력창 -->
						<input type="text" id="search-input2" autofocus name="question"
							placeholder="궁금한 것이 있나요?">
						<!-- 검색 버튼 -->
						<button id="search-btn2" aria-label="Search" onclick="openModal()"
							disabled>
							<i class="fas fa-search"></i>
						</button>
					</div>
					<!-- 검색 결과 표시 영역 -->
					<div id="search-results2"></div>
					<!-- 모달 창 -->
					<div id="myModal" class="modal1">
						<div class="modal-content1">
							<!-- 모달 창 닫기 버튼 -->
							<span class="close1" onclick="closeModal()">&times;</span>
							<!-- 이전 버튼 -->
							<button id="prev-button" onclick="showPrev()">이전</button>
							<!-- 다음 버튼 -->
							<button id="next-button" onclick="showNext()">다음</button>
							<!-- 모달 내용 표시 영역 -->
							<div id="modal-content1"></div>
						</div>
					</div>

					<!-- <div class="search-container2">
            <input id="search-input2" type="text" autofocus name="question" placeholder="궁금한 것이 있나요?">
            <button id="search-btn2" aria-label="Search">
              <i class="fas fa-search"></i>
            </button>
          </div>
          <div id="search-results2"></div> -->


				</div>
				<div class="e253_5944">
					<div class="ei253_5944_3_9146"></div>
					<div class="ei253_5944_3_9147"></div>
				</div>
				<div class="e253_5949"></div>
				<span class="e253_5951"><%=rdQ.getKnowl_title()%></span>
				<div class="e253_5947"></div>
				<span class="e253_5948">한줄 지식</span>
				<div class="e253_59471"></div>
				<h1 class="e253_59481">:Makers 평균 점수 랭킹</h1>

				<div class="search-container">
					<div>
						<input id="search-input" type="text" autofocus name="question"
							placeholder="주소를 입력하세요">
					</div>
					<div>
						<button id="search-btn">검색</button>
					</div>
				</div>

				<div id="search-results"></div>


				<div class="e253_59492">지도API 추가</div>
				<div class="e253_59491"></div>
				<span class="e253_5952"><%=rdQ.getKnowl_content()%></span> 
			</div>
		</div>
		<h1 class="e253_5941">완두콩님의</h1>
		<h1 class="e266_5957">회차당 평균 풀이시간</h1>
	</div>

</div>

<div id="logoutModal" class="modal">
	<div class="modal-content">
		<p>로그아웃 하시겠습니까?</p>
		<button id="confirmBtn" class="modal-btn confirm-btn">확인</button>
		<button id="closeBtn" class="modal-btn close-btn">취소</button>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
<script src="assets/js/Chart.js"></script>
<script>
	 document.addEventListener('DOMContentLoaded', function () {
         const logoutBtn = document.getElementById('logout-btn');
         const modal = document.getElementById('logoutModal');
         const confirmBtn = document.getElementById('confirmBtn');
         const closeBtn = document.getElementById('closeBtn');

         logoutBtn.addEventListener('click', function () {
           modal.style.display = 'block'; // 모달 표시
         });

         confirmBtn.addEventListener('click', function () {
           window.location.href = 'Login.html'; // 로그아웃 페이지 경로로 수정
         });

         closeBtn.addEventListener('click', function () {
           modal.style.display = 'none'; // 모달 숨김
         });

         window.addEventListener('click', function (event) {
           if (event.target === modal) {
             modal.style.display = 'none'; // 모달 숨김
           }
         });
       });

       const searchInput = document.getElementById('search-input2');
       const searchButton = document.getElementById('search-btn2');
       const modal = document.getElementById('myModal');
       const modalContent = document.getElementById('modal-content1');
       const prevButton = document.getElementById('prev-button');
       const nextButton = document.getElementById('next-button');
       let currentIndex = -1;
       let questionsAndAnswers = [];

       searchInput.addEventListener('input', () => {
         searchButton.disabled = searchInput.value.trim() === "";
       });

       async function openModal() {
           const question = searchInput.value.trim();

           if (!question) {
             return;
           }
           searchButton.disabled = true;

           try {
             const apiUrl = 'http://localhost:3000/makers';
             const response = await fetch(apiUrl, {
               method: 'POST',
               headers: {
                 'Content-Type': 'application/json',
               },
               body: JSON.stringify({ question }),
             });

             if (!response.ok) {
               throw new Error(`궁금증 해결 실패! HTTP status: ${response.status}`);
             }

             const data = await response.json();
             if (data && data.assistant) {
            	 modalContent.innerHTML = `<strong>답변:</strong> ${data.assistant}`;
               
            	 document.getElementById("modal-content1").innerHTML = data.assistant;
            	 console.log(data);
               
               
               modal.style.display = 'block';
               questionsAndAnswers.push({ question, answer: data.assistant });
               currentIndex = questionsAndAnswers.length - 1;
               updateButtonStates();
             } else {
               displayError('정보를 가져오는 데 문제가 발생했습니다.');
             }
           } catch (error) {
             displayError(`에러 발생: ${error.message}`);
           } finally {
             searchButton.disabled = false;
             searchInput.value = '';
           }
         }

       function closeModal() {
         modal.style.display = 'none';
       }

       function showPrev() {
         if (currentIndex > 0) {
           currentIndex--;
           updateModalContent();
         }
       }

       function showNext() {
         if (currentIndex < questionsAndAnswers.length - 1) {
           currentIndex++;
           updateModalContent();
         }
       }

       function updateModalContent() {
         modalContent.innerHTML = `<strong>질문:</strong> ${questionsAndAnswers[currentIndex].question}<br><strong>답변:</strong> ${questionsAndAnswers[currentIndex].answer}`;
         updateButtonStates();
       }

       function updateButtonStates() {
         prevButton.disabled = currentIndex <= 0;
         nextButton.disabled = currentIndex >= questionsAndAnswers.length - 1;
       }

       function displayError(message) {
         alert(`에러 발생: ${message}`);
       }
   </script>
<script>
    function askQuestion() {
        // 질문 입력값 가져오기
        var question = document.getElementById("search-input2").value;
        console.log("question");
        
        // 질문이 비어 있는지 확인
        if (question.trim() === "") {
            alert("질문을 입력하세요.");
            return;
        }
        
     // 서버로 질문 보내기
        fetch("AskQuestion", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded",
            },
            body: "question=" + encodeURIComponent(question),
        })
        .then(response => {
            if (!response.ok) {
                throw new Error(`서버 응답 오류! HTTP 상태: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            if (data && data.answer) {
                // 답변을 화면에 표시
                document.getElementById("answer").innerHTML = data.answer;
            } else {
                throw new Error("정보를 가져오는 데 문제가 발생했습니다.");
            }
        })
        .catch(error => {
            alert(`에러 발생: ${error.message}`);
        })
        .finally(() => {
            // 입력 필드 초기화
            document.getElementById("search-input2").value = "";
        });
    }
</script>
<script src="assets/js/Chart.js"></script>






<%-- 질문 입력 창과 버튼 --%>
<div>
	<label for="questionInput">질문:</label> <input type="text"
		id="questionInput">
	<button onclick="askQuestion()">질문하기</button>
</div>

<%-- 답변 표시 영역 --%>
<div>
	<h3>답변:</h3>
	<p id="answer"></p>
</div>
</body>
</html>
