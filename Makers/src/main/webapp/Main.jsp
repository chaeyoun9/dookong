<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dookong.model.MemberDTO"%>
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
<link rel="stylesheet" href="assets/css/Main_Page.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link src:
	url='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff'>
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

					<!--=================================28일 오후 추가 ↓ ===============================-->
					<!--To-do List-->
					<div class="e253_5906">
						<div class="to_do_list">
							<div class="container">
								<h2 class="h11">To-Do List</h2>
								<input type="text" id="taskInput" placeholder="할 일을 입력하세요">
								<ul id="taskList"></ul>
							</div>

						</div>
					</div>
					<!--=================================28일 오후 추가 ↑ ===============================-->
					<div class="e253_5907"></div>
					<!--지도API 백그라운드-->

					<div class="e253_5908"></div>
					<!--풀이시간-->
					<!-- <span class="e253_5942">1H 47M</span> -->

					<!--=================================28일 오전 추가 ↓ ===============================-->
					<div class="e253_5942">
						<div id="elapsedTimeContainer">
							<span id="elapsedTime"></span>S
						</div>
					</div>
					<!--=================================28일 오전 추가 ↑ ===============================-->

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

					<!----------------------캘린더 ↓ ---------------------->
					<div class="calendar-container">
						<div class="calendar-header">
							<button onclick="prevMonth()">⇦ 이전달</button>
							<h3 id="curMonthDisplay"></h3>
							<button onclick="nextMonth()">다음달 ⇨</button>
						</div>
						<div class="calendar-body" id="calendarGrid"></div>
					</div>


					<!-- 모달 -->
					<div class="modal-container" id="modalBox">
						<div class="modal-content">
							<div class="modal-header">
								<h3>일정 확인</h3>
							</div>
							<div class="modal-body">
								<input type="text" id="schedInputModal" placeholder="일정을 적어주세요">
								<button onclick="addScheduleModal()">추가</button>
								<div class="schedule-list" id="schedListModal"></div>
								<button class="close-btn_1" onclick="closeModal()">닫기</button>
							</div>
							<div class="modal-footer"></div>
						</div>
					</div>

					<!----------------------캘린더 ↑ ---------------------->

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
				<span class="e253_5951">UI(User Interface)란?</span>
				<div class="e253_5947"></div>
				<span class="e253_5948">한줄 지식</span>

				<!--=================================28일 오후 추가&수정 ↓ ===============================-->
				<!--주석처리-->
				<!-- <div class="e253_59471"></div> -->
				<!-- <h1 class="e253_59481">To-do List</h1> -->
				<!--================================= 28일 오후 추가&수정 ↑ ===============================-->

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

				<!--=================================28일 오후 추가&수정 ↓ ===============================-->
				<!-- <div class="e253_59491"></div> -->
				<!--================================= 28일 오후 추가&수정 ↑ ===============================-->

				<span class="e253_5952">사용자가 어떤 방식으로</span> <span class="e253_5954">응용
					프로그램을 이용하는가를 설계하는 작업이다.</span>
			</div>
		</div>
		<!--=================================28일 오전 추가&수정 ↓ ===============================-->
		<h1 class="e253_5941">
			완두콩님의<br>오늘 풀이시간
		</h1>
		<!--================================= 28일 오전 추가&수정 ↑ ===============================-->
	</div>
	</script>

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

   // api 시작
   // 검색 입력창 요소
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
   console.log(questionsAndAnswers)
   // 입력값이 변경될 때마다 전송 버튼의 활성화 여부를 결정
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
           sendButton.disabled = false;
           inputText.value = '';
       }
   }
   console.log(data.assistant);

   // 모달 닫기
   function closeModal() {
       modal.style.display = 'none';
   }

   // 이전 버튼 동작
   function showPrev() {
       if (currentIndex > 0) {
           currentIndex--;
           updateModalContent();
       }
   }

   // 다음 버튼 동작
   function showNext() {
       if (currentIndex < questionsAndAnswers.length - 1) {
           currentIndex++;
           updateModalContent();
       }
   }

