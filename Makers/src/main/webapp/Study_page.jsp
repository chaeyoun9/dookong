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
  <link rel="stylesheet" href="assets/css/Study_page.css">
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
              <div class="category-title">학습 페이지</div>
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

      <div class="e296_3464"></div>
      <button class="e296_3465" onclick="toggleNote()">문제 풀이</button>
      <button class="e296_3466" onclick="WrongNote()">오답노트</button>


      <div class="search-container2">
        <!-- 검색 입력창 -->
        <input type="text" id="search-input2" autofocus name="question" placeholder="궁금한 것이 있나요?">
        <!-- 검색 버튼 -->
        <button id="search-btn2" aria-label="Search" onclick="openModal()" disabled>
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

      <div class="e296_3491">
        <div class="ei296_3491_3_9146"></div>
        <div class="ei296_3491_3_9147"></div>
      </div>
    </div>
  </div>
  <div class="e296_3464">
    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_06_06</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_08_22</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_09_26</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_03_07</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_05_15</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_08_14</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_03_05</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_04_24</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">1 과목(소프트웨어 설계)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">2 과목(소프트웨어 개발)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">3 과목(데이터 베이스 구축)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">4 과목(프로그래밍 언어 활용)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">5 과목(정보시스템 구축관리)</div>
      </div>
    </div>
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
    // 검색 버튼 요소
    const searchButton = document.getElementById('search-btn2');
    // 모달 요소
    const modal = document.getElementById('myModal');
    // 모달 내용 요소
    const modalContent = document.getElementById('modal-content1');
    // 이전 버튼 요소
    const prevButton = document.getElementById('prev-button');
    // 다음 버튼 요소
    const nextButton = document.getElementById('next-button');

    // 현재 인덱스 변수 초기화
    let currentIndex = -1;
    // 질문과 답변을 저장할 배열
    let questionsAndAnswers = [];

    // 검색 입력값이 변경될 때마다 검색 버튼의 활성화 여부를 결정
    searchInput.addEventListener('input', () => {
      searchButton.disabled = searchInput.value.trim() === "";
    });

    // 모달을 열기 위한 함수
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

          // 새로운 질문과 답을 배열에 추가
          questionsAndAnswers.push({ question, answer: data.assistant });
          // 현재 인덱스를 업데이트
          currentIndex = questionsAndAnswers.length - 1;
          // 이전과 다음 버튼의 활성화 여부를 업데이트
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
  </script>

  <!--카테고리 일단 보류-->

  <!-- <div class="e296_3504"></div> -->
  <!-- <div class="e296_3511"></div> -->
  <!-- <h1 class="e296_35111">회차 및 과목을 선택해 주세요!</h1> -->

  <!-- <div class="custom-container">
      <div class="custom-categories">
        <div class="custom-category-btn" id="custom-type-category">
          <div class="custom-category-icon">&#128196;</div>
          <div class="custom-category-title1">문제 유형</div>
        </div>
        <div class="custom-category-btn" id="custom-date-category">
          <div class="custom-category-icon">&#128198;</div>
          <div class="custom-category-title2">회차</div>
        </div>
        <div class="custom-category-btn" id="custom-subject-category">
          <div class="custom-category-icon">&#128187;</div>
          <div class="custom-category-title3">과목</div>
        </div>
      </div>
      <div class="custom-subcategories" id="custom-type-subcategories" style="top: 57px; left: 0px;">
        <div class="custom-subcategory">모든 문제 풀기</div>
        <div class="custom-subcategory">한 문제씩 풀기</div>
      </div>
      <div class="custom-subcategories" id="custom-date-subcategories" style="top: 57px; left: 350px;">
        <div class="custom-subcategory">2022년 04월 24일</div>
        <div class="custom-subcategory">2022년 03월 05일</div>
        <div class="custom-subcategory">2021년 08월 14일</div>
        <div class="custom-subcategory">2021년 05월 15일</div>
        <div class="custom-subcategory">2021년 03월 07일</div>
      </div>
      <div class="custom-subcategories" id="custom-subject-subcategories" style="top: 57px; left: 700px;">
        <div class="custom-subcategory">1과목 : 소프트웨어 설계 (20문항)</div>
        <div class="custom-subcategory">2과목 : 소프트웨어 개발 (20문항)</div>
        <div class="custom-subcategory">3과목 : 데이터 베이스 구축 (20문항)</div>
        <div class="custom-subcategory">4과목 : 프로그래밍 언어 활용 (20문항)</div>
        <div class="custom-subcategory">5과목 : 정보시스템 구축관리 (20문항)</div>
      </div>
    </div> -->
  <script src="assets/js/script.js"></script>
</body>

</html>