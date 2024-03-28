<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">

  <title>Html Generated</title>
  <meta name="description" content="Figma htmlGenerator">
  <meta name="author" content="htmlGenerator">
  <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/questions.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background: #E5E5E5;
      font-family: "Gowun Dodum", sans-serif;
    }
  </style>

</head>

<body>
  <div class="e296_3574">
    <div class="e296_3519">
      <div class="e296_3409"></div>
      <div class="e296_3411"></div>

      <div class="categories">
        <a href="Study_page.jsp" class="category-btn">
          <div class="category-icon">&#128218;</div>
          <div class="category-title" style="color: red;">학습 페이지</div>
        </a>

        <a href="newtest.jsp" class="category-btn">
          <div class="category-icon">&#128202;</div>
          <div class="category-title">학습 대시보드</div>
        </a>

        <a href="My_page.jsp" class="category-btn">
          <div class="category-icon">&#128100;</div>
          <div class="category-title">마이페이지</div>
        </a>

        <a href="#" id="logout-btn" class="category-btn">
          <div class="category-icon">&#128075;</div>
          <div class="category-title">Sign Out</div>
        </a>
      </div>
      <div class="e253_58978"><img src="img/Makers.png" width="256" height="60"></div>

      <div class="e296_3410">
        <img src="img/사용자 프로필.jpg" width="153px" height="182px">
      </div>
      <div class="e296_3459"></div>

      <!--===========================28일 오전 추가 ↓ ====================================-->
      <div class="e296_3464">
        <div class="back_button">
          <div class="button-container">
            <button onclick="history.back()">뒤로가기</button>
            <button id="startBtn">시험시작</button>
            <button id="endBtn">시험종료</button>
            <div class="elapsed-time-container" id="elapsedTimeEnd">경과 시간: 0초</div>
          </div>
        </div>

        <!-- 알림 창 -->
        <div class="alert-container" id="startAlert">
          <div class="alert-message">시험을 시작합니다!</div>
          <div class="countdown-text" id="countdownText">3</div>
          <div class="elapsed-time" id="elapsedTime">경과 시간: 0초</div>
        </div>

        <div class="alert-container" id="endAlert">
          <div class="alert-message">시험이 종료되었습니다.<br>수고하셨습니다.</div>
          <div class="end-container" id="endTime">경과 시간: 0초</div>
        </div>
      </div>
      <!--===========================28일 오전 추가 ↑ ====================================-->

      <button class="e296_3465" onclick="toggleNote()">문제 풀이</button>
      <button class="e296_3466" onclick="WrongNote()">오답노트</button>


      <div class="search-container2">
        <input type="text" id="search-input2" autofocus name="question" placeholder="궁금한 것이 있나요?">
        <button id="search-btn2" aria-label="Search" onclick="openModal()" disabled>
          <i class="fas fa-search"></i>
        </button>
      </div>
      <div id="search-results2"></div>
      <div id="myModal" class="modal1">
        <div class="modal-content1">
          <span class="close1" onclick="closeModal()">&times;</span>
          <button id="prev-button" onclick="showPrev()">이전</button>
          <button id="next-button" onclick="showNext()">다음</button>
          <div id="modal-content1"></div>
        </div>
      </div>

      <div class="e296_3491">
        <div class="ei296_3491_3_9146"></div>
        <div class="ei296_3491_3_9147"></div>
      </div>
    </div>
  </div>
  <script src="assets/js/script.js"></script>
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
        modal.style.display = 'block';
      });

      confirmBtn.addEventListener('click', function () {
        window.location.href = 'Login.html';
      });

      closeBtn.addEventListener('click', function () {
        modal.style.display = 'none';
      });

      window.addEventListener('click', function (event) {
        if (event.target === modal) {
          modal.style.display = 'none';
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


    //<!--===========================28일 오전 추가 ↓ ====================================-->

    let intervalTimer;
    let startTime;
    let elapsedTimeEnd = document.getElementById('elapsedTimeEnd');

    document.getElementById('startBtn').addEventListener('click', function () {
      document.getElementById('startAlert').style.display = 'block';
      document.getElementById('elapsedTime').style.display = 'none'; // 경과 시간 숨김
      document.getElementById('endBtn').disabled = false;
      countdownStart(); // 카운트다운 시작
    });

    document.getElementById('endBtn').addEventListener('click', function () {
      document.getElementById('endAlert').style.display = 'block';
      document.getElementById('startBtn').disabled = true;
      document.getElementById('endBtn').disabled = true;
      clearInterval(intervalTimer); // 타이머 중지
      showEndTime();
      setTimeout(function () {
        document.getElementById('endAlert').style.display = 'none';
      }, 3000); // 3초 후에 알림 창 숨김
    });

    function closeAlert() {
      document.getElementById('startAlert').style.display = 'none';
      document.getElementById('endAlert').style.display = 'none';
    }

    function countdownStart() {
      let count = 3;
      const countdownText = document.getElementById('countdownText');
      countdownText.textContent = count;

      intervalTimer = setInterval(() => {
        count--;
        countdownText.textContent = count;
        if (count === 0) {
          clearInterval(intervalTimer);
          document.getElementById('startAlert').style.display = 'none'; // 알림 창 숨김
          startTime = new Date().getTime();
          startCountdown();
        }
      }, 1000);
    }

    // 카운트다운 함수
    function startCountdown() {
      let timer = 0;
      const countdownText = document.getElementById('countdownText');
      const elapsedTimeText = document.getElementById('elapsedTime');

      intervalTimer = setInterval(() => {
        timer++;
        countdownText.textContent = timer;

        // 경과 시간 업데이트
        const elapsedTime = timer;
        elapsedTimeText.textContent = `경과 시간: ${elapsedTime}초`;
        elapsedTimeEnd.textContent = `경과 시간: ${elapsedTime}초`;

        // 누적 시간 업데이트
        saveTotalTime(elapsedTime);
      }, 1000); // 1초마다 감소
    }

    function showEndTime() {
      const endTimeText = document.getElementById('endTime');
      const elapsedTimeEnd = document.getElementById('elapsedTimeEnd');
      const elapsedTime = Math.floor((new Date().getTime() - startTime) / 1000);
      endTimeText.textContent = `경과 시간: ${elapsedTime}초`;
      elapsedTimeEnd.textContent = `경과 시간: ${elapsedTime}초`;

      // 누적 시간 업데이트
      saveTotalTime(elapsedTime);
    }

    function saveTotalTime(totalTime) {
      localStorage.setItem('totalTime', totalTime);
    }

    //<!--===========================28일 오전 추가 ↑ ====================================-->

  </script>
</body>

</html>