// 모달 내용 업데이트
   function updateModalContent() {
       modalContent.innerHTML = ''; // 모달 내용 초기화

       if (currentIndex >= 0 && currentIndex < questionsAndAnswers.length) {
           const currentQA = questionsAndAnswers[currentIndex];
           const questionElement = document.createElement('div');
           questionElement.innerHTML = `<strong>질문:</strong> ${currentQA.question}`;
           const answerElement = document.createElement('div');
           answerElement.innerHTML = `<strong>답변:</strong> ${currentQA.answer}`;
           modalContent.appendChild(questionElement);
           modalContent.appendChild(answerElement);
           updateButtonStates();
       }
   }

   // 이전버튼, 다음버튼 활성화 여부 업데이트 
   function updateButtonStates() {
       prevButton.disabled = currentIndex <= 0;
       nextButton.disabled = currentIndex >= questionsAndAnswers.length - 1;
   }

   // 에러 표시
   function displayError(message) {
       alert(`에러 발생: ${message}`);
   }
   // api 끝 

    function showTotalTime() {
      const totalTime = localStorage.getItem('totalTime');
      if (totalTime) {
        document.getElementById('elapsedTime').textContent = totalTime;
      }
    }
    //<!--=================================28일 오전 추가 ↓ ===============================-->
    window.onload = function () {
      showTotalTime();
    };

    //< !--================================= 28일 오전 추가 ↑ ===============================-->

    //<!--=================================28일 오후 추가 ↓ ===============================-->
    const taskInput = document.getElementById('taskInput');
    const taskList = document.getElementById('taskList');
    let tasks = [];

    loadTasks(); // 페이지 로드 시 할 일 목록 불러오기

    function addTask() {
      const taskText = taskInput.value.trim();
      if (taskText !== '') {
        tasks.push({ text: taskText, completed: false });
        saveTasks(); // 변경된 할 일 목록 저장
        renderTasks(); // 변경된 목록 화면에 출력
        taskInput.value = '';
      }
    }

    function saveTasks() {
      localStorage.setItem('tasks', JSON.stringify(tasks));
    }

    function loadTasks() {
      if (localStorage.getItem('tasks')) {
        tasks = JSON.parse(localStorage.getItem('tasks'));
        renderTasks();
      }
    }

    function renderTasks() {
      taskList.innerHTML = '';
      tasks.forEach((task, index) => {
        const li = document.createElement('li');
        li.innerHTML = `
        	<span class="check-btn">&#x2714;</span>
            <span style="position: relative; z-index: 500;">${task.text}</span>
            <span class="delete-btn">&#x2716;</span>
        `;
        if (task.completed) {
          li.classList.add('checked');
        }
        li.querySelector('.check-btn').addEventListener('click', function (e) {
          e.stopPropagation();
          tasks[index].completed = !tasks[index].completed;
          saveTasks();
          renderTasks();
        });
        li.querySelector('.delete-btn').addEventListener('click', function (e) {
          e.stopPropagation();
          tasks.splice(index, 1);
          saveTasks();
          renderTasks();
        });
        li.addEventListener('click', function () {
          tasks[index].completed = !tasks[index].completed;
          saveTasks();
          renderTasks();
        });
        taskList.appendChild(li);
      });
    }

    taskInput.addEventListener('keypress', function (e) {
      if (e.key === 'Enter') {
        addTask();
      }
    });

    taskList.addEventListener('click', function (e) {
      if (e.target.tagName === 'LI') {
        const index = Array.from(e.target.parentNode.children).indexOf(e.target);
        tasks[index].completed = !tasks[index].completed;
        saveTasks();
        renderTasks();
      }
    });

    //----------------------------------------캘린더 수정

    const calendarGridElem = document.getElementById('calendarGrid');
    const curMonthDisplayElem = document.getElementById('curMonthDisplay');
    const modalBoxElem = document.getElementById('modalBox');
    const schedInputModalElem = document.getElementById('schedInputModal');
    const schedListModalElem = document.getElementById('schedListModal');

    let curDate = new Date();
    let curMonth = curDate.getMonth();
    let curYear = curDate.getFullYear();
    let curDay = curDate.getDate();
    let schedules = [];
    let firstDayOfMonth, lastDateOfMonth;

    function renderCalendar() {
      calendarGridElem.innerHTML = '';
      curMonthDisplayElem.textContent = `${curYear}년 ${curMonth + 1}월`;

      firstDayOfMonth = new Date(curYear, curMonth, 1).getDay();
      lastDateOfMonth = new Date(curYear, curMonth + 1, 0).getDate();

      for (let i = 0; i < firstDayOfMonth; i++) {
        const dayCell = createDayCell('', true);
        calendarGridElem.appendChild(dayCell);
      }

      for (let day = 1; day <= lastDateOfMonth; day++) {
        const dayCell = createDayCell(day);
        calendarGridElem.appendChild(dayCell);
      }

      const totalCells = 42; // 6 rows * 7 days
      const remainingCells = totalCells - (firstDayOfMonth + lastDateOfMonth);
      for (let i = 0; i < remainingCells; i++) {
        const dayCell = createDayCell('', true);
        calendarGridElem.appendChild(dayCell);
      }
      updateDotIndicators();
    }
    function createDayCell(day, isInactive = false) {
      const dayCell = document.createElement('div');
      dayCell.textContent = day;
      dayCell.classList.add('day-cell');
      if (isInactive) {
        dayCell.classList.add('inactive');
      } else {
        dayCell.addEventListener('click', function () {
          showModal(parseInt(day));
        });
      }
      const dot = document.createElement('div');
      dot.classList.add('dot');
      dayCell.appendChild(dot);

      return dayCell;
    }
    function prevMonth() {
      curMonth--;
      if (curMonth < 0) {
        curMonth = 11;
        curYear--;
      }
      updateMonthData();
      renderCalendar();
    }
    function nextMonth() {
      curMonth++;
      if (curMonth > 11) {
        curMonth = 0;
        curYear++;
      }
      updateMonthData();
      renderCalendar();
    }
    function updateMonthData() {
      firstDayOfMonth = new Date(curYear, curMonth, 1).getDay();
      lastDateOfMonth = new Date(curYear, curMonth + 1, 0).getDate();
    }
    function showModal(day) {
      modalBoxElem.style.display = 'flex';
      renderSchedList(day);
    }
    function closeModal() {
      modalBoxElem.style.display = 'none';
    }
    function addScheduleModal() {
      const schedText = schedInputModalElem.value.trim();
      if (schedText !== '') {
        schedules.push({ day: curDay, text: schedText });
        renderSchedList(curDay);
        schedInputModalElem.value = '';
        closeModal();
        renderCalendar();
      }
    }
    function renderSchedList(day) {
      curDay = day;
      schedListModalElem.innerHTML = '';
      schedules.forEach(schedule => {
        if (schedule.day === day) {
          const schedItem = document.createElement('div');
          schedItem.classList.add('schedule-item');
          schedItem.textContent = schedule.text;
          const deleteBtn = document.createElement('button');
          deleteBtn.textContent = '일정 삭제';
          deleteBtn.addEventListener('click', function () {
            deleteSchedule(day, schedule.text);
          });
          schedItem.appendChild(deleteBtn);
          schedListModalElem.appendChild(schedItem);
        }
      });
      updateDotIndicators();
    }
    function deleteSchedule(day, text) {
      schedules = schedules.filter(schedule => !(schedule.day === day && schedule.text === text));
      renderSchedList(day);
      updateDotIndicators();
      renderCalendar();
    }
    function updateDotIndicators() {
      const dots = document.querySelectorAll('.dot');
      dots.forEach((dot, index) => {
        if (index < firstDayOfMonth || index >= firstDayOfMonth + lastDateOfMonth) {
          dot.style.display = 'none';
        } else {
          const day = index - firstDayOfMonth + 1;
          if (hasSchedule(day)) {
            dot.style.display = 'block';
          } else {
            dot.style.display = 'none';
          }
        }
      });
    }
    function hasSchedule(day) {
      return schedules.some(schedule => schedule.day === day);
    }
    renderCalendar();


    //< !--================================= 28일 오후 추가 ↑ ===============================-->

  </script>

	<!-- <script src="assets/js/Chart.js"></script> -->

</body>

</html>