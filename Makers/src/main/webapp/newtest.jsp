<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dookong.model.MemberDTO"%>
<%@ page import="com.dookong.model.OneKnowlDTO"%>
<%@ page import="com.dookong.model.OneKnowlDAO"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Makers</title>
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
<link href='fullcalendar/main.css' rel='stylesheet' />
<script src='fullcalendar/main.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link src:
	url='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=011f9701e3d12de2d1801227d712e025&libraries=services"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
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
	<%
	String name = (String) session.getAttribute("name");
	MemberDTO dto = (MemberDTO) session.getAttribute("dto");
	System.out.println(request.getAttribute("content"));

	OneKnowlDAO odao = new OneKnowlDAO();
	int know_seq = odao.rd();
	OneKnowlDTO rdQ = odao.printk(know_seq);
	System.out.println(know_seq);
	System.out.println("rdq" + rdQ);
	%>
	<script>
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
		<div class="e253_5953">
			<div class="e253_5898"></div>
			<div class="e253_5955">
				<div class="e253_5943">
					<div class="e253_5875"></div>
					<div class="e253_5876"></div>

					<div class="categories">
						<a href="Study_page.jsp" class="category-btn">
							<div class="category-icon">&#128218;</div>
							<div class="category-title">학습 페이지</div>
						</a> <a href="newtest.jsp" class="category-btn">
							<div class="category-icon">&#128202;</div>
							<div class="category-title">학습 대시보드</div>
						</a> <a href="My_page.jsp" class="category-btn">
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
					<script>
        	    function requestJSONData() {
        	        var xhr = new XMLHttpRequest();

        	        // 서블릿 url 형태
        	        xhr.open('GET', '/Makers/TakeTests', true);

        	        // 바 차트를 그리는 함수 호출
        	        xhr.onreadystatechange = function() {
        	            if (xhr.readyState == 4 && xhr.status == 200) {
        	                var jsonData = JSON.parse(xhr.responseText);
        	                drawBarChart(jsonData);
        	            }
        	        };
        	        xhr.send();
        	    }

        	    // 바 차트를 그리는 함수
        	    function drawBarChart(jsonData) {
        	        var labels = []; // x축 라벨
        	        var data = []; // 바 차트에 표시할 데이터

        	        // JSON 데이터를 바 차트에 필요한 형식으로 변환
        	        for (var i = 0; i < jsonData.length; i++) {
        	            labels.push(jsonData[i].date); // x축 라벨에 날짜 추가
        	            data.push(jsonData[i].score); // 데이터에 점수 추가
        	        }

        	        // 바 차트 그리기
        	        var ctx = document.getElementById('barChart').getContext('2d');
        	        var chart = new Chart(ctx, {
        	            type : 'bar',
        	            data : {
        	                labels : labels,
        	                datasets : [ {
        	                    label : 'Score',
        	                    data : data,
        	                    backgroundColor : [ '#47c6cd', '#cef2f2', '#fdd4e2',
        	                            '#f2c3e3', '#c992b9', ],
        	                    borderWidth : 1
        	                } ]
        	            },
        	            options : {
        	                scales : {
        	                    yAxes : [ {
        	                        ticks : {
        	                            beginAtZero : true
        	                        }
        	                    } ]
        	                }
        	            }
        	        });
        	    }

        	    // 페이지 로드 시 서블릿으로부터 JSON 데이터 요청
        	    requestJSONData();
        	</script>

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
					<div class="e253_5942">
						<div id="elapsedTimeContainer">
							<span id="elapsedTime"></span>S
						</div>
					</div>

					<div class="e253_5909"></div>
					<div class="e253_59099">
						<canvas id="snake5"></canvas>
						<!--도넛새끼-->
					</div>


					<!--  출석 데이터 연결 완료 -->


					<span class="e253_59473">메이커스와 함께
						<h1 id="clickCount"><%=session.getAttribute("dateCnt")%></h1>일
						공부했어요
					</span>
					<button class="e253_59474" type="submit" id="clickButton"
						name="clicked" onclick="updateCount()()">출석하기</button>




					<!--  출석 데이터 연결 스크립트 -->
					<script>
				function updateCount(){
					var countSpan = document.getElementById("clickCount");
				    var currentCount = parseInt(countSpan.textContent);
				    currentCount++;
				    countSpan.textContent = currentCount;
					
				    var xhr = new XMLHttpRequest();
			        xhr.open("POST", "ClickCountServlet", true); 
			        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			        xhr.onreadystatechange = function () {
			            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
			                console.log(xhr.responseText); // 서버로부터의 응답을 콘솔에 출력
			            }
			        };
			        
			        // POST 요청 보내기
			        var data = "count=" + currentCount; // 서버로 보낼 데이터 형식을 정의합니다. 이 경우 count 값만 보냅니다.
			        xhr.send(data);
			        
				    // 버튼 비활성화 및 다시 활성화
				    document.getElementById("clickButton").disabled = true;
				    setTimeout(function() {
				        document.getElementById("clickButton").disabled = false;
				    }, 24 * 60 * 60 * 1000); // 24시간 후에 다시 활성화 (24 * 60 * 60 * 1000)
				    
				   
				    
					
				}
				
				
	
			</script>


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
					<!-- ==================================================================================== -->
					<!-- 기존캘린더 작업 주석처리 -->
					<!--<div class="e253_5911"></div><!--캘린더-->
					<!-- 
          <div class="calendar">
            <div class="calendar-header">
              <button onclick="prevMonth()">&lt; 이전 달</button>
              <h2 id="month-year"></h2>
              <button onclick="nextMonth()">다음 달 &gt;</button>
            </div>
            <div class="calendar-grid" id="calendar-grid"></div>
            <div class="btn-container">
            </div>
          </div> -->



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
						<input id="searchInput" type="text" placeholder="주소를 입력하세요">
					</div>
					<div>
						<button id="search-btn" type="submit" onclick="search()">검색</button>
					</div>
				</div>


				<div class="e253_59492">
					<div id="map" style="width: 320px; height: 200px;"></div>




				</div>

				<div class="e253_59491"></div>
				<span class="e253_5952"><%=rdQ.getKnowl_content()%></span> <span
					class="e253_5954"></span>
			</div>
		</div>
		<h1 class="e253_5941"><%=name%>님의<br>오늘 풀이시간
		</h1>
	</div>


	<div id="logoutModal" class="modal">
		<div class="modal-content">
			<p>로그아웃 하시겠습니까?</p>
			<button id="confirmBtn" class="modal-btn confirm-btn">확인</button>
			<button id="closeBtn" class="modal-btn close-btn">취소</button>
		</div>
	</div>

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
        window.location.href = 'Main_Login.jsp'; // 로그아웃 페이지 경로로 수정
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
          const apiUrl = 'http://localhost:3000/Makers/newtest.jsp';
          const response = await fetch(apiUrl, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify({ question }),

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
          s} else {
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


    // 모달을 닫기 위한 함수
    function closeModal() {
      modal.style.display = 'none';
    }

    // 이전 버튼을 눌렀을 때의 동작을 정의하는 함수
    function showPrev() {
      if (currentIndex > 0) {
        currentIndex--;
        updateModalContent();
      }
    }

    // 다음 버튼을 눌렀을 때의 동작을 정의하는 함수
    function showNext() {
      if (currentIndex < questionsAndAnswers.length - 1) {
        currentIndex++;
        updateModalContent();
      }
    }

    // 모달 내용을 업데이트하는 함수
    function updateModalContent() {
      modalContent.innerHTML = `<strong>질문:</strong> ${questionsAndAnswers[currentIndex].question}<br><strong>답변:</strong> ${questionsAndAnswers[currentIndex].answer}`;
      updateButtonStates();
    }

    // 이전 버튼과 다음 버튼의 활성화 여부를 업데이트하는 함수
    function updateButtonStates() {
      prevButton.disabled = currentIndex <= 0;
      nextButton.disabled = currentIndex >= questionsAndAnswers.length - 1;
    }

    // 에러를 표시하는 함수
    function displayError(message) {
      alert(`에러 발생: ${message}`);
    }
    
    window.onload = function () {
        showTotalTime();
      };
      
  </script>

	<script src="assets/js/calendar.js"></script>
	<script src="assets/js/mapScript.js"></script>
	<script src="assets/js/Chart.js"></script>


</body>

</html>